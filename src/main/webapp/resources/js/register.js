/**
 * 
 */
 $(document).ready(function(){
	$('#memberPhoneCheck').click(function(){
		alert('버튼 클릭');
		
	var to = $('input[name="memberPhone"]').val();
	$.ajax({
		url : "/memberPhoneCheck",
		type : "POST",
		data : "to=" + "01033378950",
		dataType : "json",
		success : function(data) {
			const checkNum = data;
			
            //인증하기 버튼 클릭 이벤트
			$('#certifyCheck').click(function(){
				const userNum = $('input[name="memberPhoneCertify"]').val();		
				if(checkNum == userNum){
					alert('인증 성공하였습니다.');
				}else {
					alert('인증 실패하였습니다. 다시 입력해주세요.');
				}
			});
            
		},
		error : function() {
			alert("에러")
		}
	});
});
});


