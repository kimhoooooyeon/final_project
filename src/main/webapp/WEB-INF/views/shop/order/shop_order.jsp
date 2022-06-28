<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if IE 10]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]-->
    <title>Cafe24-Echosting Admin</title>
    <script type="text/javascript" src="/resources/shop/js/jquery.js"></script>
    <script type="text/javascript" src="/resources/shop/js/order.js"></script>
    <!-- Google Tag Manager -->
    <script async="" src="https://a.clarity.ms/s/0.6.34/clarity.js"></script>
    <script type="text/javascript" async="" src="https://ydh312.cafe24.com/ind-script/moment.php?convert=F"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-LMD9WDQL79&amp;l=dataLayer&amp;cx=c"></script>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-H2L994D8BT&amp;l=dataLayer&amp;cx=c"></script>
    <script src="https://ydh312.cafe24.com/ind-script/optimizer.php?filename=08_Iz03VNzQq0i8oyk8vSszVLy8v18_MS-EqTi7KLCjRz0oFY57czDyerGIA&type=js&k=f8c449ff82a3977059c3195db755507c2666c339&t=1654150959"></script>
    <script async="" src="https://www.clarity.ms/tag/7pz1hzx5td"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-NBS7Z7L"></script>
    <script>
        (function(w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NBS7Z7L');
    </script>
    <!-- End Google Tag Manager -->
    
    
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8">

    <link rel="stylesheet" type="text/css" href="https://ydh312.cafe24.com/ind-script/optimizer.php?filename=rZNhbsMwCIUPsPzdOdB2kqk3IJgkNHbwwNa0nr5uqvUAE__QE3x6TwBsWhg-Pg2q6WpYAGuFL9PUqcGFXbsRA7k_Gk7RGY22Ra1MQ36HF2EZ4_yjtoP9zXWpSDtcvzvbL9TcVzkcCDMfCe1VvMmx_BfW5XT3VKcuE6lxGGz0yw3nHEd0zkwtFIk0MifRI47Ym5KWmrnF2Zx7a4Eek2DWNW4vWRJbGG5s2OOiYuMqtAf6O9-d3WcMzLxxOc_lDg&type=css&k=5b3213facdfd876bd1824839ecdf29abfda8ad19&t=1654150959">
    <style type="text/css">
        .icoShop {
            display: none
        }
    </style>
   
</head>

<body>

    <div id="wrap" class="">
        <!-- header -->
        <%@include file="../common/shop_menuTop.jsp" %>
		
        <hr class="layout">
		<!--  컨테이너 -->
        <div id="container">
           <!--  class="snbHidden" -->
           <!--  이부분은 sidebar임포트 -->
           <%@include file="../common/shop_sidebar.jsp" %>
            <hr class="layout">

            <form name="frm" method="post" action="/shop/order/search">
                <!-- content -->
                <div id="content">
                    <!-- 참고 : Frame 구분 시 컨텐츠 시작 -->
                    <div class="headingArea">
                        <div class="mTitle">
                            <h1>전체주문목록</h1>
                        </div>
                        <div class="mBreadcrumb">
                            <ol>
                                <li class="home">홈</li>
                                <li class="867">주문관리</li>
                                <li class="now" title="현재 위치">전체주문목록</li>
                            </ol>
                        </div>
                        
                    </div>
                    <!-- 검색테이블 임포트하기 -->
					<%@include file="order_search.jsp" %>
					</form>
					
					<!-- 결과보여주는창 -->
					<!-- 검색결과 -->
					<%@include file="order_result.jsp" %>


                </div>

            </form>

        </div>

    </div>
    
   

    
    

</body>

</html>