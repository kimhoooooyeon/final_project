$(document).ready(function() {
	
	//1. 아이디 중복확인 
	$('#btn-idCheck').click(function (event){
		var shop_id = $('input[name=shop_id]').val();
		var data = {
				"shop_id": shop_id
			};
		if (shop_id == "") {
			var msg ="id를 입력해주세요.";
			alert(msg);
            $('[name=id_vericode_message]').html(msg);
            $('[name=id_vericode_message]').css('display', '');
			return;
		}
		//전송전 값 확인
		alert('shop_id :: '+shop_id);
		
		// 아이디 확인을 위한 중복확인
		$.ajax({
			url:"/shop/check/id",	
			async:true,				
			type:"post",
			headers: {'Content-Type': 'application/json'},				
			data:JSON.stringify(data),				
			dataType:"text",	
			success:function(msg){
				console.log(msg);
				$('[name=id_vericode_message]').html(msg);
				$('[name=id_vericode_message]').css('display', '');
			},
			error:function(msg){
				$('[name=id_vericode_message]').html(msg);
				$('[name=id_vericode_message]').css('display', '');
			}
		
		});
	});
	
	// 2. 비밀번호 확인 중복 확인 
	$('#btn-pwCheck').click(function (event){
		var shop_pw = $('input[name=shop_pw]').val();
		var shop_pwCheck = $('input[name=shop_pwCheck]').val();
		
		if (shop_pw == "") {
			var msg ="pw를 입력해주세요.";
			alert(msg);
            $('[name=pw_vericode_message]').html(msg);
            $('[name=pw_vericode_message]').css('display', '');
			event.preventDefault();
			return;
		}
		
		if (shop_pw == shop_pwCheck) {
			var msg ="pw가 일치합니다.";
			alert(msg);
            $('[name=pw_vericode_message]').html(msg);
            $('[name=pw_vericode_message]').css('display', '');
			event.preventDefault();
			return;
		}
		else{
			var msg ="pw가 일치하지 않습니다.";
			alert(msg);
            $('[name=pw_vericode_message]').html(msg);
            $('[name=pw_vericode_message]').css('display', '');
			event.preventDefault();
		}
		
	});
	
	// 3. 사업자번호 확인
	$('#btn-ornCheck').click(function (event){
		var owner_register_number = $('input[name=owner_register_number]').val();
		var data = {
				"owner_register_number": owner_register_number
			};
		if (owner_register_number == "") {
			var msg ="사업자번호를 입력해주세요.";
			alert(msg);
            $('[name=orn-message]').html(msg);
            $('[name=orn-message]').css('display', '');
			return;
		}
		//전송전 값 확인
		alert('owner_register_number :: '+owner_register_number);
		
		// 아이디 확인을 위한 중복확인
		$.ajax({
			url:"/shop/check/orn",	
			async:true,				
			type:"post",
			headers: {'Content-Type': 'application/json'},				
			data:JSON.stringify(data),				
			dataType:"text",	
			success:function(msg){
				console.log(msg);
				$('[name=orn-message]').html(msg);
				$('[name=orn-message]').css('display', '');
			},
			error:function(msg){
				$('[name=orn-message]').html(msg);
				$('[name=orn-message]').css('display', '');
			}
		
		});
	});
	
	//4.인증번호 전송
	$('#btn-sendsms').click(function (event) {
		var owner_phone = $('input[name=owner_phone]').val();
		var data={};
		if (owner_phone == null) {
			var msg ="핸드폰번호를 입력해주세요.";
            $('[name=vericode_message]').html(msg);
            $('[name=vericode_message]').css('display', '');
			return;
		}
		else{
			data = {
				"owner_phone": owner_phone
			};
		}
			
			$.ajax({
				url: "/shop/sendsms",
				type: "post",
				headers: {'Content-Type': 'application/json'},				
				data:JSON.stringify(data),				
				dataType:"text",
				success: function(msg) {
					$('[name=vericode_message]').html(msg);
					$('[name=vericode_message]').css('display', '');
					  
				},
				error:function(msg){
					$('[name=vericode_message]').html(msg);
					$('[name=vericode_message]').css('display', '');
				}
			});
      
		
	});
	
	
	
	
	//5. 인증번호 확인
	$('#btn-smsConfirm').click(function (event) {
		var veri_code = $('input[name=veri_code]').val();
		var data={};
		if (veri_code == null) {
			var msg ="핸드폰번호를 입력해주세요.";
            $('[name=confirm_vericode_message]').html(msg);
            $('[name=confirm_vericode_message]').css('display', '');
			return;
		}
		else{
			data = {
				"veri_code": veri_code
			};
		}
			
			$.ajax({
				url: "/shop/smsconfirm",
				type: "post",
				headers: {'Content-Type': 'application/json'},				
				data:JSON.stringify(data),				
				dataType:"text",
				success: function(msg) {
					$('[name=confirm_vericode_message]').html(msg);
					$('[name=confirm_vericode_message]').css('display', '');
					  
				},
				error:function(msg){
					$('[name=confirm_vericode_message]').html(msg);
					$('[name=confirm_vericode_message]').css('display', '');
				}
			});
    
	});
	
	// 회원가입신청 버튼 눌렀을때 동작
	$('.btn-type1').click(function (event) {
		alert('버튼누름');
		
		// 검증조건 
		// 1. 아이디 반드시 입력해주세요
		// 2. 비밀번호 반드시 입력해주세요
		// 3. 두 비밀번호 일치
		// 4. 사업자번호 중복확인
		// 5. 문자인증
		// 6. 휴대폰번호 / 가게이름 / 가게전화번호 / 가게명 반드시 입력
		// 7. 버튼다클릭해봤는지확인 - 이건 추후 제이쿼리벨리데이션 이용 - 전에는 세션으로 확인 나중에 자바벨리데이션 클래스이용해서 수정
		// 8. 개인정보에 동의해야 가입완료
		var shop_id = $('input[name=shop_id]').val();
		var shop_pw = $('input[name=shop_pw]').val();
		var shop_pwCheck = $('input[name=shop_pwCheck]').val();
		
        var owner_register_number = $('input[name=owner_register_number]').val();
        //var owner_register_number = $('input[name=cn1]').val()+ $('input[name=cn2]').val() + $('input[name=cn3]').val();
		var owner_name = $('input[name=owner_name]').val();
		var owner_phone = $('select[name=owner_phone]').val();
		//var owner_phone = $('select[name=mtel1]').val() + $('input[name=mtel2]').val() + $('input[name=mtel3]').val();
		
		var owner_email = $('input[name=owner_email]').val();
		
		var shop_name = $('input[name=shop_name]').val();
		var shop_tel = $('select[name=shop_tel]').val();
		//var shop_tel = $('select[name=tel1]').val() + $('input[name=tel2]').val() + $('input[name=tel3]').val();
		var shop_zipcode = $('input[name=shop_zipcode]').val();
		var shop_address = $('input[name=shop_address]').val();
		var shop_address_detail = $('input[name=shop_address_detail]').val();
		var category_num = $('select[name=category_num]').val();
		//var shop_logo = $('input[name=shop_logo]').val();
		
		var checkbox=$('input[name=terms]').is(":checked");
		
		// 값 출력용
		if (shop_id != "" && shop_pw != "") {
			alert("shop_id :: " + shop_id + ", shop_pw :: " + shop_pw + ", shop_pwCheck :: " + shop_pwCheck);
			alert("owner_register_number :: " + owner_register_number + ", owner_name :: " + owner_name + ", owner_phone :: " + owner_phone);
			alert("shop_name :: " + shop_name + ", shop_tel :: " + shop_tel + ", shop_address :: " + shop_address + ", category_num :: " + category_num);
			alert('checkbox :: '+checkbox);
		}	
		// 검증조건 - 나중에 제이쿼리 벨리데이션이용해서 수정할것
		if (shop_id == "") {
			alert("id를 입력해주세요.");
			event.preventDefault();
			return;
		}
    
		if (shop_pw == "") {
			alert("pw를 입력해주세요.");
			event.preventDefault();
			return;
		}

    
		if (owner_register_number == "") {
			alert("사업자번호를 입력해주세요.");
			event.preventDefault();
			return;
		}  

    
		if (owner_phone == "") {
			alert("핸드폰번호를 입력해주세요.");
			return;
		}  

    
		if (owner_email == "") {
			var msg ="이메일을 입력해주세요.";
			alert(msg);
            $('[name=email_message]').html(msg);
            $('[name=email_message]').css('display', '');
			event.preventDefault();
			return;
		}  

    
		if (shop_name == "") {
			alert("상점이름을 입력해주세요.");
			event.preventDefault();
			return;
		}  

    
		if (shop_address == "") {
			var msg ="상점주소를 입력해주세요.";
			alert(msg);
            $('[name=sa-message]').html(msg);
            $('[name=sa-message]').css('display', '');
			event.preventDefault();
			return;
		} 

		if (shop_address_detail == "") {
			var msg ="상점주소를 입력해주세요.";
			alert(msg);
            $('[name=sa-message]').html(msg);
            $('[name=sa-message]').css('display', '');
			event.preventDefault();
			return;
		}
		
 		if (category_num == "") {
			var msg ="상점분류를 입력해주세요.";
			alert(msg);
            $('[name=c-message]').html(msg);
            $('[name=c-message]').css('display', '');
			event.preventDefault();
			return;
		}
		
		if(!checkbox){
			alert('개인정보수집에 동의해야합니다.');
			return;
		}
		
		$("#join-form").submit();
	 });
		
});