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

    <title>Insert title here</title>
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
                    <h1 class="h2">주문확인</h1>
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

                        <div class="mOption">
                            <table border="1" summary="">
                                <caption>주문 검색</caption>
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
                                                        <option value="o_name">주문자명</option>
                                                        <option value="member_id">주문자 아이디</option>
                                                        <option value="member_email">회원 이메일</option>
                                                        <option value="o_phone2">주문자 휴대전화</option>
                                                        <option value="client_ip">주문자 IP</option>

                                                    </select>
                                                    <input type="text" class="fText sBaseSearchBox" name="MSV[]" id="sBaseSearchBox" style="width:400px;">
                                                    <a href="#none" class="btnIcon icoPlus"><span>추가</span></a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            기간
                                        </th>
                                        <td colspan="2" style="position:relative;">
                                            <select name="date_type" style="width:115px;" class="fSelect disabled">
                                                <option value="order_date" selected="selected">주문일</option>
                                                <option value="memo_date">메모작성일</option>
                                                <option value="pay_date">결제일</option>
                                                <option value="shipready_date">송장번호입력일</option>
                                                <option value="shipbegin_date">배송시작일</option>
                                                <option value="shipend_date">배송완료일</option>

                                            </select>
                                            <a href="#none" class="btnDate  selected" date-interval="0"><span>오늘</span></a>
                                            <a href="#none" class="btnDate  " date-interval="1"><span>어제</span></a>
                                            <a href="#none" class="btnDate  " date-interval="3"><span>3일</span></a>
                                            <a href="#none" class="btnDate  " date-interval="7"><span>7일</span></a>
                                            <a href="#none" class="btnDate  " date-interval="15"><span>15일</span></a>
                                            <a href="#none" class="btnDate  " date-interval="30"><span>1개월</span></a>
                                            <a href="#none" class="btnDate  " date-interval="90"><span>3개월</span></a>
                                            <a href="#none" class="btnDate  " date-interval="180"><span>6개월</span></a>

                                            <!-- js파일에 넣어서 불러와야할것들 -->
                                            <!--div class="duet-date-picker-grid  duet-date-theme-ec-mode  sun">
                            <duet-date-picker first-day-of-week="0" name="start_date" identifier="startDate" class="duet-date-picker start hydrated changePicker" value="2022-06-02">
                                <div class="duet-date">
                                    <div class="duet-date__input-wrapper"><input class="duet-date__input" placeholder="yyyy-mm-dd" id="startDate" aria-autocomplete="none" autocomplete="off"><input type="hidden" name="start_date" value="2022-06-02"><button class="duet-date__toggle" type="button"><span class="duet-date__toggle-icon theme1"><svg aria-hidden="true" height="24" viewBox="0 0 21 21" width="24" xmlns="http://www.w3.org/2000/svg">
                                                    <g fill="none" fill-rule="evenodd" transform="translate(2 2)">
                                                        <path d="m2.5.5h12c1.1045695 0 2 .8954305 2 2v12c0 1.1045695-.8954305 2-2 2h-12c-1.1045695 0-2-.8954305-2-2v-12c0-1.1045695.8954305-2 2-2z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        <path d="m.5 4.5h16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        <g fill="currentColor">
                                                            <circle cx="8.5" cy="8.5" r="1"></circle>
                                                            <circle cx="4.5" cy="8.5" r="1"></circle>
                                                            <circle cx="12.5" cy="8.5" r="1"></circle>
                                                            <circle cx="8.5" cy="12.5" r="1"></circle>
                                                            <circle cx="4.5" cy="12.5" r="1"></circle>
                                                            <circle cx="12.5" cy="12.5" r="1"></circle>
                                                        </g>
                                                    </g>
                                                </svg></span><span class="duet-date__toggle-icon theme2" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="none" viewBox="0 0 19 19">
                                                    <path fill="#7C7C7C" d="M4 9h3v2H4V9zM4 13h3v2H4v-2zM11 9H8v2h3V9zM8 13h3v2H8v-2zM15 9h-3v2h3V9zM12 13h3v2h-3v-2z"></path>
                                                    <path fill="#7C7C7C" fill-rule="evenodd" d="M4 0h1v2h9V0h1v2h3c.552 0 1 .448 1 1v15c0 .552-.448 1-1 1H1c-.552 0-1-.448-1-1V3c0-.552.448-1 1-1h3V0zM1 6h17v12H1V6z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme3" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="none" viewBox="0 0 15 15">
                                                    <path fill="#A1A1A1" fill-rule="evenodd" d="M5 0H4v1H1c-.552 0-1 .448-1 1v12c0 .552.448 1 1 1h13c.552 0 1-.448 1-1V2c0-.552-.448-1-1-1h-3V0h-1v1H5V0zm9 5H1v8.5c0 .276.224.5.5.5h12c.276 0 .5-.224.5-.5V5z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme4" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd" stroke="#4F4E4E" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.143" d="M3.429 1.905h9.142c.842 0 1.524.682 1.524 1.524v9.142c0 .842-.682 1.524-1.524 1.524H3.43c-.842 0-1.524-.682-1.524-1.524V3.43c0-.842.682-1.524 1.524-1.524z" clip-rule="evenodd"></path>
                                                    <path stroke="#4F4E4E" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.143" d="M1.905 4.952h12.19"></path>
                                                    <path fill="#4F4E4E" d="M8 8.762c.42 0 .762-.341.762-.762 0-.42-.341-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.341.762.762.762zM4.952 8.762c.421 0 .762-.341.762-.762 0-.42-.34-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.342.762.762.762zM11.048 8.762c.42 0 .761-.341.761-.762 0-.42-.34-.762-.761-.762s-.762.341-.762.762c0 .42.34.762.762.762zM8 11.81c.42 0 .762-.342.762-.762 0-.421-.341-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.341.761.762.761zM4.952 11.81c.421 0 .762-.342.762-.762 0-.421-.34-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.342.761.762.761zM11.048 11.81c.42 0 .761-.342.761-.762 0-.421-.34-.762-.761-.762s-.762.34-.762.762c0 .42.34.761.762.761z"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme5" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#444B59" fill-rule="evenodd" d="M7 2h2v2h6V2h2v2h2c1.105 0 2 .895 2 2v13c0 1.105-.895 2-2 2H5c-1.105 0-2-.895-2-2V6c0-1.105.895-2 2-2h2V2zM5 9v10h14V9H5zm2 2h2v2H7v-2zm2 4H7v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__vhidden">날짜 선택<span>, 선택한 날짜는 2022-06-02</span></span></button></div>
                                    <div class="duet-date__dialog" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="DuetDateLabel-6e051c6b-0127-9581-5cbf-966fded2c715">
                                        <div class="duet-date__dialog-content">
                                            <div class="duet-date__vhidden duet-date__instructions" aria-live="polite">화살표 키를 사용하여 날짜를 탐색 할 수 있습니다.</div>
                                            <div class="duet-date__mobile"><label class="duet-date__mobile-heading">날짜 선택</label><button class="duet-date__close" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                                        <path d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path>
                                                    </svg><span class="duet-date__vhidden">창 닫기</span></button></div>
                                            <div class="duet-date__header">
                                                <div>
                                                    <h2 id="DuetDateLabel-6e051c6b-0127-9581-5cbf-966fded2c715" class="duet-date__vhidden" aria-live="polite">6월 2022</h2><label for="DuetDateMonth-b75a7a36-b9b6-ce03-6bf2-5e8761fc9855" class="duet-date__vhidden">달</label>
                                                    <div class="duet-date__select"><select id="DuetDateMonth-b75a7a36-b9b6-ce03-6bf2-5e8761fc9855" class="duet-date__select--month">
                                                            <option value="0">1월</option>
                                                            <option value="1">2월</option>
                                                            <option value="2">3월</option>
                                                            <option value="3">4월</option>
                                                            <option value="4">5월</option>
                                                            <option value="5">6월</option>
                                                            <option value="6">7월</option>
                                                            <option value="7">8월</option>
                                                            <option value="8">9월</option>
                                                            <option value="9">10월</option>
                                                            <option value="10">11월</option>
                                                            <option value="11">12월</option>
                                                        </select>
                                                        <div class="duet-date__select-label" aria-hidden="true"><span>6월</span><svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                                <path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path>
                                                            </svg></div>
                                                    </div><label for="DuetDateYear-a4b148cd-4d7e-b8d9-4142-b20cb8111bf7" class="duet-date__vhidden">년</label>
                                                    <div class="duet-date__select"><select id="DuetDateYear-a4b148cd-4d7e-b8d9-4142-b20cb8111bf7" class="duet-date__select--year">
                                                            <option>2012</option>
                                                            <option>2013</option>
                                                            <option>2014</option>
                                                            <option>2015</option>
                                                            <option>2016</option>
                                                            <option>2017</option>
                                                            <option>2018</option>
                                                            <option>2019</option>
                                                            <option>2020</option>
                                                            <option>2021</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                            <option>2025</option>
                                                            <option>2026</option>
                                                            <option>2027</option>
                                                            <option>2028</option>
                                                            <option>2029</option>
                                                            <option>2030</option>
                                                            <option>2031</option>
                                                            <option>2032</option>
                                                        </select>
                                                        <div class="duet-date__select-label" aria-hidden="true"><span>2022</span><svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                                <path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path>
                                                            </svg></div>
                                                    </div>
                                                </div>
                                                <div class="duet-date__nav"><button class="duet-date__prev" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24">
                                                            <path d="M14.71 15.88L10.83 12l3.88-3.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L8.71 11.3c-.39.39-.39 1.02 0 1.41l4.59 4.59c.39.39 1.02.39 1.41 0 .38-.39.39-1.03 0-1.42z"></path>
                                                        </svg><span class="duet-date__vhidden">이전 달</span></button><button class="duet-date__next" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24">
                                                            <path d="M9.29 15.88L13.17 12 9.29 8.12c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3c-.39.39-1.02.39-1.41 0-.38-.39-.39-1.03 0-1.42z"></path>
                                                        </svg><span class="duet-date__vhidden">다음 달</span></button></div>
                                            </div>
                                            <table class="duet-date__table" role="grid" aria-labelledby="DuetDateLabel-6e051c6b-0127-9581-5cbf-966fded2c715">
                                                <thead>
                                                    <tr>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">일</span><span class="duet-date__vhidden">일</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">월</span><span class="duet-date__vhidden">월</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">화</span><span class="duet-date__vhidden">화</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">수</span><span class="duet-date__vhidden">수</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">목</span><span class="duet-date__vhidden">목</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">금</span><span class="duet-date__vhidden">금</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">토</span><span class="duet-date__vhidden">토</span></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">29</span><span class="duet-date__vhidden">2022-05-29</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">30</span><span class="duet-date__vhidden">2022-05-30</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">31</span><span class="duet-date__vhidden">2022-05-31</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">1</span><span class="duet-date__vhidden">2022-06-01</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell" aria-selected="true"><button class="duet-date__day is-today" tabindex="0" type="button"><span aria-hidden="true">2</span><span class="duet-date__vhidden">2022-06-02</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">3</span><span class="duet-date__vhidden">2022-06-03</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">4</span><span class="duet-date__vhidden">2022-06-04</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">5</span><span class="duet-date__vhidden">2022-06-05</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">6</span><span class="duet-date__vhidden">2022-06-06</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">7</span><span class="duet-date__vhidden">2022-06-07</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">8</span><span class="duet-date__vhidden">2022-06-08</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">9</span><span class="duet-date__vhidden">2022-06-09</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">10</span><span class="duet-date__vhidden">2022-06-10</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">11</span><span class="duet-date__vhidden">2022-06-11</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">12</span><span class="duet-date__vhidden">2022-06-12</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">13</span><span class="duet-date__vhidden">2022-06-13</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">14</span><span class="duet-date__vhidden">2022-06-14</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">15</span><span class="duet-date__vhidden">2022-06-15</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">16</span><span class="duet-date__vhidden">2022-06-16</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">17</span><span class="duet-date__vhidden">2022-06-17</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">18</span><span class="duet-date__vhidden">2022-06-18</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">19</span><span class="duet-date__vhidden">2022-06-19</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">20</span><span class="duet-date__vhidden">2022-06-20</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">21</span><span class="duet-date__vhidden">2022-06-21</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">22</span><span class="duet-date__vhidden">2022-06-22</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">23</span><span class="duet-date__vhidden">2022-06-23</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">24</span><span class="duet-date__vhidden">2022-06-24</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">25</span><span class="duet-date__vhidden">2022-06-25</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">26</span><span class="duet-date__vhidden">2022-06-26</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">27</span><span class="duet-date__vhidden">2022-06-27</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">28</span><span class="duet-date__vhidden">2022-06-28</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">29</span><span class="duet-date__vhidden">2022-06-29</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">30</span><span class="duet-date__vhidden">2022-06-30</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">1</span><span class="duet-date__vhidden">2022-07-01</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">2</span><span class="duet-date__vhidden">2022-07-02</span></button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </duet-date-picker>
                            <input type="hidden" id="year1" name="year1" class="fText gDate" value="2022">
                            <input type="hidden" id="month1" name="month1" class="fText gDate" value="06">
                            <input type="hidden" id="day1" name="day1" class="fText gDate" value="02">
                            <select class="fSelect" name="start_time" id="start_time" disabled="" style="display: none;">
                                <option value="00:00:00" selected="">00:00</option>
                                <option value="01:00:00">01:00</option>
                                <option value="02:00:00">02:00</option>
                                <option value="03:00:00">03:00</option>
                                <option value="04:00:00">04:00</option>
                                <option value="05:00:00">05:00</option>
                                <option value="06:00:00">06:00</option>
                                <option value="07:00:00">07:00</option>
                                <option value="08:00:00">08:00</option>
                                <option value="09:00:00">09:00</option>
                                <option value="10:00:00">10:00</option>
                                <option value="11:00:00">11:00</option>
                                <option value="12:00:00">12:00</option>
                                <option value="13:00:00">13:00</option>
                                <option value="14:00:00">14:00</option>
                                <option value="15:00:00">15:00</option>
                                <option value="16:00:00">16:00</option>
                                <option value="17:00:00">17:00</option>
                                <option value="18:00:00">18:00</option>
                                <option value="19:00:00">19:00</option>
                                <option value="20:00:00">20:00</option>
                                <option value="21:00:00">21:00</option>
                                <option value="22:00:00">22:00</option>
                                <option value="23:00:00">23:00</option>
                            </select>
                            ~
                            <duet-date-picker first-day-of-week="0" name="end_date" identifier="endDate" class="duet-date-picker end hydrated changePicker" direction="left" value="2022-06-02">
                                <div class="duet-date">
                                    <div class="duet-date__input-wrapper"><input class="duet-date__input" placeholder="yyyy-mm-dd" id="endDate" aria-autocomplete="none" autocomplete="off"><input type="hidden" name="end_date" value="2022-06-02"><button class="duet-date__toggle" type="button"><span class="duet-date__toggle-icon theme1"><svg aria-hidden="true" height="24" viewBox="0 0 21 21" width="24" xmlns="http://www.w3.org/2000/svg">
                                                    <g fill="none" fill-rule="evenodd" transform="translate(2 2)">
                                                        <path d="m2.5.5h12c1.1045695 0 2 .8954305 2 2v12c0 1.1045695-.8954305 2-2 2h-12c-1.1045695 0-2-.8954305-2-2v-12c0-1.1045695.8954305-2 2-2z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        <path d="m.5 4.5h16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        <g fill="currentColor">
                                                            <circle cx="8.5" cy="8.5" r="1"></circle>
                                                            <circle cx="4.5" cy="8.5" r="1"></circle>
                                                            <circle cx="12.5" cy="8.5" r="1"></circle>
                                                            <circle cx="8.5" cy="12.5" r="1"></circle>
                                                            <circle cx="4.5" cy="12.5" r="1"></circle>
                                                            <circle cx="12.5" cy="12.5" r="1"></circle>
                                                        </g>
                                                    </g>
                                                </svg></span><span class="duet-date__toggle-icon theme2" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="none" viewBox="0 0 19 19">
                                                    <path fill="#7C7C7C" d="M4 9h3v2H4V9zM4 13h3v2H4v-2zM11 9H8v2h3V9zM8 13h3v2H8v-2zM15 9h-3v2h3V9zM12 13h3v2h-3v-2z"></path>
                                                    <path fill="#7C7C7C" fill-rule="evenodd" d="M4 0h1v2h9V0h1v2h3c.552 0 1 .448 1 1v15c0 .552-.448 1-1 1H1c-.552 0-1-.448-1-1V3c0-.552.448-1 1-1h3V0zM1 6h17v12H1V6z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme3" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="none" viewBox="0 0 15 15">
                                                    <path fill="#A1A1A1" fill-rule="evenodd" d="M5 0H4v1H1c-.552 0-1 .448-1 1v12c0 .552.448 1 1 1h13c.552 0 1-.448 1-1V2c0-.552-.448-1-1-1h-3V0h-1v1H5V0zm9 5H1v8.5c0 .276.224.5.5.5h12c.276 0 .5-.224.5-.5V5z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme4" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="none" viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd" stroke="#4F4E4E" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.143" d="M3.429 1.905h9.142c.842 0 1.524.682 1.524 1.524v9.142c0 .842-.682 1.524-1.524 1.524H3.43c-.842 0-1.524-.682-1.524-1.524V3.43c0-.842.682-1.524 1.524-1.524z" clip-rule="evenodd"></path>
                                                    <path stroke="#4F4E4E" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.143" d="M1.905 4.952h12.19"></path>
                                                    <path fill="#4F4E4E" d="M8 8.762c.42 0 .762-.341.762-.762 0-.42-.341-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.341.762.762.762zM4.952 8.762c.421 0 .762-.341.762-.762 0-.42-.34-.762-.762-.762-.42 0-.762.341-.762.762 0 .42.342.762.762.762zM11.048 8.762c.42 0 .761-.341.761-.762 0-.42-.34-.762-.761-.762s-.762.341-.762.762c0 .42.34.762.762.762zM8 11.81c.42 0 .762-.342.762-.762 0-.421-.341-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.341.761.762.761zM4.952 11.81c.421 0 .762-.342.762-.762 0-.421-.34-.762-.762-.762-.42 0-.762.34-.762.762 0 .42.342.761.762.761zM11.048 11.81c.42 0 .761-.342.761-.762 0-.421-.34-.762-.761-.762s-.762.34-.762.762c0 .42.34.761.762.761z"></path>
                                                </svg></span><span class="duet-date__toggle-icon theme5" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill="#444B59" fill-rule="evenodd" d="M7 2h2v2h6V2h2v2h2c1.105 0 2 .895 2 2v13c0 1.105-.895 2-2 2H5c-1.105 0-2-.895-2-2V6c0-1.105.895-2 2-2h2V2zM5 9v10h14V9H5zm2 2h2v2H7v-2zm2 4H7v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2zm2-4h2v2h-2v-2zm2 4h-2v2h2v-2z" clip-rule="evenodd"></path>
                                                </svg></span><span class="duet-date__vhidden">날짜 선택<span>, 선택한 날짜는 2022-06-02</span></span></button></div>
                                    <div class="duet-date__dialog is-left" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="DuetDateLabel-8472f31b-407e-72a7-89d2-528e6ad70795">
                                        <div class="duet-date__dialog-content">
                                            <div class="duet-date__vhidden duet-date__instructions" aria-live="polite">화살표 키를 사용하여 날짜를 탐색 할 수 있습니다.</div>
                                            <div class="duet-date__mobile"><label class="duet-date__mobile-heading">날짜 선택</label><button class="duet-date__close" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                                                        <path d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path>
                                                    </svg><span class="duet-date__vhidden">창 닫기</span></button></div>
                                            <div class="duet-date__header">
                                                <div>
                                                    <h2 id="DuetDateLabel-8472f31b-407e-72a7-89d2-528e6ad70795" class="duet-date__vhidden" aria-live="polite">6월 2022</h2><label for="DuetDateMonth-7dde112b-1464-d9c5-077a-34085a22e36a" class="duet-date__vhidden">달</label>
                                                    <div class="duet-date__select"><select id="DuetDateMonth-7dde112b-1464-d9c5-077a-34085a22e36a" class="duet-date__select--month">
                                                            <option value="0">1월</option>
                                                            <option value="1">2월</option>
                                                            <option value="2">3월</option>
                                                            <option value="3">4월</option>
                                                            <option value="4">5월</option>
                                                            <option value="5">6월</option>
                                                            <option value="6">7월</option>
                                                            <option value="7">8월</option>
                                                            <option value="8">9월</option>
                                                            <option value="9">10월</option>
                                                            <option value="10">11월</option>
                                                            <option value="11">12월</option>
                                                        </select>
                                                        <div class="duet-date__select-label" aria-hidden="true"><span>6월</span><svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                                <path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path>
                                                            </svg></div>
                                                    </div><label for="DuetDateYear-dc3426f8-73d2-98bb-fc04-c6bae5e970fa" class="duet-date__vhidden">년</label>
                                                    <div class="duet-date__select"><select id="DuetDateYear-dc3426f8-73d2-98bb-fc04-c6bae5e970fa" class="duet-date__select--year">
                                                            <option>2012</option>
                                                            <option>2013</option>
                                                            <option>2014</option>
                                                            <option>2015</option>
                                                            <option>2016</option>
                                                            <option>2017</option>
                                                            <option>2018</option>
                                                            <option>2019</option>
                                                            <option>2020</option>
                                                            <option>2021</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                            <option>2025</option>
                                                            <option>2026</option>
                                                            <option>2027</option>
                                                            <option>2028</option>
                                                            <option>2029</option>
                                                            <option>2030</option>
                                                            <option>2031</option>
                                                            <option>2032</option>
                                                        </select>
                                                        <div class="duet-date__select-label" aria-hidden="true"><span>2022</span><svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24">
                                                                <path d="M8.12 9.29L12 13.17l3.88-3.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-4.59 4.59c-.39.39-1.02.39-1.41 0L6.7 10.7c-.39-.39-.39-1.02 0-1.41.39-.38 1.03-.39 1.42 0z"></path>
                                                            </svg></div>
                                                    </div>
                                                </div>
                                                <div class="duet-date__nav"><button class="duet-date__prev" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24">
                                                            <path d="M14.71 15.88L10.83 12l3.88-3.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L8.71 11.3c-.39.39-.39 1.02 0 1.41l4.59 4.59c.39.39 1.02.39 1.41 0 .38-.39.39-1.03 0-1.42z"></path>
                                                        </svg><span class="duet-date__vhidden">이전 달</span></button><button class="duet-date__next" type="button"><svg aria-hidden="true" fill="currentColor" xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24">
                                                            <path d="M9.29 15.88L13.17 12 9.29 8.12c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0l4.59 4.59c.39.39.39 1.02 0 1.41L10.7 17.3c-.39.39-1.02.39-1.41 0-.38-.39-.39-1.03 0-1.42z"></path>
                                                        </svg><span class="duet-date__vhidden">다음 달</span></button></div>
                                            </div>
                                            <table class="duet-date__table" role="grid" aria-labelledby="DuetDateLabel-8472f31b-407e-72a7-89d2-528e6ad70795">
                                                <thead>
                                                    <tr>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">일</span><span class="duet-date__vhidden">일</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">월</span><span class="duet-date__vhidden">월</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">화</span><span class="duet-date__vhidden">화</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">수</span><span class="duet-date__vhidden">수</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">목</span><span class="duet-date__vhidden">목</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">금</span><span class="duet-date__vhidden">금</span></th>
                                                        <th class="duet-date__table-header" scope="col"><span aria-hidden="true">토</span><span class="duet-date__vhidden">토</span></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">29</span><span class="duet-date__vhidden">2022-05-29</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">30</span><span class="duet-date__vhidden">2022-05-30</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">31</span><span class="duet-date__vhidden">2022-05-31</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">1</span><span class="duet-date__vhidden">2022-06-01</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell" aria-selected="true"><button class="duet-date__day is-today" tabindex="0" type="button"><span aria-hidden="true">2</span><span class="duet-date__vhidden">2022-06-02</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">3</span><span class="duet-date__vhidden">2022-06-03</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">4</span><span class="duet-date__vhidden">2022-06-04</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">5</span><span class="duet-date__vhidden">2022-06-05</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">6</span><span class="duet-date__vhidden">2022-06-06</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">7</span><span class="duet-date__vhidden">2022-06-07</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">8</span><span class="duet-date__vhidden">2022-06-08</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">9</span><span class="duet-date__vhidden">2022-06-09</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">10</span><span class="duet-date__vhidden">2022-06-10</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">11</span><span class="duet-date__vhidden">2022-06-11</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">12</span><span class="duet-date__vhidden">2022-06-12</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">13</span><span class="duet-date__vhidden">2022-06-13</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">14</span><span class="duet-date__vhidden">2022-06-14</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">15</span><span class="duet-date__vhidden">2022-06-15</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">16</span><span class="duet-date__vhidden">2022-06-16</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">17</span><span class="duet-date__vhidden">2022-06-17</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">18</span><span class="duet-date__vhidden">2022-06-18</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">19</span><span class="duet-date__vhidden">2022-06-19</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">20</span><span class="duet-date__vhidden">2022-06-20</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">21</span><span class="duet-date__vhidden">2022-06-21</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">22</span><span class="duet-date__vhidden">2022-06-22</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">23</span><span class="duet-date__vhidden">2022-06-23</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">24</span><span class="duet-date__vhidden">2022-06-24</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">25</span><span class="duet-date__vhidden">2022-06-25</span></button></td>
                                                    </tr>
                                                    <tr class="duet-date__row">
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">26</span><span class="duet-date__vhidden">2022-06-26</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">27</span><span class="duet-date__vhidden">2022-06-27</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">28</span><span class="duet-date__vhidden">2022-06-28</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">29</span><span class="duet-date__vhidden">2022-06-29</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day" tabindex="-1" type="button"><span aria-hidden="true">30</span><span class="duet-date__vhidden">2022-06-30</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">1</span><span class="duet-date__vhidden">2022-07-01</span></button></td>
                                                        <td class="duet-date__cell" role="gridcell"><button class="duet-date__day is-disabled" tabindex="-1" disabled="" type="button"><span aria-hidden="true">2</span><span class="duet-date__vhidden">2022-07-02</span></button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </duet-date-picker>
                            <input type="hidden" id="year2" name="year2" class="fText gDate" value="2022">
                            <input type="hidden" id="month2" name="month2" class="fText gDate" value="06">
                            <input type="hidden" id="day2" name="day2" class="fText gDate" value="02">
                            <select class="fSelect" name="end_time" id="end_time" disabled="" style="display: none;">
                                <option value="00:59:59">00:59</option>
                                <option value="01:59:59">01:59</option>
                                <option value="02:59:59">02:59</option>
                                <option value="03:59:59">03:59</option>
                                <option value="04:59:59">04:59</option>
                                <option value="05:59:59">05:59</option>
                                <option value="06:59:59">06:59</option>
                                <option value="07:59:59">07:59</option>
                                <option value="08:59:59">08:59</option>
                                <option value="09:59:59">09:59</option>
                                <option value="10:59:59">10:59</option>
                                <option value="11:59:59">11:59</option>
                                <option value="12:59:59">12:59</option>
                                <option value="13:59:59">13:59</option>
                                <option value="14:59:59">14:59</option>
                                <option value="15:59:59">15:59</option>
                                <option value="16:59:59">16:59</option>
                                <option value="17:59:59">17:59</option>
                                <option value="18:59:59">18:59</option>
                                <option value="19:59:59">19:59</option>
                                <option value="20:59:59">20:59</option>
                                <option value="21:59:59">21:59</option>
                                <option value="22:59:59">22:59</option>
                                <option value="23:59:59" selected="">23:59</option>
                            </select>
                            <input type="hidden" id="btnDate" name="btnDate" value="0">
                        </div-->
                                            <a href="#ordOption5" class="btnNormal eLayerClick ec-order-list-search-period" namelayer="layer_0" bindstatus="true"><span>기간 설정</span></a>
                                            <input type="hidden" name="today" id="today" value="2022-06-02">

                                            <div class="duet-date-message-layer direction" style="top: -26px;left: 525px; z-index:99; display:none;">
                                                <p class="msg">올바른 날짜를 입력하세요.</p>
                                            </div>
                                        </td>

                                    </tr>

                                    <tr>
                                        <th scope="row">
                                            상품
                                            <div class="cTip" code="OR.SM.AO.50"></div>
                                        </th>
                                        <td colspan="2">
                                            <select class="fSelect" id="eProductSearchType" name="product_search_type" style="width:110px;">
                                                <option value="product_name" selected="selected">상품명</option>
                                                <option value="product_code">상품코드</option>
                                                <option value="item_code">품목코드</option>
                                                <option value="product_tag">상품태그</option>
                                                <option value="manufacturer_name">제조사</option>
                                                <option value="supplier_name">공급사</option>
                                            </select>
                                            <input type="text" id="eOrderProductText" name="order_product_text" class="fText" style="width:490px;" value="">
                                            <input type="hidden" name="order_product_no" id="eOrderProductNo" value="">
                                            <input type="hidden" name="find_option" value="product_no">
                                            <a href="#none" id="productSearchBtn" class="btnNormal"><span>상품찾기 <em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>


                                    <tr style="display: none;">
                                        <th scope="row">희망배송업체/방식
                                            <div class="cTip" code="OR.SM.AO.60"></div>
                                        </th>
                                        <td colspan="3">
                                            <select name="HopeShipCompanyId" class="fSelect">
                                                <option value="all">- 희망배송업체 -</option>
                                                <option value="3">우체국택배</option>
                                                <option value="4">CJ대한통운</option>
                                                <option value="5">한진택배</option>
                                                <option value="6">롯데글로벌로지스</option>
                                                <option value="7">로젠택배</option>
                                            </select>
                                        </td>
                                    </tr>





                                    <tr>
                                        <th scope="row">주문상태</th>
                                        <td colspan="2" id="orderStatusCheck">
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="all" checked="checked"> 전체</label>
                                            <label class="gLabel eSelected" style="display: none;"><input type="checkbox" name="orderStatus[]" class="fChk" value="N10" checked="checked"> 상품준비중</label>
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="N20" checked="checked"> 배송준비중</label>
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="N22" checked="checked"> 배송보류</label>
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="N21" checked="checked"> 배송대기</label>
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="N30" checked="checked"> 배송중</label>
                                            <label class="gLabel eSelected"><input type="checkbox" name="orderStatus[]" class="fChk" value="N40" checked="checked"> 배송완료</label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th scope="row">CS주문상태</th>
                                        <td colspan="2">
                                            <label class="gLabel"><input type="checkbox" id="ec-order-search-cs-order-status" class="fChk ec-order-search-cs-order-status"> 전체</label>
                                            <label class="gLabel"><input type="checkbox" name="orderStatusCancel" value="all" class="fChk ec-order-search-cs-order-status"> 취소</label>
                                            <label class="gLabel"><input type="checkbox" name="orderStatusExchange" value="all" class="fChk ec-order-search-cs-order-status"> 교환</label>
                                            <label class="gLabel"><input type="checkbox" name="orderStatusReturn" value="all" class="fChk ec-order-search-cs-order-status"> 반품</label>
                                            <label class="gLabel"><input type="checkbox" name="orderStatusRefund" value="all" class="fChk ec-order-search-cs-order-status"> 환불</label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <th scope="row">입금/결제상태</th>
                                        <td colspan="2">
                                            <label class="gLabel eSelected"><input type="radio" name="orderStatusPayment" class="fChk" value="all" checked="checked"> 전체</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="F"> 입금전</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="M"> 추가입금대기</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="TA"> 입금완료</label>
                                            <label class="gLabel"><input type="radio" name="orderStatusPayment" class="fChk" value="P"> 결제완료</label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <th scope="row">회원구분</th>
                                        <td colspan="2">
                                            <label class="gLabel eSelected"><input type="radio" name="memberType" class="fChk" value="1" checked="checked"> 전체</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="2" class="fChk"> 회원</label>
                                            <label class="gLabel"><input type="radio" name="memberType" value="3" class="fChk"> 비회원</label>
                                        </td>
                                    </tr>
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
        </div>
        
        <!-- 검색어 결과 보여주는창 -->
        </main>
    </div>
    </div>
</body>

</html>