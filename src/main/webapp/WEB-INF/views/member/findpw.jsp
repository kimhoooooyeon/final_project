<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/top.jsp" %>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript" src="/resources/js/find.js"></script>

<div class="row">
     
    <div class="col-xs-12 col-sm-12">
    <h3>&nbsp;</h3> 
    <h3 class="text-center">비밀번호찾기</h3>
    </div>        
     
    <div class="col-xs-3 col-sm-3"></div>   
    <div class="col-xs-8 col-sm-8">
         
      <div >      
        <p>&nbsp;</p>
         <!-- action 수정 -->
        <form class="form-horizontal" action="pw_find" method="post">
     	
     	<div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="">아이디</label>
            </div>
            <div class="col-sm-3">
             <input type="text" id="member_id" placeholder="아이디를 입력해주세요"  name="member_id" class="form-control" >
            </div>
            <div class="col-sm-3">
            <input type="button" id="findPwBtn" name="findPwBtn" value="메일 전송" class="btn btn-primary">
          
            </div>
         </div> 
         
         
         
         <div class="form-group">
         		 <div class="col-sm-2 control-label">
                	<label id="unknown"></label>
                 </div>
            <div class="col-sm-3">
                <input type="submit" class="form-control" value="확인" 
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
         
         

<%@ include file="../common/footer.jsp" %>
