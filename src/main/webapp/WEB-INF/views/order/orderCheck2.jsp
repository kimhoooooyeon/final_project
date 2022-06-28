<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.menu_box{
position:absolute;
left:400px;
border: 1px solid red;
width: 1200px;
height: 800px;
align: center;
}
table, th, td {
    border: 1px solid #bcbcbc;
    text-align: center;
    margin: auto;
}
.smBtn{
position: relative;
left: 48%;
}
</style>

<script type="text/javascript" src="/resources/member/js/jquery.js"></script>
<script type="text/javascript" src="/resources/member/js/cart.js"></script>
<script type="text/javascript">


function fnCalCount(type, ths){
    var $input = $(ths).parents("td").find("input[name='pop_out']");
    var tCount = Number($input.val());
    var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());
    
    if(type=='p'){
        if(tCount < tEqCount) $input.val(Number(tCount)+1);
        
    }else{
        if(tCount >0) $input.val(Number(tCount)-1);    
        }
}
function selectMenu(){
	var menu_name = document.getElementById('menu_name').value;
	var menu_price = document.getElementById('menu_price').value;
	var count = document.getElementById('count').value;
	var shop_id = document.getElementById('shop_id').value;
	location.href='/cart/add';
//	window.history.back();
	}
	
	
	
</script>
<!-- script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script-->
<title>Insert title here</title>
</head>
<body>
<table class="tb" id="tbId">
	<tr>
		<th></th>
		<th>메뉴 이름</th>
		<th>가격</th>
		<th>수량</th>
	</tr>
	<tr>
		<c:forEach items="${oList }" var="ol">
			<td class="bseq_ea" style="visibility: hidden;">99</td>
			<td>${ol.menu_name }
				<input type="hidden" id="menu_name" name="menu_name" value="${ol.menu_name }">
			</td>
			<td>
				${ol.menu_price }
				<input type="hidden" id="menu_price" name="menu_price" value="${ol.menu_price }">
				<input type="hidden" id="shop_id" value="${ol.shop_id }">
			</td>
			
	   		<td>
	        	<button type ="button" onclick="fnCalCount('p',this);">+</button>
	        	<input type="text" id="count"  name="pop_out" value="0" readonly="readonly" style="text-align:center; width: 50px;"/>
	        	<button type="button" onclick="fnCalCount('m', this);">-</button>
	    	</td>
    	</c:forEach>
   	</tr>
</table>
	<button class="smBtn" name="btn-cartAdd">담기</button>
	
</body>
</html>