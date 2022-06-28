<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/top.jsp" %>
<style>
.find{
margin-left:50%;
margin-bottom:20px;
}

</style>
<div class="row">
     
    <div class="col-xs-12 col-sm-12">
    <h2>&nbsp;</h2> 
   
    </div>        
     
    <div class="col-xs-3 col-sm-3"></div>   
    <div class="col-xs-8 col-sm-8">
         
      <div >      
        <p>&nbsp;</p>
         <!-- action 수정 -->
        <form class="form-horizontal" action="loginProc" method="post">
        
         <div class="form-group" >
            <div class="col-sm-2 control-label">
                <label id="id">아이디</label>
            </div>
            <div class="col-sm-6">
             <input type="text" id="member_id" placeholder="아이디"  name="member_id" class="form-control" >
            </div>
            
         </div>   
          
         <div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="pw">패스워드</label>
            </div>
            <div class="col-sm-6">
                <input type="password" class="form-control" placeholder="패스워드" name="pw" id="pw">
            </div>
         </div>
          
          	  <div class="form-group">
         		 <div class="col-sm-2 control-label">
                	<label id="unknown"></label>
                 </div>
            <div class="col-sm-6">
                <input type="submit" class="form-control" value="로그인" style= "background-color:#F53243; color:white;" >
            </div>
            
         </div>
         <div class="find">
        	 <a href="findid"><strong>아이디찾기</strong></a>
			<span class="bar">|</span>
			<a href="findpw"><strong>비밀번호찾기</strong></a>
		</div>	
			
         <!-- kakao login redirect경로 바꿧는데 작동이안됨. -->
          <div class="form-group">
            <div class="col-sm-2" id="naver_id_login" style="left:25%">
               <a href="${url}"><img src="${pageContext.request.contextPath}/resources/images/btnG_완성형.png" width="150px" height="40px"></a>
            </div>
            <div class="col-sm-2" id="kakao_id_login" style="left:25%">
               <a href="https://kauth.kakao.com/oauth/authorize?client_id=0a0fe4745d35741aff2b1845c224700a&redirect_uri=https://localhost:8085/&response_type=code">
			   <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="150px" height="40px">
			   </a>
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
         
         

<%@ include file="../common/footer.jsp" %>
