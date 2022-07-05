<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.select_box{
position: relative;
margin: 10px 0 0 5%;
width: 50%;
overflow:hidden;
height:auto;
padding-bottom:100px;/* footer height */
}
.menu_name{
font-size: 30px;
float: left;
margin : 5px 0 5px 5%;
width: 90%;
height: 50px;
text-align: center;
border: 1px solid #DCDCDC;
}

.review_list{
float: left;
border: 1px solid #DCDCDC; 
width: 90%;
height: auto;
margin: 10px 0px 10px 5%; 
cursor: pointer;
}

.review{
font-size: 30px;
float: left;
margin : 5px 0 5px 2.5%;
width: 95%;
height: auto;
text-align: left;
border: 1px solid black;
}

.review input{
border: none;
font-size: 15px;
margin-left: 20px;
}

.review textarea {
    width: 100%;
    height: 4em;
    border: none;
    resize: none;
    font-size: 20px;
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

}
.h11{margin-left: 50px;
}
ul{
width: 700px;
}
.select{
width : 30%;
margin-left : 5%;
height : 50px;
float :left;
cursor: pointer;
text-align: center;
font-size : 30px;
border: 2px groove #DCDCDC;
border-right-width: 0;
}

.select2{
width : 30%;
height : 50px;
float :left;
cursor: pointer;
text-align: center;
font-size : 30px;
border: 2px groove #DCDCDC;
border-right-width: 0;
}
.select3{
width : 30%;
height : 50px;
float :left;
cursor: pointer;
text-align: center;
font-size : 30px;
border: 2px groove #DCDCDC;
}


.cartlist{
font-size: 15px;
padding-right: 20px;
text-align: center;
margin-top: 10px;
margin-bottom: 10px;
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

.cart_total_price{
border: none;
}

.select_box a:link { text-decoration:none; color:black;}
.select_box a:link { text-decoration:none; color:black;}
.select_box a:visited { text-decoration:none;color:black;}
.select_box a:active {text-decoration:none; color:black; }
.select_box a:hover { text-decoration:none; color:black;}
</style>

<script type="text/javascript">
	
</script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>저기요</title>

</head>
<body>
	<%@ include file="../common/top.jsp" %>
	<%@ include file="../common/topLocation.jsp" %>
	<%@ include file="../common/topShopList.jsp" %>
	<div class ="select_box">
		<div class="menu_name">
			${shop_name }</div>
		<div class="select">
			<a href="/order?shop_id=${shop_id }&shop_name=${shop_name}">메뉴</a>
		</div>
		<div class="select2">
			리뷰
		</div>
		<div class="select3">
			정보
		</div>
		<div class="review_list">
		<c:if test="${empty sReview}" >
			<label>등록된 리뷰가 없습니다.</label>
		</c:if>
		 <c:forEach items="${sReview}" var="sr">
		   	<div class="review">
		  	 <input type="text" value="" disabled="disabled"><br>
		  	 <label>${sr.member_id}</label><br>
		  	 <label>${sr.order_menu }</label>
		  	 <c:if test='${sr.upload_filename == "1" }'>
		  	 	<img style=" float:right; width: 150px; height: 150px;" alt="" src="" >
		  	 </c:if>
		  	 <c:if test='${sr.upload_filename != "1" }'>
		  	 	<img style="float:right; margin-right:20px; width: 200px; height: 200px;" alt="" src="../resources/upLoadImg/${sr.upload_filename }" >
		  	 </c:if>
		  	 <textarea disabled="disabled">${sr.review_content }</textarea>	
		  	</div>
		   </c:forEach>
		</div>
		
		
		
	<div class="cart">
		<div class="lists">장바구니</div>
		<form action="orderApplication" method="post" id="orderApp">
		<input type="hidden" name="shop_id" value="${shop_id }">
	
		<c:forEach items="${cartList }" var="cartL">
		<div class="listst" style="border-bottom: 1px solid gray;">
		<ul class="cartlist">
			<li class="cart_name"><input type="hidden" name="menu_name" value="${cartL.menu_name}">${cartL.menu_name}</li>
			<li class="cart_price"><input type="hidden" name="menu_price" value="${cartL.menu_price}">${cartL.menu_price}원</li>
			<li class="cart_count"><input type="hidden" name="count" value="${cartL.count}">${cartL.count}개</li>
			<li class="cart_total"><input type="hidden" name="total_price" value="${cartL.total_price}"></li>
		</ul>
		</div>
		</c:forEach>
		<label>총 가격</label><input type="text" class="cart_total_price" disabled="disabled" id="total_price_sum" name="total_price_sum" value="" >
		<button type="button" style="margin: 5px 0 5px 0;" class="btn btn-info" onclick="orderApplication()">주문하기</button>
		</form>
	</div>
		</div>
		
	

<%@ include file="../common/footer.jsp" %>
</body>
</html>