$(document).ready(function() {
    $(document).on("keyup", "input:text[numberOnly]", function() {
        $(this).val($(this).val().replace(/[^0-9]/gi, ""));
    });

	// 사업자번호 확인
    $('button[name=check_duplicate_button]').click(function() {
        var company_number = $('input[name=cn1]').val() + '-' + $('input[name=cn2]').val() + '-' + $('input[name=cn3]').val();
        if (company_number.length == 0 || company_number == '') {
            $('[name=cn-message]').html('사업자번호를 입력해주세요.');
            $('[name=cn-message]').css('display', '');
            return;
        }

        var button = $(this);
        ele_company_number = $('input[name=owner_register_number]');

        $.ajax({
            url: '/shop/check/number',
            type: 'POST',
            data: {
                'owner_register_number': company_number
            },
            dataType: 'json',
            success: function(json) {
				// 버튼 눌러서 인증되면 0번코드
                if (json.success == false) {
                    button.attr('data-confirm', 0);

                    var error_code = json.error.code;
                    if (error_code == 'invalid_company_number') {
                        message = '사업자번호를 확인해주세요.';
                    } else if (error_code == 'is_duplicate') {
                        message = '이미 등록되어 있는 업체입니다.';
                    } else if (error_code == 'already_request') {
                        message = '이미 입점 신청되어 있는 업체입니다.';
                    }
                    $('[name=cn-message]').html(message);
                    $('[name=cn-message]').css('display', '');

                    ele_company_number.val('');
                } else {
					// 인증실패시 1번
                    button.attr('data-confirm', 1);

                    $('[name=cn-message]').html('입점신청 가능합니다.');
                    $('[name=cn-message]').css('display', '');

                    ele_company_number.val(company_number);
                }
            }
        });
    });

	//일단 이부분 생략
	// 휴대폰인증
    $('button[name=send_veri_code_button]').click(function() {
        joinForm = $('form[name=join-form]')
        ele_mobile_shop_tel = $('input[name=owner_phone]');
        var button = $(this);
        var vericode_message = $('[name=vericode_message]');
        var confirm_button = $('button[name=comfirm_veri_code_button]');

        owner_phone = joinForm.find('select[name=mtel1]').val() + joinForm.find('input[name=mtel2]').val() + joinForm.find('input[name=mtel3]').val()
        $.ajax({
            url: '/vericode/sendvericode/' + owner_phone + '/',
            type: 'POST',
            data: {
                context: 'owner'
            },
            success: function(json) {
                if (json.result == true) {
                    confirm_button.attr('data-confirm', 1);

                    button.text('인증번호 재전송');
                    vericode_message.css('display', 'none');
                    $('tr[name=confirm_vericode_row]').css('display', '')
                } else {
                    vericode_message.css('display', '');
                    vericode_message.html(json.message);

                    if (json.result == 'dup_veri_trial') {
                        confirm_button.attr('data-confirm', 1);

                        button.text('인증번호 재전송');

                        ele_mobile_shop_tel.val(owner_phone);
                        $('tr[name=confirm_vericode_row]').css('display', 'none')
                    } else {
                        confirm_button.attr('data-confirm', 0);
                        $('tr[name=confirm_vericode_row]').css('display', '')
                    }
                }
            }
        });
    });

	// 휴대폰인증번호 받은거 확인
    $('button[name=comfirm_veri_code_button]').click(function() {
        joinForm = $('form[name=join-form]');
        var confirm_button = $(this);
        var confirm_vericode_message = $('[name=confirm_vericode_message]');

        owner_phone = joinForm.find('select[name=mtel1]').val() + joinForm.find('input[name=mtel2]').val() + joinForm.find('input[name=mtel3]').val();
        veri_code = joinForm.find('input[name=veri_code]').val();

        $.ajax({
            url: '/vericode/checkvericode/' + owner_phone + '/',
            data: {
                'code': veri_code
            },
            type: 'POST',
            success: function(json) {
                if (json.result == "true") {
                    confirm_button.attr('data-confirm', 1);

                    confirm_vericode_message.html('인증이 확인되었습니다.');
                    confirm_vericode_message.css('display', '');
                    ele_mobile_shop_tel.val(owner_phone);
                } else {
                    confirm_button.attr('data-confirm', 0);
                    confirm_vericode_message.css('display', '');
                    confirm_vericode_message.html(json.message);
                }
            }
        });
    });

	// 폼태그 입력값 확인
    joinForm = $('form[name=join-form]')
    joinForm.validate({
        errorPlacement: function(error, element) {
            if (element.attr('name') == 'terms') {
                error.insertAfter(element.next());
            } else if (element.attr('name') == 'address_display') {
                error.insertAfter(element.next());
                error.css('display', 'block');
                error.css('padding-top', '3px');
                error.css('padding-left', '0px');
            } else {
                error.insertAfter(element);
            }
        },
		// 조인 검증조건 통과 룰
        rules: {
            owner_name: {
                required: true,
                maxlength: 10
            },
            restaurant_name: {
                required: true,
                maxlength: 20
            },
            address_display: {
                required: true
            },
            street_number: {
                required: true
            },
            category: {
                required: true
            },
            terms: {
                required: true
            }
        },
		//통과실패시 출력할메세지
        messages: {
            owner_name: {
                required: "사업주명을 입력해주세요.",
                maxlength: "사업주명은 {0}자 이내로 입력해주세요."
            },
            restaurant_name: {
                required: "가게 이름을 입력해주세요.",
                maxlength: "가게 이름은 {0}자 이내로 입력해주세요."
            },
            address_display: {
                required: "가게 주소를 입력해주세요."
            },
            street_number: {
                required: "가게 상세주소를 입력해주세요."
            },
            category: {
                required: "카테고리를 선택해주세요."
            },
            terms: {
                required: "개인정보 수집 및 이용에  동의해주세요."
            }
        },
		
		
		// 제출버튼 눌렀을이 동작될 로직
        submitHandler: function(frm) {
            company_number = $('input[name=company_number]').val();
            if (company_number.length == 0) {
                alert('사업자등록번호를 확인해주세요.')
                return false;
            }

            owner_phone = $('input[name=owner_phone]').val();
            if (owner_phone.length == 0) {
                alert('사업자 휴대폰 번호를 확인해주세요.')
                return false;
            }

            shop_tel = joinForm.find('select[name=tel1]').val() + joinForm.find('input[name=tel2]').val() + joinForm.find('input[name=tel3]').val()
            if (shop_tel.length == 0) {
                alert('업체 전화번호를 입력해주세요.')
                return false;
            }
            joinForm.find('input[name=shop_tel]').val(shop_tel);

            var check_duplicate_button = joinForm.find('button[name=check_duplicate_button]');
            if (check_duplicate_button.attr('data-confirm') != 1) {
                var cn_message = $('[name=cn-message]');
                cn_message.html('사업자번호 조회하기를 눌러 사업자번호를 확인해주세요.');
                cn_message.css('display', '');
                check_duplicate_button.focus();
                return false;
            }

            var comfirm_veri_code_button = joinForm.find('button[name=comfirm_veri_code_button]');
            if (comfirm_veri_code_button.attr('data-confirm') != 1) {
                alert('사업자 휴대폰 인증을 해주세요.')
                return false;
            }

			// 비동기 통신을 위해
            $.ajax({
                url: '/owner/join/ajax/request/',
                type: 'POST',
                data: new FormData(frm),
                dataType: 'json',
                aache: false,
                csync: false,
                contentType: false,
                processData: false,
                success: function(json) {
                    if (json['success']) {
                        alert('회원가입이 완료되었습니다.\n입점 전 궁금하신 사항은 고객만족센터(1661-5270)로 문의해 주세요.\n요기요에 관심 갖고 신청 주셔서 감사드리며,\n멋진 서비스로 보답하는 요기요가 되겠습니다.');

                        window.location.href = '/owner/join/intro/';
                    } else {
                        var message = json['message'] || '입점신청에 실패하였습니다. 고객센터에 문의해주세요.'
                        $('#loader').css('display', 'none');
                        alert(message);
                    }
                },
                error: function(jqXHR, textStatus, errorMsg) {
                    $('#loader').css('display', 'none');
                    alert('입점신청에 실패하였습니다. 고객센터에 문의해주세요.');
                }
            });
        }
    });

});
