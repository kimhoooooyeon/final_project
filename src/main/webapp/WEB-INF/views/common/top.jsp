<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
 <!DOCTYPE html>


<html  lang='ko' ng-controller='base_controller'>
<title></title>
<head>
<link rel='stylesheet' href='/resources/css/app.css?v=f14e8a427fe8485dcf13ba1ff6767123d268bd3b'></script>

<script src="//cdn.optimizely.com/js/9026702317.js"></script>
<script type="text/javascript">

function history(){
	location.href = 'orderHistory';
}
</script>

<div id="header" class="header">

  <div role="navigation" class="nav-bar">
      <div class="nav-top clearfix">
        <h1 class="logo pull-left" ng-click="click_home()"><a href="../home">　　　</a></h1>
        <div id="cart" class="pull-right">
          
      
  	<c:choose>
		<c:when test="${empty sessionScope.id }">
        	<button type="button" class="btn btn-login ng-binding" onclick="location.href='login'">로그인</button>
        	<button type="button" class="btn btn-login ng-binding" onclick="location.href='../member'">회원가입</button>
     	</c:when>
     	<c:otherwise>
    		 <button type="button" class="btn btn-login ng-binding" onclick="location.href='logout'">로그아웃</button>
    		 <button type="button" class="btn btn-login ng-binding" onclick="location.href='orderHistory'">주문내역</button>
    		 <button type="button" class="btn btn-login ng-binding" onclick="location.href='member_info'">회원정보</button>
     	</c:otherwise>
     </c:choose>
 		  
         </div>
       </div>
      </div>
</div>
</head>
</html>

