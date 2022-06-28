
	$(document).ready(function(){
				$('#find_btn').click(function(){
					alert('버튼 클릭');
					var email = $('[name=email]').val();
					$.ajax({
						type : 'post',						
						url : '/findid/',
						data : {email : email},
						success : function(res){
							//console.log(res);
							alert('가입된 아이디를 메일로 전송했습니다.');
						}
					})
				})
			});
			
	$(document).ready(function(){
			$(function(){
				$('#findPwBtn').click(function(){
					var member_id = $('[name=member_id]').val();
					$.ajax({
						type : 'get',
						url : '/findpw/' + member_id,
						success : function(res){
							//console.log(res);
							alert('새 비밀번호를 등록된 이메일로 전송했습니다.');
						}
					})
				})
			})
		});