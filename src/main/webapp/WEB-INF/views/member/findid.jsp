<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../common/top.jsp" %>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script type="text/javascript" src="/resources/js/find.js"></script>

<div class="row">
     
    <div class="col-xs-12 col-sm-12">
    <h3>&nbsp;</h3> 
    <h3 class="text-center">아이디찾기</h3>
    </div>        
     
    <div class="col-xs-3 col-sm-3"></div>   
    <div class="col-xs-8 col-sm-8">
         
      <div >      
        <p>&nbsp;</p>
         <!-- action 수정 -->
        <form class="form-horizontal" action="findid" method="post">
     
 		<div class="form-group">
            <div class="col-sm-2 control-label">
                <label id="">이메일</label>
            </div>
            <div class="col-sm-4">
             <input type="text" id="email" placeholder="회원가입시 등록한 이메일을 입력하세요"  name="email" class="form-control" >
            </div>
            <div class="col-sm-3">
            <input type="button" id="find_btn" name="find_btn" value="메일 전송" class="btn btn-primary">
          
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
