<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div class="section">
        <div class="mBoard gSmall typeSearch">
            <table border="1" summary="">
                <caption>전체게시물 검색</caption>
                <colgroup>
                    <col style="width:145px;">
                    <col style="width:auto;">
                    <col style="width:145px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">기간</th>
                        <td colspan="3">
                            <a href="#none" class="btnDate" title="0"><span>오늘</span></a>
                            <a href="#none" class="btnDate" title="3"><span>3일</span></a>
                            <a href="#none" class="btnDate" title="7"><span>7일</span></a>
                            <a href="#none" class="btnDate selected" title="30"><span>1개월</span></a>
                            <input type="text" id="startDate" class="fText gDate" name="start_date" value="2022-05-11" readonly="">
                            <a href="javascript:;" id="eStartCalendar" class="btnIcon icoCal"><span>달력보기</span></a> ~
                            <input type="text" id="endDate" class="fText gDate" name="end_date" value="2022-06-10" readonly="">
                            <a href="javascript:;" id="eEndCalendar" class="btnIcon icoCal"><span>달력보기</span></a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">게시판 선택</th>
                        <td>
                            <select class="fSelect" id="sel_board_no" name="sel_board_no">
                                <option value=""> 전체목록
                                </option>
                                <option value="1">공지사항
                                </option>
                                <option value="4">상품 사용후기
                                </option>
                                <option value="6">상품 Q&amp;A
                                </option>
                                <option value="5">자유게시판
                                </option>
                                <option value="8">갤러리
                                </option>
                                <option value="2">뉴스/이벤트
                                </option>
                                <option value="3">이용안내 FAQ
                                </option>
                                <option value="9">1:1 맞춤상담
                                </option>
                                <option value="3001">자유게시판3
                                </option>
                                <option value="101">상품자유게시판
                                </option>
                                <option value="1002">자유게시판2
                                </option>
                                <option value="7">자료실
                                </option>
                                <option value="1001">한줄메모
                                </option>
                            </select>
                            <select class="fSelect" id="board_category" name="board_category" style="display: none;">
                                <option value=""> 카테고리 전체</option>
                            </select>
                        </td>

                        <th scope="row">쇼핑몰 구분 <div class="cTip eSmartMode" code="BD.BA.30">
                                <div class="mTooltip gMedium">
                                    <button type="button" class="icon eTip" bindstatus="true">도움말</button>
                                    <div class="tooltip" style="z-index : 1; ">
                                        <div class="content"></div>
                                        <button type="button" class="close eClose">닫기</button>
                                        <span class="edge"></span>
                                    </div>
                                </div>
                            </div>
                        </th>
                        <td>
                            <select class="fSelect" id="eSearchChannel" name="search_channel">
                                <option value="" selected="selected">PC+모바일 쇼핑몰</option>
                                <option value="P">PC 쇼핑몰</option>
                                <option value="M">모바일 쇼핑몰</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">게시글 찾기</th>
                        <td colspan="3">
                            <select id="search" name="search" class="fSelect">
                                <option value="subject">제목</option>
                                <option value="content">내용</option>
                                <option value="writer_name">작성자</option>
                                <option value="product">상품명</option>
                                <option value="member_id">아이디</option>
                                <option value="client_ip">아이피</option>
                            </select>
                            <input type="text" id="search_key" name="search_key" value="" class="fText" style="width:400px;">
                            <span style="display:none;">
                                <a href="javascript:view_board('submit');" class="btnSearch"><span>검색</span></a>
                            </span>
                            <span>
                                <label for="no_member_article"><input type="checkbox" name="no_member_article" id="no_member_article" value="F"> 비회원</label>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">답변상태</th>
                        <td>
                            <label class="gLabel eSelected"><input type="radio" class="fChk" name="is_reply" id="is_reply1" value="" onclick="view_board();" checked=""> 전체보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="is_reply" id="is_reply2" value="N" onclick="view_board();"> 답변 전</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="is_reply" id="is_reply3" value="P" onclick="view_board();"> 처리중</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="is_reply" id="is_reply4" value="Y" onclick="view_board();"> 답변 완료</label>
                        </td>
                        <th scope="row">댓글여부</th>
                        <td>
                            <label class="gLabel eSelected"><input type="radio" class="fChk" name="is_comment" id="is_comment1" value="" checked=""> 전체보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="is_comment" id="is_comment2" value="T"> 있음</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="is_comment" id="is_comment3" value="F"> 없음</label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">첨부파일 여부</th>
                        <td colspan="3">
                            <label class="gLabel eSelected"><input type="radio" class="fChk" name="real_filename" id="real_filename1" value="" checked=""> 전체보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="real_filename" id="real_filename2" value="T"> 있음</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="real_filename" id="real_filename3" value="F"> 없음</label>
                        </td>
                    </tr>
                    <tr style="display: none;">
                        <th scope="row">글보기 설정</th>
                        <td>
                            <label class="gLabel eSelected"><input type="radio" class="fChk" name="mem_type" id="mem_type1" value="" checked=""> 전체보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="mem_type" id="mem_type2" value="P"> 대표관리자 글보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="mem_type" id="mem_type3" value="A"> 부운영자 글보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="mem_type" id="mem_type4" value="S"> 공급사 글보기</label>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">신고 상태</th>
                        <td colspan="3">
                            <label class="gLabel eSelected"><input type="radio" class="fChk" name="report_status" id="report_status1" value="" checked=""> 전체보기</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="report_status" id="report_status2" value="B"> 처리전</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="report_status" id="report_status3" value="H"> 게시글 숨김</label>
                            <label class="gLabel"><input type="radio" class="fChk" name="report_status" id="report_status4" value="V"> 게시글 숨김 해제</label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="mButton gCenter">
            <a id="eBtnSearch" href="javascript:view_board('submit');" class="btnSearch"><span>검색</span></a>
            <div class="mLayer" id="bulletin_priod_setting" style="display:none;left:250px;position:absolute;width:390px; ">
                <h2>게시글 노출시간 설정</h2>
                <div class="wrap" style="padding:10px 10px 0px;">
                    <div class="mTitle">
                        <h3>노출시간 설정</h3>
                    </div>
                    <div class="mBoard gSmall">
                        <table border="1" summary="">
                            <caption>게시글 노출시간 설정</caption>
                            <tbody>
                                <tr>
                                    <th scope="row">시간 <div class="cTip" code="BR.BO.BA.60"></div>
                                    </th>
                                    <td>
                                        <select name="disp_distance_start" id="disp_distance_start" size="1" class="fSelect">
                                            <option value="" selected="">&nbsp;&nbsp;-선택-&nbsp;&nbsp;</option>
                                            <option value="0">0시</option>
                                            <option value="1">1시</option>
                                            <option value="2">2시</option>
                                            <option value="3">3시</option>
                                            <option value="4">4시</option>
                                            <option value="5">5시</option>
                                            <option value="6">6시</option>
                                            <option value="7">7시</option>
                                            <option value="8">8시</option>
                                            <option value="9">9시</option>
                                            <option value="10">10시</option>
                                            <option value="11">11시</option>
                                            <option value="12">12시</option>
                                            <option value="13">13시</option>
                                            <option value="14">14시</option>
                                            <option value="15">15시</option>
                                            <option value="16">16시</option>
                                            <option value="17">17시</option>
                                            <option value="18">18시</option>
                                            <option value="19">19시</option>
                                            <option value="20">20시</option>
                                            <option value="21">21시</option>
                                            <option value="22">22시</option>
                                            <option value="23">23시</option>
                                        </select> &nbsp;~&nbsp;
                                        <select name="disp_distance_end" id="disp_distance_end" size="1" class="fSelect">
                                            <option value="" selected="">&nbsp;&nbsp;-선택-&nbsp;&nbsp;</option>
                                            <option value="0">0시</option>
                                            <option value="1">1시</option>
                                            <option value="2">2시</option>
                                            <option value="3">3시</option>
                                            <option value="4">4시</option>
                                            <option value="5">5시</option>
                                            <option value="6">6시</option>
                                            <option value="7">7시</option>
                                            <option value="8">8시</option>
                                            <option value="9">9시</option>
                                            <option value="10">10시</option>
                                            <option value="11">11시</option>
                                            <option value="12">12시</option>
                                            <option value="13">13시</option>
                                            <option value="14">14시</option>
                                            <option value="15">15시</option>
                                            <option value="16">16시</option>
                                            <option value="17">17시</option>
                                            <option value="18">18시</option>
                                            <option value="19">19시</option>
                                            <option value="20">20시</option>
                                            <option value="21">21시</option>
                                            <option value="22">22시</option>
                                            <option value="23">23시</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="footer">
                    <a href="#none" class="btnCtrl" onclick="setDispPriodSetting('regist')"><span>확인</span></a>
                    <a href="#none" class="btnNormal" onclick="$('#bulletin_priod_setting').hide();"><span>취소</span></a>
                </div>
                <button type="button" class="btnClose" onclick="$('#bulletin_priod_setting').hide();">취소</button>
            </div>
        </div>
    </div>
</body>

</html>