<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.menu_box{
position: relative;
margin: 10px 0 0 13%;
width: 50%;
overflow:hidden;
height:auto;
padding-bottom:100px;/* footer height */
}
.menu_list{
float: left;
border-bottom: 1px solid #DCDCDC;
width: 100%;
height: 150px; 
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
margin-left: 52%;
width: 400px;
height: auto;
border: 1px solid green;
text-align: center;
cursor: pointer;
}


.menu_box {
height: auto;

}
.h11{margin-left: 50px;
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

.select{
width : 30%;
margin-left : 5%;
height : 50px;
float :left;
margin-left:5%;
cursor: pointer;
text-align: center;
font-size : 20px;
padding:10px;
border: 1px groove #DCDCDC;
border-right-width: 0;
}

.select2{
width : 30%;
height : 50px;
float :left;
cursor: pointer;
text-align: center;
font-size : 20px;
padding:10px;
border: 1px groove #DCDCDC;
border-right-width: 0;
}
.select3{
width : 30%;
height : 50px;
float :left;
margin-right:5%;
cursor: pointer;
text-align: center;
font-size : 20px;
padding:10px;
border: 1px groove #DCDCDC;
}

.menu_box a:link { text-decoration:none; color:black;}
.menu_box a:link { text-decoration:none; color:black;}
.menu_box a:visited { text-decoration:none;color:black;}
.menu_box a.active { text-decoration:none; color:black; }
.menu_box a:hover {text-decoration:none; color:black;}

td{
text-align: left;
}

.area{
position:fixed;
left:35%;
top:20%;
width: 500px;
height: 500px;
background-color: white;
border: 1px solid #5D5D5D;
z-index: 10;
}

th, td {
    text-align: center;
    margin: auto;
}

table{
    text-align: center;
    margin: 30px 4% 0 4%;
}
.smBtn{
position: absolute;
    left: 37%;
    margin: 20px
}
.hideArea{
width:100%;
height: 30px;
background-color: white;
}
.hideArea th{
text-align: center;
}

.hideBtn{
	float: right; height: 100%; width: 10%; background-color: red; border: none; font-size: 15px;
}

.cart_total_price{
border: none;
}

.menu_bar{
float:left;
width: 90%; height: auto; border: 1px solid gray;  margin: 10px 0 0 5%;
}

.cate_name{
font-size: 20px;
padding: 20px;
background-color: gainsboro;
}

.mn{
font-size:20px;
font-weight: bold;
}

.price{
font-size:20px;
margin-left: 10px;
}

.img1{
padding-top:20px;
}

#select_menu_name{
text-align: center;
width: 100%;
font-size: 15px;

}

#select_menu_price{
text-align: center;
    font-size: 20px;
    width: 140px;
}
}

.tablediv{
width:20px;
}

#tableprice{
font-size: 20px;
    width: 180px;
    margin: 20px;
}

.lists{
font-size:20px;
padding :10px;
border-bottom:1px solid;
}

.listst{
font-size: 15px;
padding-right: 10px;
text-align: center;
}


</style>

<script type="text/javascript" src="/resources/member/js/jquery.js"></script>
<script type="text/javascript" src="/resources/member/js/cart.js"></script>
<script type="text/javascript">

	function viewMenuList(){
		var demodiv = document.getElementById('menu_bar');
	
		document.getElementById('menu_list').style.display="block";
		
	}


	function fnCalCount(type, ths){
	    var $input = $(ths).parents("td").find("input[name='pop_out']");
	    var tCount = $('#count').val();
	    var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());

	    if(type=='p'){
	        if(tCount < tEqCount) $input.val(Number(tCount)+1);
	        
	    }else{
	        if(tCount >0) $input.val(Number(tCount)-1);
	        }
	}
	
	/*	function getShow(Obj){
		
 		var test = document.getElementById(eval("'"+{vs.index}}+"'");
		alert(test); 
		var test2 = document.getElementById("menu_list").firstChild.nodeValue;	
		alert(test2); */
 	function orderSend(formObj){
		var oid = formObj.in_id.value;
		
		name = document.forms[oid].elements[1].value;
		price = document.forms[oid].elements[2].value;
		
		document.getElementById("Img_Area").style.display = "";
		document.getElementById("select_menu_name").value = name;
		document.getElementById("select_menu_price").value = price;

	}

	function getHide(){
		document.getElementById("Img_Area").style.display = "none";
		
	}
	
	function orderApplication(){
		document.getElementById('orderApp').submit();
	}


	
</script>
<meta charset="UTF-8">
<title>저기요</title>

</head>
<body>
	<%@ include file="../common/top.jsp" %>
	<%@ include file="../common/topLocation.jsp" %>
	<%@ include file="../common/topShopList.jsp" %>
	<div class ="menu_box">
		<div class="menu_name">
		<input type="hidden" id="shop_name" value="${shop_name}">${shop_name}</div>
		<div class="select">
			메뉴<input type="hidden" id="shop_id" value="${shop_id }">
		</div>
		<div class="select2">
			<a href="/review?shop_id=${shop_id }&shop_name=${shop_name}">리뷰</a>
		</div>
		<div class="select3">
			정보
		</div>
		
		<!-- 장바구니 담기전 숨긴 div -->
		<div id="Img_Area" class="area" style="display: none;" >
			<div class="hideArea">
				<button class="hideBtn" onclick="getHide()">x</button>
		    </div>
		    
			<table class="tb" id="tbId">	 
				<tr>
					<th></th>
					<th>메뉴 이름</th>
					<th>가격</th>
					<th>수량</th>
				</tr>
					<tr>
					<td class="bseq_ea" style="visibility: hidden;">99</td>
					<td>
					<input type="text" style="border: none; background: none;" id="select_menu_name" name="menu_name"  value="">
				</td>
				<td>
					<input type="text" style="border: none; background: none;" id="select_menu_price" name="menu_price" disabled="disabled" value="">
				</td>
	   			<td>
	        		<button type ="button" onclick="fnCalCount('p',this);">+</button>
	        		<input type="text" id="count"  name="pop_out" value="0" readonly="readonly" style="text-align:center; width: 50px;"/>
	        		<button type="button" onclick="fnCalCount('m', this);">-</button>
	    		</td>
   			</tr>
			</table>
				<button class="smBtn" name="btn-cartAdd">장바구니 담기</button>
			</div>	
		    
		    
		    
	<c:forEach items="${cateList }" var="catelist">
	<div class="menu_bar" onclick="viewMenuList()" id="menu_bar">
		<div class="cate_name">${catelist.category_name}</div>
		<c:forEach items="${mList }" var="foodList" varStatus="vs">
		<c:if test="${catelist.category_num == foodList.category_num}">
		<div class="menu_list" onclick="getShow(this)" id="menu_list" style="display: ;" >
			<form action="orderSend" id="${vs.index }" onclick="orderSend(this)">
			 	<input type="hidden" name="shop_num" value="${foodList.shop_num}">
			 	<input type="hidden" id="name" name="menu_name" value="${foodList.menu_name }">
			 	<input type="hidden" id="price" name="name" value="${foodList.menu_price }">
			 	<input type="hidden"id="name" name="shop_id" value="${foodList.shop_id }">
			 	<c:if test="${!empty foodList.menu_filename }">
	                    <div class="img1"><img id="img" alt="" src="../resources/images/shop_menu/${foodList.menu_filename }" style="width: 150px; height: 120px; float: right;" onclick=""></div>
				</c:if>	
				<input type="hidden" id="${vs.index }" name="in_name" value="${vs.index }">
				<input type="hidden" id="in_id" name="${vs.index }" value="${vs.index }"> 	
							
						 	<div class="price"><label>	${foodList.menu_name }</label><br>
							<label>${foodList.menu_price } 원</label><br>
							<label style="font-size: 15px;">${foodList.menu_explanation }</label>
							</div>
							
		   
		  	</form>
		 </div>
			 </c:if>
		 	</c:forEach>
		 </div>
	
		</c:forEach>
		
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
<script type="text/javascript">


function windowload(){
	
if(null != sessionStorage.getItem('locationInfo')){
		
		var resultDiv = document.getElementById('locationLatlng'); 
	     	resultDiv.innerHTML = sessionStorage.getItem('locationInfo');
	     	}
	 var test = document.getElementsByName("total_price").length;
	 
	 
	var sum = 0; 
	for(var i = 0; i< test; i++ ){
 	var obj = parseInt(document.getElementsByName("total_price")[i].value);
 	sum += obj;
	}
	document.getElementById('total_price_sum').value = sum;
}
window.onload = windowload;

</script>
</html>