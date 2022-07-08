<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.order_main_box{
margin : 10px 20% 10px 20%;
position: relative;
top:10px;
width: 60%;
height: auto;
min-height:1000px;
padding-bottom:50px;
border: 1px solid #8C8C8C;
text-align: center;

}

.menu_box{
position: relative;
margin: 10px 0 0 5%;
width: 50%;
overflow:hidden;
height:auto;
padding-bottom:100px;/* footer height */
}

.address_box{
width: 100%;
float: left;
margin-bottom:10px; 
}

.address_box2{
width: 100%;
float: left;
margin-bottom:10px;
padding-bottom: 20px; 
border-bottom: 1px solid gray;
}

.zipcode_input {
      display: inline-block;
      height: 40px;
      padding: 0 10px;
      margin-left:50px;
      border: 1px solid #dddddd;
      width: 150px;
      color: #999999;
      border-radius: 5px;
      float: left;  
}

.address_input {
      display: inline-block;
      height: 40px;
      padding: 0 10px;
      margin-left:50px;
      border: 1px solid #dddddd;
      width: 500px;
      color: #999999;
      border-radius: 5px;
      float: left;  
}

.address_detail_input {
      display: inline-block;
      height: 40px;
      padding: 0 10px;
      margin-left:50px;
      border: 1px solid #dddddd;
      width: 500px;
      color: #999999;
      border-radius: 5px;
      float: left;  
}

.request_box{width: 100%;height:100px;float: left;margin-top:10px; }

.request_box2{width: 100%;height:100px;float: left;padding-bottom: 10px; border-bottom: 1px solid gray; }

.request_input {
      display: inline-block; height: 40px; width: 500px; margin: 0 0 0 50px;  
      border: 1px solid #dddddd; color: #999999; border-radius: 5px; float: left;   
}

.requset_1{
	width:100px; height:25px; float:left; margin-left: 50px;
}

.coupon{
	height: 100px; width:100%; float: left; margin-bottom: 10px; border-bottom: 1px solid gray; 
}

.payment{
	min-height:250px; width:100%; float: left; margin-bottom: 10px; border-bottom: 1px solid gray; 
}


._price{
height: 200px; width:100%;  float: left; margin-bottom: 10px;
}

.payment_option{
width:20px; float: left; height: 15px; margin: 0 10px 60px 10px; border: 1px solid red;
}

</style>
<meta charset="UTF-8">
<title>저기요</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- <script>
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
                document.getElementById('order_zipcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('order_addres').value = address;
 				
                
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address2').focus();
            }
        }).open();
    } -->
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function daumPost(){
		new daum.Postcode({oncomplete: function(data) {
			 var addr = "";
			 // R == 도로명 주소, J == 지번 주소
			 if(data.userSelectedType == "R")
			 	addr = data.roadAddress;
		 	else{
		 		addr = data.jibunAddress;
			 }
			 	document.getElementById('order_zipcode').value= data.zonecode; // 우편번호
			 	document.getElementById('order_addres').value = addr;
			 }
	}).open();
			 
}

    
    
    function handleInputLength(el, max) {
    	  if(el.value.length > max) {
    	    el.value = el.value.substr(0, max);
    	    alert("50자로 요청해주세요");
    	  }
    	}
    
    function handleInputLength2(el, max) {
  	  if(el.value.length > max) {
  	    el.value = el.value.substr(0, max);
  	    alert("50자로 요청해주세요");
  	  }
  	}
    
    function checkBox() {
    	var check_Box = document.getElementsByName("payment_option"); //체크박스 name
    	for (j = 0; j < check_Box.length; j++) {
    	 var disign = document.getElementById([j+1]); // 보여질내용
    	 if(check_Box[j].checked == true ){
    		 disign.style.display = "block";
    	 }else{
    	  check_Box[j].checked = false;
    	  disign.style.display = "none";
    	 }
    	 }
    	}
</script> 

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
/* $(document).ready(function(){
	$("#payment").click(function(){
		payment(); //버튼클릭하면 호출
	});
}) */
// 아임포트사용

var ordertest;
 	function ordergogo(){
 		
} 

  
function iamport(){
		//가맹점 식별코드
		IMP.init(''); //숨김
		IMP.request_pay({
		    pg : 'kakaopay',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '상품1' , //결제창에서 보여질 이름
		    amount : 100, //실제 결제되는 가격
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울 강남구 도곡동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		    if(msg == '결제가 완료되었습니다.')
		    	 document.getElementById('orderSend').submit();
		   
		});
		
	}
</script>
</head>
<%@ include file="../common/top.jsp" %>
<body>
	<form action="orderlist" method="post" id="orderSend">	
	<div class="order_main_box">
		<c:set target="${order}" var="ord" />
		<c:set target="${CartList}" var="ord" />
		<input type="hidden" id="member_num" name="member_num" value="${member_num }">
		<input type="hidden" id="shop_id" name="shop_id" value="${shop_id }">
		<input type="hidden" name="menu_name" value="${CartList.menu_name }">
		<input type="hidden" name="menu_count"value="${order.menu_count }">
		<h1>주문하기</h1>
		<hr>
		  <div class="address_box">
		  	<input type="text" class="zipcode_input" name="order_zipcode" id="order_zipcode" value="" placeholder="우편번호" readonly>
		  	<button type="button" class="btn btn-info" style="float: left; margin:2px 0 0 10px;" onclick="daumPost()">주소찾기</button>
          </div>
          <div class="address_box">
         	 <input type="text" class="address_input" name="order_addres" id="order_addres" value="" placeholder="주소" readonly>
          </div>
          <div class="address_box2">
         	 <input type="text" class="address_detail_input" name="order_addres_detail" id="address2" placeholder="상세주소">
          </div>
       
	
		<div class="request_box">
		<h5 style=" width:100px; height:30px; margin:0 0 10px 5px; float:left;">가게 사장님께</h5><br><br>
			<input type="text" class="request_input" name="request" placeholder="요청사항" maxlength="50" oninput="handleInputLength(this, 50)">
		</div>
		
			<div class="request_box2">
		<h5 style=" width:100px; height:30px; margin:0 0 10px 5px; float:left;">라이더님께</h5><br><br>
			<input type="text" class="request_input" name="request" placeholder="요청사항" maxlength="50" oninput="handleInputLength2(this, 50)">
		</div>
		
		<div class="payment">
			<h4 style="float: left; margin:10px 0 10px 10px;">결제 수단</h4><br><br>
			<input type="radio" class="payment_option" name="payment_option" id="payment1" onclick="checkBox()" checked="checked" value="카카오페이"><label style="float: left;" for="payment1">카카오페이</label><br><br>
				<div id="1" style="float: left; width: 100%">
					<img alt="" src="../resources/images/order/payment_icon_yellow_large.png">
				</div>
				
			<input type="radio" class="payment_option" name="payment_option" id="payment2" onclick="checkBox()" value="만나서결제"><label style="float:left;" for="payment2">만나서결제</label><br><br>
        	<div id="2" style="display: none;">
        		<select class="form-select" aria-label="Default select example" style="width: 300px;">
  					<option selected>현장 결제 방법</option>
  					<option value="1">카드</option>
  					<option value="2">현금</option>
				</select>
        	</div>
		
		</div>	
		
		<div class="coupon">
			<h4 style="float: left; margin:10px 0 10px 10px;">쿠폰</h4>
			
		</div>
		
		<div class="_price">
			<h4 style="float: left; margin:10px 0 10px 10px;">결제 금액</h4><br><br>
			<div style=" width:100%; float: left;">
				<h5 style="float: left; margin:10px 0 15px 10px; ">주문금액</h5>
			<label style="float: right; margin: 5px 50px 5px 0;">	<c:out value="${order.total_price }" /></label>
			</div>
			<div style="width:100%; float: left;">	
				<h5 style="float: left; margin:15px 0 10px 10px; ">배달팁</h5>
				<label style="float: right; margin: 5px 50px 5px 0;">2000 </label>
			</div>
		</div>	
		<div>	
		<input type="hidden" name ="total_price" value="${order.total_price}" >
		<input type="hidden" name ="delivery_cost" value="2000" >
			<button id="payment" type="button" onclick="iamport()" class="btn btn-primary btn-lg"><c:out value="${order.total_price + 2000}" /> 원 결제</button>
		</div>
		
	</div>
</form>
</body>
<%@ include file="../common/footer.jsp" %>
</html>
