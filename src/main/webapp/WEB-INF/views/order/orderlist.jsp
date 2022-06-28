<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.menu_box{
position: relative;
margin: 10px 0 0 5%;
width: 50%;
overflow:hidden;
height:auto;
padding-bottom:100px;/* footer height */
}
.menu_list{
float: left;
border: 1px solid #DCDCDC; 
width: 90%;
height: auto;
margin: 10px 0px 10px 5%; 
cursor: pointer;
}

.menu_name{
font-size: 25px;
padding:5px;
float: left;
margin : 5px 0 5px 5%;
width: 90%;
height: 50px;
text-align: center;
border: 1px solid #DCDCDC;
}

.cart{
position:fixed;
top: inherit;
margin-left: 61%;
width: 400px;
height: auto;
border: 1px solid green;
text-align: center;
cursor: pointer;
}


.menu_box {
margin-left:25%;
}
.h11{margin-left: 50px;
}

.cartlist{
width: 100%;
height: auto;
}
.cart_name{
list-style-type: none;
display: inline;
float: left;
width: 200px;
text-align: left;
}
.cart_price{
list-style-type: none;
display: inline;
float: left;
margin-left:5px;

}
.cart_count{
list-style-type: none;
display: inline;
width:50px;

}
.cart_total{
list-style-type: none;
display: inline;
margin-right:5px;
float: right;

}

.select{
width : 45%;
margin-left : 5%;
height : 50px;
float :left;
cursor: pointer;
text-align: center;
padding:1%;
font-size : 25px;
border: 1px solid #DCDCDC;
border-right-width: 0;
}

.select2{
width : 45%;
height : 50px;
padding:1%;
float :left;
cursor: pointer;
text-align: center;
font-size : 25px;
border: 1px solid #DCDCDC;
}


.menu_box a:link { text-decoration:none; color:black;}
.menu_box a:link { text-decoration:none; color:black;}
.menu_box a:visited { text-decoration:none;color:black;}
.menu_box a.active { text-decoration:none; color:black; }
.menu_box a:hover {text-decoration:none; color:black;}



.cart_total_price{
border: none;
}

.img1{
padding-top:20px;
}

.mn{
font-size:15px;
padding: 5px;
font-weight: bold;
}

</style>

<script type="text/javascript" src="/resources/member/js/jquery.js"></script>
<script type="text/javascript" src="/resources/member/js/cart.js"></script>

<meta charset="UTF-8">
<title>저기요</title>

</head>
<body>
	<%@ include file="../common/top.jsp" %>
	<%@ include file="../common/topLocation.jsp" %>
	<%@ include file="../common/topShopList.jsp" %>
	<!-- 학원가서 디자인 수정작업 -->
	<div class ="menu_box">
		<div class="menu_name">
			주문완료</div>
	
		
		<div class="menu_list">
		
		
		<input type="hidden" name="shop_id" value="${shop_id }">
		<c:forEach items="${detail}" var="cartList">
			<div class="mn">메뉴 이름 : ${cartList.order_menu}   ${cartList.menu_count }개</div>
		</c:forEach>
		<label style="margin: 0 30% 0 40%;">총 주문 가격 : ${totoal}</label>
		</div>
	</div>

	

<%@ include file="../common/footer.jsp" %>
</body>
<script type="text/javascript">


function windowload(){
	 var test = document.getElementsByName("total_p").length;
	 
	 
	var sum = 0; 
	for(var i = 0; i< test; i++ ){
 	var obj = parseInt(document.getElementsByName("total_p")[i].value);
 	sum += obj;
	}
	document.getElementById('total_price').value = sum;
}
window.onload = windowload;

</script>
</html>