<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap');
.history_box{
position: relative;
margin: 10px 0 10px 30%;
border: 1px solid gray;
width: 750px;
overflow:hidden;
height:auto;
padding-bottom:100px;/* footer height */
border-radius: 5px;
font-family: 'Noto Serif KR', serif;
}

.history_list{
float: left;
border: 1px solid #DCDCDC; 
width: 100%;
height: auto;
margin: 20px 0px 10px 5%;
border-radius: 5px; 
}

.history{
font-size: 15px;
float: left;
margin : 10px 0 5px 2.5%;
width: 95%;
height: auto;
text-align: left;
border: 1px solid black;
border-radius: 5px;
}
.reviewRe{
position: relative;
margin : 0 40px 30px 0;
height: 45px;
width: 80px;
cursor: pointer;
color: #CC3D3D;
background-color: #D4F4FA;
border-color: #D4F4FA;
border-radius: 45%;
}
.tb_history{
height:auto;
width: 100%;
border-collapse: separate;
border-spacing: 0 25px;
margin: 10px 10px 20px 0px;
border: none;
border-top: 1px solid #DCDCDC;
}
.tb_history_td{
border: none;
border-bottom: 1px solid #DCDCDC;
}

.tb_history{

}
.ec-product-manage-list{
border: 1px solid #DCDCDC;
}

</style>
<script type="text/javascript" src="/resources/member/js/jquery.js"></script>
<script type="text/javascript" src="/resources/member/js/memberOrder.js"></script>

<meta charset="UTF-8">
<title>저기요</title>
</head>
<body>
<%@ include file="../common/top.jsp" %>


<div class ="history_box">
	<form action="reviewRegister" method="get" id="orderhistory">
		<caption><h5 style="text-align: center;">${sessionScope.id }님의 주문내역</h5></caption>
		<table border="1" summary="" class="tb_history">
		<c:if test="${hiList.isEmpty() == false }">
		<c:forEach items="${hiList}" var="his" varStatus="vs">
		<form action="reviewRegister" method="get" id="${vs.index }">
		 <tr class="ec-product-manage-list" >
			<td class="tb_history_td">
	    	    <label style="display: none;">${vs.index+1 }</label>
				<input type="hidden" id="order_num" name="order_num" value="${his.order_num }">
				<input type="hidden" id="shop_id" name="shop_num" value="${his.shop_num }">
				<input type="hidden" id="member_num" name="member_num" value="${his.member_num }">
				<input type="hidden" id="order_menu" name="order_menu" value="${his.order_menu}">
				<input type="hidden" id="menu_count" name="menu_count" value="${his.menu_count}">
				<input type="hidden" id="order_num" name="order_num" value="${his.shop_name}">
				<input type="hidden" id="his_id" name="${vs.index }" value="${vs.index }">
			</td>
			<td class="tb_history_td">
	    	    <label style="font-size: 24px; margin-left: 20px;">${his.shop_name}</label><label style="float: right; margin-right: 100px;">${his.progression }</label><br>
	    	  <label style="font-size: 15px; margin-left: 20px;"> ${his.order_menu}</label><br><br>
	    	    <label style="font-size: 15px; margin-left: 20px;" >요청사항 : ${his.request }</label><br>
			</td>
			<td class="tb_history_td">
	        <c:if test="${his.review_Check eq'1'}">
				<input type="button" name="review" class="reviewRe" value="리뷰등록">
			</c:if> 
					</td>
				</tr>
				</form>
			</c:forEach>
		</c:if>
	</table>
</form>
		
</div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>