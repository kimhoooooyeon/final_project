<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ include file= "../common/top.jsp" %>
<!DOCTYPE html >
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>

<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript" src="/resources/js/register.js"></script>

<style>

.btn {
    width:100px;
    background-color: #f8585b;
    border: none;
    color:#fff;
    padding: 15px 0;
    text-align: right;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
}

</style>
</head> 
<body>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var address = ''; // 최종 주소 변수
                var address2 = ''; // 조합형 주소 변수
 
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    address = data.roadAddress;
 
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    address = data.jibunAddress;
                }
 
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        address2 += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        address2 += (address2 !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    address += (address2 !== '' ? ' ('+ address2 +')' : '');
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zonecode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address').value = address;
 
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address2').focus();
            }
        }).open();
    }
</script> 

<script>
	function passConfirm() {
	
		var password = document.getElementById('pw').value;					//비밀번호 
		var passwordConfirm = document.getElementById('confirmPw').value;		//비밀번호 확인 값
		var confirmMsg = document.getElementById('confirmMsg');			//확인 메세지
		var correctColor = "#19070B";	//맞았을 때 출력되는 색깔.
		var wrongColor = "#ff0000";		//틀렸을 때 출력되는 색깔
		
		
		
		if(password==passwordConfirm){
			alert("비밀번호 일치");
			confirmMsg.style.color = correctColor;	
			confirmMsg.innerHTML ="비밀번호 일치";
			
		} else {
			alert("비밀번호 불일치");
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
			
		}
		
	
	}
	
	
	var req;
	function isExistId(){
		req = new XMLHttpRequest();
		req.onreadystatechange = printMsg;
		req.open('post', 'isExistId');
		req.send(document.getElementById('member_id').value);
	}
	function printMsg(){
		var exist = document.getElementById('exist');
		msg.innerHTML = req.responseText;
	}

</script>
 


 <script>    
 	// id 글자수 제한 및 특수문자 제한
    // 특수문자 정규식 변수(공백 미포함)
     var replaceChar = /[~!@\#$%^&*\()\-=+_'\;<>\/.\`:\"\\,\[\]?|{}]/gi;
 
    // 완성형 아닌 한글 정규식
    var replaceNotFullKorean = /[ㄱ-ㅎㅏ-ㅣ]/gi;
    
    $(document).ready(function(){
        
        $("#member_id").on("focusout", function() {
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(replaceChar) || x.match(replaceNotFullKorean)) {
                    x = x.replace(replaceChar, "").replace(replaceNotFullKorean, "");
                }
                $(this).val(x);
            }
            }).on("keyup", function() {
                $(this).val($(this).val().replace(replaceChar, ""));

       });

    });      
    
    //비밀번호 제한
/*     function pwcheck(){

    	var pw = $("#pw").val();
    	var id = $("#member_id").val();
    		
    	var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
    	var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    	 
    	if(false === reg.test(pw)) {
    	alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
    	}else if(/(\w)\1\1\1/.test(pw)){
    	 alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
    	 return false;
    	 }else if(pw.search(id) > -1){
    	 alert("비밀번호에 아이디가 포함되었습니다.");
    	  return false;
    	 }else if(pw.search(/\s/) != -1){
    	 alert("비밀번호는 공백 없이 입력해주세요.");
    	 return false;
    	 }else if(hangulcheck.test(pw)){
    	 alert("비밀번호에 한글을 사용 할 수 없습니다."); 
    	 }else {
    	 console.log("통과");
    	 }

    } */
</script>

<!--  script>
//학원가서 해결 ajax 이벤트가 실행이안됨
$('.btn btn-primary').on('click', function(){
	 alert('버튼클릭');
	var to = $('input[name="memberPhone"]').val();
	$.ajax({
		url : "/memberPhoneCheck",
		type : "POST",
		data : "to=" + to,
		dataType : "json",
		success : function(data) {
			const checkNum = data;
			alert('checkNum:'+ checkNum);
		}
	})
});
/* $(document).on('click', 'certifyCheck', function(){
    //인증하기 버튼 클릭 이벤트
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
}); */
</script-->

<div class="row">
     
    <div class="col-xs-12 col-sm-12" >
    <h3>&nbsp;</h3> 
    <h3 class="text-center">회원가입</h3>
    </div>        
     
    <div class="col-xs-3 col-sm-3"></div>   
    <div class="col-xs-8 col-sm-8">
         
      <div >      
        <p>&nbsp;</p>
         <!-- action 수정 -->
        <form class="form-horizontal" action="memberProc" method="post">
        
         <div class="form-group"  >
            <div class="col-sm-2 control-label" >
                <label id="id">아이디</label>
            </div>
            <div class="col-sm-3">
             <input type="text" id="member_id" placeholder="아이디"  name="member_id" class="form-control" maxlength="20">
            </div>
            <div class="col-sm-3"> 
            <input type="button" onclick="isExistId()" value="중복체크" class="btn btn-primary">
          	<span id="msg"  style=" width: 100%;"><font>${msg }</font></span>
            </div>
            
         </div>   
          
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label>패스워드</label>
            </div>
            <div class="col-sm-6">
                <input type="password" class="form-control" name="pw" id="pw" >
            </div>
         </div>
          
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label>패스워드 체크</label>
            </div>
            <div class="col-sm-6">
                <input type="password" class="form-control" name="confirmPw" id="confirmPw" onchange="passConfirm()" >
                <span id="confirmMsg"><font>${confirmMsg }</font></span>
            </div>
         </div>
         
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="name">이름</label>
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="name" id="name" >
            </div>
         </div>        
          
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="email">이메일</label>
            </div>
            <div class="col-sm-6">
                <input type="email" class="form-control" name="email" id="email" >
            </div>
         </div>   
      
          
          <div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="zipcode">우편번호</label>
            </div>
            <div class="col-sm-3">
             <input type="text" id="zonecode" placeholder="우편번호" readonly="readonly"  name="zipcode" class="form-control" >
            </div>
            <div class="col-sm-3">
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-primary">
          
            </div>
         </div>   
         
            <div class="form-group" >
             <div class="col-sm-2 control-label">
                <label>주소</label>
             </div>
             <div class="col-sm-6">
                <input type="text" id="address"
                placeholder="주소"  name="address" readonly="readonly"  class="form-control">
             </div>   
           </div>
      
          <div class="form-group"> 
             <div class="col-sm-2 control-label">
                <label>상세주소</label>
             </div>
             <div class="col-sm-6"> 
               <input type="text" id="address2" placeholder="상세주소" name="address2"   class="form-control" >
               </div>
          </div>
          
     
 		<div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="">전화번호</label>
            </div>
            <div class="col-sm-3">
             <input type="text" id="memberPhone" placeholder="전화번호 입력"  name="phone" class="form-control" >
            </div>
            <div class="col-sm-3">
            <input type="button" id="memberPhoneCheck" name="memberPhoneCheck"  value="인증번호 전송" class="btn btn-primary"> 
            </div>
         </div> 
         
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="verification">인증번호</label>
            </div>
            <div class="col-sm-3">
             <input type="text" id="memberPhoneCertify" placeholder="인증번호를 입력하세요" name="memberPhoneCertify" class="form-control" >
            </div>
            <div class="col-sm-3">
            <input type="button" id="certifyCheck" name="certifyCheck" value="인증번호 확인" class="btn btn-primary">
            </div>
         </div> 
         
         
         
         <div class="form-group">
         		 <div class="col-sm-2 control-label">
                	<label id="unknown"></label>
                 </div>
            <div class="col-sm-3">
                <input type="submit" class="form-control" value="회원가입" 
                style= "background-color:#F53243; color:white;
                 ">
            </div>
            <div class="col-sm-3">
                <input type="reset" class="form-control" value="취소" 
                style= "background-color:#C7C5C2; color:white;
               ">
            </div>
         </div>
            
        </form> 
      </div>
    </div>
    
 	<div class="col-xs-12 col-sm-12">
    <h3>&nbsp;</h3> 
    <h3 class="text-center"></h3>
    </div>
</div>
 
 
<%@ include file= "../common/footer.jsp" %>