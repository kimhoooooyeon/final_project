<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if IE 10]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]-->
    <title>Cafe24-Echosting Admin</title>
    <!-- Google Tag Manager -->
    
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8">

    <style type="text/css">
        .icoShop {
            display: none
        }
    </style>
    
</head>

<body class="">
    
    <div id="wrap" class="">
        
        <!-- header -->
        <%@include file="../common/shop_menuTop.jsp" %>
        
        <hr class="layout">
        
        <div id="container" class="">
            <!--  class="snbHidden" -->
           <%@include file="../common/shop_sidebar.jsp" %>
            <hr class="layout">

            <!-- Content Start -->
            <div id="layerDcBenefit" class="mLayer gMedium">
                <h2>할인가 상세 내역</h2>
                <div class="wrap"></div>
                <div class="footer">
                    <a href="#none" class="btnNormal eClose"><span>확인</span></a>
                </div>
                <button type="button" class="btnClose eClose">닫기</button>
            </div>
            <span id="memoData"><input type="hidden" name="667c" value="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJtIjoieWRoMzEyIiwicyI6IjYxNDRhZjJkNzIwNGM5NjQ1NzA2ZGQ1OGUyMDY3ZmRjIiwidCI6MTY1NDMyNzQ0MSwiciI6Imh0dHBzOlwvXC95ZGgzMTIuY2FmZTI0LmNvbVwvZGlzcFwvYWRtaW5cL3Nob3AxXC9wcm9kdWN0XC9wcm9kdWN0bWFuYWdlIn0.CUba8d1awKMjEoj_N4gly2m7rDBy94Or5ynAMQXtnwDFhCT3DD_ZimZEtSXRe7W6ghRa5miS-cspmAO-JkHO2g"></span>
          
            <!-- Content Start -->
            <div id="content">
            <!-- 현재 페이지 위치나타내는 헤더 -->
                <div class="headingArea">
                    <div class="mTitle">
                        <h1>상품 목록</h1>
                        <span class="cManual" code="PR.SM.PL" href="prd/prd1040001"></span>
                        <span class="cManual eSmartMode" code="PT.PL"><a href="//serviceguide.cafe24.com/IN/ko_KR/PT.PL.html" target="_blank" class="btnManual" title="새창 열림">매뉴얼</a></span>
                    </div>
                    <div class="mBreadcrumb">
                        <ol>
                            <li class="home">홈</li>
                            <li>상품관리</li>
                            <li style="display: none;">상품관리</li>
                            <li class="now" title="현재 페이지">상품 목록</li>
                        </ol>
                    </div>
                </div>
                

                <form action="/shop/menu/register" method="POST" name="eProductSearchForm" id="eProductSearchForm" enctype="multipart/form-data">
					<!--  메뉴등록 -->
					<%@include file="menu_register.jsp" %>
                </form>
            </div>
</body>

</html>