<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/shop/shop.css" />

</head>
<body>

<div id="nav" class="own-header">
    <div class="clearfix">
        <h1><a href="/owner/">사장님 사이트</a></h1>
        <ul class="nav">
            <li class="n1 ">
            
                <a nohref onclick="javascript:alert('로그인 후 이용하실 수 있습니다.'); window.location.href='/owner/login/?next_url=/owner/orders/'" style="cursor: pointer">내 가게 관리</a>
            
            </li>
            <li class="n3 "><a href="/owner/join/intro/">입점 안내</a></li>
        </ul>

        <ul class="ext">
            
                <li class="outlink"><a href="shop_sales" target="_blank">매출관리</a></li>
                <li class="outlink"><a href="https://bizcenter.yogiyo.co.kr" target="bizcenter" onclick="ga_event_tracker('GNB_BIZ', this, event)">우리가게 비즈센터</a></li>
                <li class="outlink"><a href="/owner/mall/sso_url/redirect/" target="mall" onclick="ga_event_tracker('GNB_MALL', this, event)">알뜰쇼핑</a></li>
                <li class="outlink"><a href="/owner/external-square/" target="_blank">사장님포털</a></li>
				<li><a href="/shop/login/">로그인</a></li>
            
        </ul>
    </div>
</div>


</body>
</html>