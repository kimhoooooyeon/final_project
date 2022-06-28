<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  추가한 css -->
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8">
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/default.css">
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/themes/ec-date-picker.css">

    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>메뉴목록보기</title>
</head>

<body>
    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <%@ include file="common/shop_top.jsp" %>

    <!-- 페이지 메인시작 -->
    <div class="container-fluid">
        <div class="row">
            <!-- 사이드바 -->
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <%@ include file="common/shop_sidebar.jsp" %>
            </nav>
            <!-- 우측 내용나오는 부분 -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="chartjs-size-monitor">
                    <div class="chartjs-size-monitor-expand">
                        <div class="">
                        </div>
                    </div>
                    <div class="chartjs-size-monitor-shrink">
                        <div class="">
                        </div>
                    </div>
                </div>
                <!--  그중 맨위에 선택한페이지 나오는 부분 -->
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">메뉴목록</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group me-2"></div>
                        <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar align-text-bottom" aria-hidden="true">
                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                <line x1="3" y1="10" x2="21" y2="10"></line>
                            </svg>
                            날짜선택
                        </button>
                    </div>
                </div>
                <!--  차트 보여주는부분 -->

                <!-- 검색창 보여주는곳 -->
                <div class="table-responsive">
                    <div class="optionArea " id="QA_deposit1">

                        <div class="mCtrl typeHeader " style="display: none;">
                            <div class="gLeft">
                            </div>
                            <div class="gRight">
                                <a href="#none" id="eSaveSearchForm" class="btnCtrl"><span>검색조회 항목 저장</span></a>
                                <div class="cTip" code="OR.SM.AO.30"></div>
                            </div>
                        </div>
						<!-- 검색창 테이블 -->
                        <div class="mOption">
                            <table border="1" summary="">
                                <caption>상품 검색</caption>
                                <colgroup>
                                    <col style="width:170px;">
                                    <col style="width:600px;">
                                    <col style="width:170px;">
                                    <col style="width:auto;">
                                </colgroup>
                                <tbody>

                                    <tr>
                                        <th scope="row">
                                            검색어
                                            <div class="cTip" code="OR.SM.AO.40"></div>
                                        </th>
                                        <td colspan="2">
                                            <div id="mainSearch">
                                                <div>
                                                    <select class="fSelect" name="MSK[]" style="width:163px;">
                                                        <option value="choice">-검색항목선택-</option>
                                                        <option value="member_id">메뉴이름</option>
                                                        <option value="member_email">판매가격</option>
                                                        <option value="o_phone2">할인여부</option>
                                                        <option value="client_ip">추천여부</option>
                                                        <option value="client_ip">판매상태</option>

                                                    </select>
                                                    <!-- 여기 추천여부 결정해야함  -->
                                                    <input type="text" class="fText sBaseSearchBox" name="MSV[]" id="sBaseSearchBox" style="width:400px;">
                                                    <a href="#none" class="btnIcon icoPlus"><span>추가</span></a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th scope="row">할인여부</th>
                                        <td colspan="2">
                                            <label class="gLabel eSelected"><input type="radio" name="orderStatusPayment" class="fChk" value="all" checked="checked"> 전체</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="F"> 할인중</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="M"> 할인안함</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="TA"> 네이밍을 어떻게할지 모르겠음</label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <th scope="row">추천여부</th>
                                        <td colspan="2">
                                            <label class="gLabel eSelected"><input type="radio" name="memberType" class="fChk" value="1" checked="checked"> 전체</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="2" class="fChk"> 추천함</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="3" class="fChk"> 추천안함</label>
                                        </td>
                                    </tr>
                                    

                                    <tr>
                                        <th scope="row">판매상태</th>
                                        <td colspan="2">
                                            <label class="gLabel eSelected"><input type="radio" name="memberType" class="fChk" value="1" checked="checked"> 전체</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="2" class="fChk"> 판매중</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="3" class="fChk"> 판매안함</label>
                                        </td>
                                    </tr>
                                    
                                    <!-- 여기에 원산지 별로 할지 말지 설정 -->
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="mOptionToogle" style="display: none;">
                        <div class="ctrl">
                            <span><button type="button" class="eOrdToogle" textopen="상세검색 열기" textclose="상세검색 닫기">상세검색 열기</button></span>
                        </div>
                    </div>

                    <div class="mButton gCenter">
                        <a href="#none" id="search_button" class="btnSearch"><span>검색</span></a>
                        <a href="#none" id="eBtnInit" class="btnSearch reset"><span>초기화</span></a>
                        <div id="ordProgress" class="mLoading">
                            <p>처리중입니다. 잠시만 기다려 주세요.</p>
                            <img src="//img.echosting.cafe24.com/ec/mode/influencer/common/ico_loading.gif" alt="">
                        </div>
                    </div>

                    <input type="hidden" name="main_search" id="main_search" value="">
                </div>
                  <!-- 검색어 결과 보여주는창 -->
                  <div class="section" id="QA_list2">
    <div class="mTitle" style="display: none;">
        <h2>상품 목록</h2>
        <div class="cTip" code="PR.SM.PL.60"></div>
    </div>
    <div class="mState">
        <div class="gLeft">
            <p class="total">[총 <strong>2</strong>개]</p>
        </div>
        <div class="gRight">
            <select class="fSelect nob-sel" name="orderby">
                <option value="regist_d">등록일 역순</option>
                <option value="regist_a">등록일 순</option>
                <option value="empty1" disabled="disabled">---------------</option>
                <option value="modify_d">수정일 역순</option>
                <option value="modify_a">수정일 순</option>
                <option value="empty2" disabled="disabled">---------------</option>
                <option value="name_d">상품명 역순</option>
                <option value="name_a">상품명 순</option>
                <option value="empty3" disabled="disabled">---------------</option>
                <option value="price_d">판매가 역순</option>
                <option value="price_a">판매가 순</option>
            </select>
            <select class="fSelect" name="limit">
                <option value="10">10개씩보기</option>
                <option value="20" selected="selected">20개씩보기</option>
                <option value="30">30개씩보기</option>
                <option value="50">50개씩보기</option>
                <option value="100">100개씩보기</option>
            </select>
        </div>
    </div>
    <div class="mCtrl typeHeader setting">
        <!-- [Allinone mode] 유틸 버튼(진열함/판매함/복사/삭제/분류수정 등등) -->

        <!-- [Influencer mode]인플루언서 유틸 버튼 -->
        <div class="gLeft">
            <span class="txtLess">
                <blank></blank>
            </span>
            <a href="#none" class="btnNormal _manage_delete">삭제
                <!--삭제 -->
            </a>
            <a href="#layerCopy" class="btnNormal _manage_copy">상품복사
                <!-- 상품복사-->
            </a>
            <span class="bar"></span>
            <div class="mOpen eClick" bindstatus="true">
                <a href="#displayOpen1" class="btnNormal eOpenClick">진열변경
                    <!--진열변경--><em class="icoLayer"></em>
                </a>
                <div id="displayOpen1" class="open wPrdOpenDisplay">
                    <div class="wrap">
                        <ul class="default">
                            <!--li><a href="#none" class="_manage_select_close">진열변경--진열변경--</a></li-->
                            <li><a href="#none" class="_manage_state" data-action-type="DS">진열함
                                    <!--진열함-->
                                </a></li>
                            <li><a href="#none" class="_manage_state" data-action-type="DN">진열안함
                                    <!--진열안함-->
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="mOpen eClick" bindstatus="true">
                <a href="#productOpen1" class="btnNormal eOpenClick">판매변경<em class="icoLayer"></em></a>
                <div id="productOpen1" class="open wPrdOpenProduct">
                    <div class="wrap">
                        <ul class="default">
                            <!--li><a href="#none" class="_manage_select_close">판매변경--판매변경--</a></li-->
                            <li><a href="#none" class="_manage_state" data-action-type="SS">판매함
                                    <!--판매함-->
                                </a></li>
                            <li><a href="#none" class="_manage_state" data-action-type="SN">판매안함
                                    <!--판매안함-->
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <span class="bar"></span>
            <a href="#layerProductCategory" target="_blank" title="새창 열림" class="btnNormal _manage_category">상품분류변경
                <!--상품분류변경-->
            </a>
            <a href="#none" target="_blank" title="메인진열수정" class="btnNormal _manage_main_display">메인진열수정
                <!--메인진열변경--><em class="icoLink"></em>
            </a>
        </div>
        <div class="gRight">
            <a href="/disp/admin/shop1/Mode/ProductRegister" class="btnCtrl">상품등록</a>
            <a href="/disp/admin/shop1/product/ProductExcelManage" class="btnCtrl">상품 엑셀 관리</a>
            <a href="#none" title="새창 열림" class="btnNormal eExcelCreateRequestPopUp" target="_blank"><em class="icoXls"></em> 엑셀다운로드
                <!--엑셀다운로드-->
            </a>
        </div>

        <!-- 설정 버튼 -->
        <div class="gSetting">
            <div class="mOpen eClick" bindstatus="true">
                <a href="#listSubject" class="btnSetting eOpenClick"><span>설정</span></a>
                <div id="listSubject" class="open">
                    <strong>목록표시</strong>
                    <div class="wrap">
                        <ul class="default">
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[no]" value="T"> No</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_type]" value="T"> 상품구분</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_code]" value="T"> 상품코드</label>
                            </li>
                            <li>
                                <label class=" eSelected"><input type="checkbox" class="fChk eDefColumn" name="default_column[]" value="" checked="checked" disabled="disabled"> 상품명</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[prd_price_org]" value="T"> 상품가</label>
                            </li>
                            <li>
                                <label class=" eSelected"><input type="checkbox" class="fChk eDefColumn" name="default_column[]" value="" checked="checked" disabled="disabled"> 판매가</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_buy]" value="T"> 공급가</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_custom]" value="T"> 소비자가</label>
                            </li>
                            <li>

                                <label class=" eSelected"><input type="checkbox" class="fChk eColumn" name="column[display_status]" value="T" checked="checked"> 진열상태</label>
                            </li>
                            <li>

                                <label class=" eSelected"><input type="checkbox" class="fChk eColumn" name="column[selling_status]" value="T" checked="checked"> 판매상태</label>
                            </li>
                            <li>

                                <label class=" eSelected"><input type="checkbox" class="fChk eColumn" name="column[category]" value="T" checked="checked"> 상품분류</label>
                            </li>
                            <li>

                                <label><input type="checkbox" class="fChk eColumn" name="column[ma_product_code]" value="T"> 자체 상품코드</label>
                            </li>
                            <li>

                                <label class=" eSelected"><input type="checkbox" class="fChk eColumn" name="column[ins_date]" value="T" checked="checked"> 상품등록일</label>
                            </li>
                            <li>

                                <label class=" eSelected"><input type="checkbox" class="fChk eColumn" name="column[order_address]" value="T" checked="checked"> 바로구매 URL</label>
                            </li>
                            <li style="display : none">
                                <label class=" eSelected"><input type="checkbox" class="fChk eDefColumn" name="default_column[shop_product_name]" value="T" checked="checked"> 상품명(상점별)</label>
                            </li>
                            <li style="display : none">
                                <label class=" eSelected"><input type="checkbox" class="fChk eDefColumn" name="default_column[sale_price]" value="T" checked="checked"> 할인가</label>
                            </li>
                            <li style="display : none">
                                <label class=" eSelected"><input type="checkbox" class="fChk eDefColumn" name="default_column[mobile_sale_price]" value="T" checked="checked"> 모바일할인가</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[plusapp_sale_price]" value="T"> 플러스앱할인가</label>
                            </li>
                            <li class="line" style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_eng_name]" value="T"> 영문상품명</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[item_name]" value="T"> 상품명(관리용)</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[purchase_prd_name]" value="T"> 공급사 상품명</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[soldout_status]" value="T"> 품절상태</label>
                            </li>
                            <li class="line" style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[manufacurer]" value="T"> 제조사</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[supplier]" value="T"> 공급사</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[brand]" value="T"> 브랜드</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[trend]" value="T"> 트렌드</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[classification]" value="T"> 자체분류</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[origin]" value="T"> 원산지</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[model_name]" value="T"> 모델명</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[condition]" value="T"> 상품상태</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[product_tag]" value="T"> 상품 검색태그</label>
                            </li>
                            <li class="line" style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[use_soldout]" value="T"> 품절사용</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[item_count]" value="T"> 품목수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[stockout_item_count]" value="T"> 품절품목수</label>
                            </li>
                            <li class="line" style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[wishlist_count]" value="T"> 관심상품수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[basket_count]" value="T"> 장바구니수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[like_count]" value="T"> 좋아요수</label>
                            </li>
                            <li class="line" style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[shipping_order_count]" value="T"> 배송중 갯수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[delivery_count]" value="T"> 배송완료수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[order_count]" value="T"> 결제수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[hit_count]" value="T"> 조회수</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[buy_rate]" value="T"> 상품구매율(%)</label>
                            </li>
                            <li style="display : none">

                                <label><input type="checkbox" class="fChk eColumn" name="column[memo]" value="T"> 메모</label>
                            </li>
                        </ul>
                    </div>
                    <div class="footer">
                        <a href="#none" class="btnCtrl" id="eColumnApply" data-page="manage"><span>적용</span></a>
                        <a href="#none" class="btnNormal eClose"><span>닫기</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mBoard typeList gScroll gCell">
        <!--
            항목 추가에따른 th, td 추가시 col도 같이 추가해주세요.
        -->
        <table border="1" summary="" class="eChkColor">
            <caption>상품 목록</caption>
            <colgroup>
                <col class="chk">
                <!-- 기본 -->
                <col style="width:250px">
                <col style="width:100px">
                <col style="width:150px">
                <col style="width:150px">
                <col style="width:300px">
                <col class="date">
                <col style="width:245px">
            </colgroup>
            <thead id="product-list-header">
                <tr>
                    <th scope="col"><input type="checkbox" class="allChk"></th>
                    <!-- 기본 -->
                    <th scope="col" column-name="product_name">
                        상품명 </th>
                    <th scope="col" column-name="product_price">
                        판매가 </th>
                    <th scope="col" column-name="display_status">
                        진열상태 </th>
                    <th scope="col" column-name="selling_status">
                        판매상태 </th>
                    <th scope="col" column-name="category">
                        상품분류 </th>
                    <th scope="col" column-name="ins_date">
                        상품 등록일 </th>
                    <th scope="col" column-name="order_address">
                        바로구매 URL<div class="cTip eSmartMode" code="PT.PL.220">
                            <div class="mTooltip gLarge">
                                <button type="button" class="icon eTipScroll" nametip="tempId_0" bindstatus="true">도움말</button>
                                <div class="tooltip" style="z-index : 1; ">
                                    <div class="content"></div>
                                    <button type="button" class="close eClose">닫기</button>
                                    <span class="edge"></span>
                                </div>
                            </div>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody class="center" id="product-list">
                <tr class="ec-product-manage-list" data-product-type="true" data-product-num="10" data-is-set-product="F">
                    <td><input type="checkbox" class="rowChk _product_no" value="10" is_display="T" is_selling="T" is_funding_product="F" is_set_product="F"></td>
                    <td>
                        <div class="gGoods gMedium">
                            <div class="mOpen eOver" bindstatus="true">
                                <span class="frame eOpenOver" find="gGoods"><img src="//img.echosting.cafe24.com/thumb/44x44.gif" width="44" height="44" alt=""></span>
                                <div class="open" style="top:20%;left:20%;width:145px;">
                                    <div class="wrap">
                                        <ul class="default">
                                            <li><a href="#none" class="eProductDetail" product_no="10">상품 상세보기</a></li>
                                            <li><a href="#none" class="eProductDisplayPopup" popup="T" url="http://ydh312.cafe24.com/product/detail.html?product_no=10" data-product-no="10">쇼핑몰화면 진열보기</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <p><a href="/disp/admin/shop1/Mode/ProductRegister?product_no=10" target="_blank" title="새창 열림" class="txtLink eProductDetail ec-product-list-productname" product_no="10">샘플상품 2</a></p>

                        </div>
                    </td>
                    <td class="right">10,000</td>
                    <td>진열함</td>
                    <td>판매함</td>
                    <td class="left prdCate">
                        <div class="mOpenCategory">
                            <ul class="mList typeMore prdCateList">
                                <li class="eCategoryRow" display_group="1" category_no="34" full_category_no="[27,34]">
                                    <a href="#none">[일반상품] (대분류) Bottoms &gt; (중분류) Skirts</a>
                                </li>
                                <li class="eCategoryRow" display_group="1" category_no="29" full_category_no="[24,29]">
                                    <a href="#none">[일반상품] (대분류) Outerwear &gt; (중분류) Jackets</a>
                                </li>
                                <li class="eCategoryRow" display_group="1" category_no="33" full_category_no="[25,33]">
                                    <a href="#none">[일반상품] (대분류) Tops &gt; (중분류) Shirts</a>
                                </li>
                                <li class="eCategoryRow" display_group="1" category_no="38" full_category_no="[25,32,36,38]">
                                    <a href="#none">[일반상품] (대분류) Tops &gt; (중분류) Tees &gt; (소분류) Short Sleeve &gt; (상세분류) Cropped</a>
                                </li>
                            </ul>
                        </div>
                    </td>
                    <td>2022-06-01 </td>
                    <td>
                        <input type="text" class="fText ec-product-list-orderaddress " style="width:100%;" data-product-no="10" value="http://ydh312.cafe24.com/surl/O/10" readonly="">

                        <div class="gSingle">
                            <a href="#layerSmsSend" class="btnNormal eLayerClick" namelayer="layer_0" bindstatus="true"><span>SMS발송</span></a>
                            <a href="#layerSnsShare" class="btnNormal eLayerClick ec-product-list-sns " data-product-no="10" namelayer="layer_1" bindstatus="true"><span>SNS공유</span></a>
                            <a href="#" class="btnNormal ec-product-list-copy-address " data-product-no="10" data-clipboard-text="http://ydh312.cafe24.com/surl/O/10"><span>주소복사</span></a>
                        </div>
                    </td>

                </tr>
                <tr class="ec-product-manage-list" data-product-type="true" data-product-num="9" data-is-set-product="F">
                    <td><input type="checkbox" class="rowChk _product_no" value="9" is_display="T" is_selling="T" is_funding_product="F" is_set_product="F"></td>
                    <td>
                        <div class="gGoods gMedium">
                            <div class="mOpen eOver" bindstatus="true">
                                <span class="frame eOpenOver" find="gGoods"><img src="//img.echosting.cafe24.com/thumb/44x44.gif" width="44" height="44" alt=""></span>
                                <div class="open" style="top:20%;left:20%;width:145px;">
                                    <div class="wrap">
                                        <ul class="default">
                                            <li><a href="#none" class="eProductDetail" product_no="9">상품 상세보기</a></li>
                                            <li><a href="#none" class="eProductDisplayPopup" popup="T" url="http://ydh312.cafe24.com/product/detail.html?product_no=9" data-product-no="9">쇼핑몰화면 진열보기</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <p><a href="/disp/admin/shop1/Mode/ProductRegister?product_no=9" target="_blank" title="새창 열림" class="txtLink eProductDetail ec-product-list-productname" product_no="9">샘플상품 1</a></p>

                        </div>
                    </td>
                    <td class="right">5,000</td>
                    <td>진열함</td>
                    <td>판매함</td>
                    <td class="left prdCate">
                        <div class="mOpenCategory">
                            <ul class="mList typeMore prdCateList">
                                <li class="eCategoryRow" display_group="1" category_no="29" full_category_no="[24,29]">
                                    <a href="#none">[일반상품] (대분류) Outerwear &gt; (중분류) Jackets</a>
                                </li>
                            </ul>
                        </div>
                    </td>
                    <td>2022-06-01 </td>
                    <td>
                        <input type="text" class="fText ec-product-list-orderaddress " style="width:100%;" data-product-no="9" value="http://ydh312.cafe24.com/surl/O/9" readonly="">

                        <div class="gSingle">
                            <a href="#layerSmsSend" class="btnNormal eLayerClick" namelayer="layer_2" bindstatus="true"><span>SMS발송</span></a>
                            <a href="#layerSnsShare" class="btnNormal eLayerClick ec-product-list-sns " data-product-no="9" namelayer="layer_3" bindstatus="true"><span>SNS공유</span></a>
                            <a href="#" class="btnNormal ec-product-list-copy-address " data-product-no="9" data-clipboard-text="http://ydh312.cafe24.com/surl/O/9"><span>주소복사</span></a>
                        </div>
                    </td>

                </tr>
            </tbody>
        </table>
    </div>
    <div class="mCtrl typeFooter">
        <!-- [Allinone mode] 유틸 버튼(진열함/판매함/복사/삭제/분류수정 등등) -->


        <!-- [Influencer mode]인플루언서 유틸 버튼 -->
        <div class="gLeft">
            <span class="txtLess">
                <blank></blank>
            </span>
            <a href="#none" class="btnNormal _manage_delete">삭제
                <!--삭제 -->
            </a>
            <a href="#layerCopy" class="btnNormal _manage_copy">상품복사
                <!-- 상품복사-->
            </a>
            <span class="bar"></span>
            <div class="mOpen eClick" bindstatus="true">
                <a href="#displayOpen2" class="btnNormal eOpenClick">진열변경
                    <!--진열변경--><em class="icoLayer"></em>
                </a>
                <div id="displayOpen2" class="open wPrdOpenDisplay">
                    <div class="wrap">
                        <ul class="default">
                            <!--li><a href="#none" class="_manage_select_close">진열변경--진열변경--</a></li-->
                            <li><a href="#none" class="_manage_state" data-action-type="DS">진열함
                                    <!--진열함-->
                                </a></li>
                            <li><a href="#none" class="_manage_state" data-action-type="DN">진열안함
                                    <!--진열안함-->
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="mOpen eClick" bindstatus="true">
                <a href="#productOpen2" class="btnNormal eOpenClick">판매변경<em class="icoLayer"></em></a>
                <div id="productOpen2" class="open wPrdOpenProduct">
                    <div class="wrap">
                        <ul class="default">
                            <!--li><a href="#none" class="_manage_select_close">판매변경--판매변경--</a></li-->
                            <li><a href="#none" class="_manage_state" data-action-type="SS">판매함
                                    <!--판매함-->
                                </a></li>
                            <li><a href="#none" class="_manage_state" data-action-type="SN">판매안함
                                    <!--판매안함-->
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <span class="bar"></span>
            <a href="#layerProductCategory" target="_blank" title="새창 열림" class="btnNormal _manage_category">상품분류변경
                <!--상품분류변경-->
            </a>
            <a href="#none" target="_blank" title="새창 열림" class="btnNormal _manage_main_display">메인진열수정
                <!--메인진열변경--><em class="icoLink"></em>
            </a>
        </div>
        <div class="gRight">
            <a href="/disp/admin/shop1/Mode/ProductRegister" class="btnCtrl">상품등록</a>
            <a href="/disp/admin/shop1/product/ProductExcelManage" class="btnCtrl">상품 엑셀 관리</a>
            <a href="#none" title="새창 열림" class="btnNormal eExcelCreateRequestPopUp" target="_blank"><em class="icoXls"></em> 엑셀다운로드
                <!--엑셀다운로드-->
            </a>
        </div>


    </div>
    <div class="mPaginate">
        <ol>
            <li><strong title="현재페이지">1</strong></li>
        </ol>
    </div>
</div>
        </div>
        
        
        
        </main>
    </div>
    </div>
    <%@ include file="common/shop_footer.jsp" %>
</body>

</html>