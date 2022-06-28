<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.id }">
					<script>
						alert('로그인 후 이용하실 수 있습니다.'); 
						window.location.href='/shop/home';
					</script></c:if>

    <style>
		ul li{
			display: inline-block;
		    color: #888;
		    font-size: 12px;
		    font-weight: 100;
		    line-height: 36px;
		    margin: 10 10 0 0px;
		}
	</style>
<div id="header">
    <div class="header">
        <div class="head">
            <h1 class="logo">
                <a href="/shop/home">
                    <img src="/resources/shop/images/img-nav-owners-v3.png">
                </a>
            </h1>

        </div>

		<!-- [TOP MENU] LOGIN Member Information -->
        <div class="member">
			<ul class="ext">
                <li class="outlink"><img src="/resources/shop/images/orderCheck.png"><a href="/shop/order/home">주문확인</a></li>
                <li class="outlink"><img src="/resources/shop/images/menu.png"><a href="/shop/menu/home">메뉴관리</a></li>
                <li class="outlink"><img src="/resources/shop/images/income.png"><a href="/shop/income/home">매출보기</a></li>
                <li class="outlink"><img src="/resources/shop/images/coupon.png"><a href="/shop/coupon/home">쿠폰관리</a></li>
				<li><a href="/shop/logout/">로그아웃</a></li>

			</ul>
        </div>
    </div>
</div>