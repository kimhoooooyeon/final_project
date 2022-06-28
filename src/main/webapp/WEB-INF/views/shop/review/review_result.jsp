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
        <div class="mTitle">
            <h2>전체 게시물 목록</h2>
        </div>
        <div class="mState">
            <div class="gLeft">
                <p class="total">[오늘 등록된 새 글 <strong>0</strong>건] 검색결과
                    <strong>1</strong>
                    건 <span id="admngDebug">
                        <script id="admngEffectScript" type="text/javascript" charset="utf-8" src="https://ad.cafe24.com/adManager/util/javascript/adMngEffect.js?ver=1.0.0"></script>
                        <script id="cookieScript" type="text/javascript" charset="utf-8" src="https://ad.cafe24.com/adManager/util/javascript/adMngCookie.js?ver=1.0.0"></script>
                        <script id="admngLayerScript" type="text/javascript" charset="utf-8" src="https://ad.cafe24.com/adManager/util/javascript/adMngLayer.js?ver=1.0.0"></script>
                        <link id="admngCSS" type="text/css" rel="stylesheet" href="https://ad.cafe24.com/adManager/util/javascript/admngCSS.css?ver=1.0.0">
                        <script id="admngURLLog" type="text/javascript" src="https://ad.cafe24.com/adManager/controller/ConclusionURLAD.php?siteType=malladmin&amp;url=https%3A%2F%2Fydh312.cafe24.com%2Fadmin%2Fphp%2Fshop1%2Fb%2Fboard_admin_bulletin_l.php"></script>
                        <script type="text/javascript" src="https://ad.cafe24.com/adManager/controller/ConclusionAD.php?siteType_ADParam=malladmin&amp;userID_ADParam=ydh312&amp;ckStr=&amp;ckAllStr=&amp;ckByMulti={&quot;4987&quot;:{&quot;43541&quot;:1654050249793}}&amp;ssl=true&amp;admngAreaView=false&amp;charset=utf-8&amp;admngValue=0&amp;dummy=1654854685577&amp;contentURLFull=https%3A%2F%2Fydh312.cafe24.com%2Fadmin%2Fphp%2Fshop1%2Fb%2Fboard_admin_bulletin_l.php"></script>
                    </span>
                    <script type="text/javascript" charset="utf-8" src="//ad.cafe24.com/adManager/util/javascript/adMngLayer.js"></script>
                    <script id="admng" charset="utf-8" type="text/javascript" src="//ad.cafe24.com/adManager/logic/WebAnalysis.js?siteType=malladmin&amp;userID=ydh312"></script><span id="admngSide_1"></span>
                </p>
            </div>
            <div class="gRight">
                <select class="fSelect" id="eSearchSort" name="searchSort" onchange="view_board('submit');" align="absmiddle">
                    <option value="" selected="selected">기본정렬
                    </option>
                    <option value="H">조회수많은순
                    </option>
                </select>
                <select class="fSelect" id="list_limit" name="list_limit" onchange="view_board('submit');" align="absmiddle">
                    <option value="10" selected="">10개씩보기
                    </option>
                    <option value="20">20개씩보기
                    </option>
                    <option value="30">30개씩보기
                    </option>
                    <option value="50">50개씩보기
                    </option>
                    <option value="100">100개씩보기
                    </option>
                </select>
            </div>
        </div>
        <div class="mCtrl typeHeader setting">
            <div class="gLeft">
                <span class="txtLess">
                    <blank></blank>
                </span>
                <a href="#none" class="btnNormal" onclick="javascript:delete_choice('delete', '삭제할 게시물을 선택해 주세요.', 'P');"><span><em class="icoDel"></em> 삭제</span></a>
                <a href="#none" class="btnCtrl" onclick="chkMileageSupplyLayer();"><span>적립금 일괄 적용</span></a>
                <div class="mLayer" id="mileage_supply" style="display:none;left:166px;width:600px;position:absolute;">
                    <h2>적립금 일괄 적용</h2>
                    <div class="wrap">
                        <div class="mTitle">
                            <h3>적립금 일괄 적용</h3>
                        </div>
                        <div class="mBoard gSmall">
                            <table border="1" summary="">
                                <caption>적립금 일괄 적용</caption>
                                <colgroup>
                                    <col style="width:120px">
                                    <col style="width:auto">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">적용대상 <strong class="icoRequired">필수</strong></th>
                                        <td>
                                            <label class=" eSelected"><input type="checkbox" name="applyBulletin" id="applyBulletin" value="T" class="fChk" checked="checked"> 게시물 작성자</label>&nbsp;&nbsp;
                                            <label><input type="checkbox" name="applyComment" id="applyComment" value="T" class="fChk"> 댓글작성자</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">증감여부</th>
                                        <td>
                                            <select name="ePlusType" id="ePlusType" size="1" class="fSelect">
                                                <option value="1" selected="">(+)적립금 증액</option>
                                                <option value="2">(-)적립금 차감</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">적립금 <strong class="icoRequired">필수</strong>
                                        </th>
                                        <td><input type="text" name="mileage_money" id="eMileageMoney" class="fText" style="width:120px;"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">내용</th>
                                        <td><input type="text" name="reason" id="eReason" class="fText" style="width:95%;"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">회원 중복적용 <div class="cTip" code="BR.BO.BA.20"></div>
                                        </th>
                                        <td>
                                            <label class="gLabel"><input type="checkbox" name="duplicationFlag" id="eDuplicationFlag" class="fChk"> 적립금 중복 적용 허용</label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="footer">
                        <a href="#none" class="btnCtrl" onclick="setMileage()"><span>일괄 적용</span></a>
                        <a href="#none" class="btnNormal" onclick="$('#mileage_supply').hide();"><span>닫기</span></a>
                    </div>
                    <button type="button" class="btnClose" onclick="$('#mileage_supply').hide();">닫기</button>
                </div>

                <a href="#none" class="btnNormal eNoticeBulletinRegist"><span>공지 지정</span></a>
                <a href="#none" class="btnNormal eNoticeBulletinCancel"><span>공지 해제</span></a>
                <a href="#none" class="btnNormal eFixedBulletinRegist"><span>글고정 지정</span></a>
                <a href="#none" class="btnNormal eFixedBulletinCancel"><span>글고정 해제</span></a>
                <a href="#none" class="btnNormal" onclick="chkErrorValidition('before');" style="display: none;"><span>게시글 노출시간 설정</span></a>
            </div>
            <div class="gRight">
                <a href="#none" class="btnNormal" onclick="SpamMoveInit('move','스팸신고할 게시물을 선택해 주세요.')" style="display: none;"><span>스팸신고</span></a>
                <a href="#none" class="btnNormal" onclick="SpamMoveInit('cancel','스팸해제할 게시물을 선택해 주세요');" style="display: none;"><span>스팸해제</span></a>
            </div>
            <div class="gSetting">
                <div class="mOpen eClick" bindstatus="true">
                    <a href="#listSubject" class="btnSetting eOpenClick"><span>설정</span></a>
                    <div id="listSubject" class="open">
                        <strong>목록 표시 설정</strong>
                        <div class="wrap">
                            <ul class="default">
                                <li><label><input type="checkbox" name="COLUMN_mileage_date" class="fChk"> 적립금 지급일</label></li>
                                <li><label><input type="checkbox" name="COLUMN_product_name" class="fChk"> 상품명</label></li>
                                <li><label><input type="checkbox" name="COLUMN_order_date" class="fChk"> 주문일</label></li>
                                <li><label><input type="checkbox" name="COLUMN_refund_request_date" class="fChk"> 환불신청일</label></li>
                            </ul>
                        </div>
                        <div class="footer">
                            <a href="#none" id="eDisplayColumnSaveBtn" class="btnCtrl"><span>적용</span></a>
                            <a href="#none" class="btnNormal eClose"><span>닫기</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mBoard gScroll gCell typeList">
            <table border="1" summary="" class="eChkTr">
                <caption>전체 게시물 목록</caption>
                <colgroup>
                    <col class="chk">
                    <col style="width:70px;">
                    <col style="width:120px;">
                    <col class="COLUMN_product_name" style="width:200px; display:none;">
                    <col style="width:100px; display: none; ">
                    <col style="width:300px;">
                    <col style="width:120px;">
                    <col style="width:95px;">
                    <col style="width:95px;">
                    <col style="width:140px;">
                    <col style="width:100px;">
                    <col style="width:100px;">
                    <col class="date">
                    <col style="width:80px;">
                    <col style="width:110px;">
                    <col class="date COLUMN_order_date" style="display:none;">
                    <col class="date COLUMN_refund_request_date" style="display:none;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col"><input type="checkbox" class="allChk"></th>
                        <th scope="col">번호</th>
                        <th scope="col">분류</th>
                        <th class="COLUMN_product_name" style="display:none;" scope="col">상품명</th>
                        <th scope="col" style="display: none;">카테고리</th>
                        <th scope="col">제목</th>
                        <th scope="col">답변상태</th>
                        <th scope="col">미리보기</th>
                        <th scope="col">답변하기</th>
                        <th scope="col">작성자</th>
                        <th scope="col">메일/SMS/메모</th>
                        <th scope="col">신고 상태</th>
                        <th scope="col">작성일</th>
                        <th scope="col">조회수</th>
                        <th scope="col">적립금</th>
                        <th class="COLUMN_order_date" style="display:none;" scope="col">주문일</th>
                        <th class="COLUMN_refund_request_date" style="display:none;" scope="col">환불신청일</th>
                    </tr>
                </thead>
                <tbody class="center">
                    <tr>
                        <td>
                            <input type="checkbox" name="bbs_no[]" value="1" class="rowChk">
                            <input type="hidden" name="no[]" value="1">
                            <input type="hidden" id="iBoardNo_1" value="1">
                            <input type="hidden" id="iBoardGroup_1" value="1">
                            <input type="hidden" id="eIsDeleted_1" value="F">
                            <input type="hidden" id="iBoardGroup_1" value="1">
                            <input type="hidden" id="iNotice_1" value="F">
                            <input type="hidden" id="iFixed_1" value="F">
                        </td>
                        <!-- 번호 -->
                        <td>1</td>
                        <!-- 분류명 -->
                        <td>
                            <a href="javascript:open_board1('1','1');" class="txtLink">
                                공지사항
                            </a>
                        </td>
                        <!-- 상품명 -->
                        <td class="COLUMN_product_name" style="display:none;">
                            <div class="gGoods gMedium">

                                <p><a href="#none" class="txtLink"></a></p>
                            </div>
                        </td>

                        <!-- 카테고리 -->

                        <td style="display: none;"></td>
                        <!-- 제목 -->
                        <td class="left">


                            <a href="javascript:open_detail_view('1','1','1');" class="txtLink">
                                몰 오픈을 축하합니다.
                            </a>

                            <!-- 게시함여부 -->
                            <!-- 노출설정 -->

                        </td>
                        <!-- 답변상태 -->
                        <td id="reply_status_msg_1">-</td>
                        <!-- 미리보기 -->
                        <td>
                            <a href="#layerPreview" class="layerPreviewPopup btnNormal eLayerClick" data-board-no="1" data-no="1" data-board-group="1" data-save-btn="F" namelayer="layer_0" bindstatus="true"><span>미리보기</span></a>
                        </td>
                        <!-- 답변하기 -->
                        <td>
                            -
                        </td>
                        <!-- 작성자 -->
                        <td>
                            <input type="hidden" id="writer_type_1" value="">
                            EC Hosting


                            <br>
                            (비회원)
                        </td>
                        <!-- 메일 / SMS / 메모 -->
                        <td>
                        </td>
                        <!-- 신고 상태 -->
                        <td>
                            - </td>
                        <!-- 작성일 -->
                        <td>2022-06-01 10:03:09</td>
                        <!-- 조회 -->
                        <td class="right">0</td>
                        <!-- 적립금 -->
                        <td>
                            <div id="mileage_icon_1"></div>
                            <div class="COLUMN_mileage_date" style="display:none;"></div>
                        </td>

                        <!-- 주문일 -->

                        <td class="COLUMN_order_date" style="display:none;"></td>

                        <!-- 환불신청일 -->

                        <td class="COLUMN_refund_request_date" style="display:none;"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="mCtrl typeFooter">
            <div class="gLeft">
                <span class="txtLess">
                    <blank></blank>
                </span>
                <a href="#none" class="btnNormal" onclick="javascript:delete_choice('delete','삭제할 게시물을 선택해 주세요.', 'P');"><span><em class="icoDel"></em> 삭제</span></a>
                <a href="#none" class="btnCtrl" onclick="chkMileageSupplyLayer();"><span>적립금 일괄 적용</span></a>
                <a href="#none" class="btnNormal eNoticeBulletinRegist"><span>공지 지정</span></a>
                <a href="#none" class="btnNormal eNoticeBulletinCancel"><span>공지 해제</span></a>
                <a href="#none" class="btnNormal eFixedBulletinRegist"><span>글고정 지정</span></a>
                <a href="#none" class="btnNormal eFixedBulletinCancel"><span>글고정 해제</span></a>
                <a href="#none" class="btnNormal" onclick="chkErrorValidition('before');" style="display: none;"><span>게시글 노출시간 설정</span></a>
            </div>
            <div class="gRight">
                <a href="#none" class="btnNormal" onclick="SpamMoveInit('move','스팸신고할 게시물을 선택해 주세요.')" style="display: none;"><span>스팸신고</span></a>
                <a href="#none" class="btnNormal" onclick="SpamMoveInit('cancel','스팸해제할 게시물을 선택해 주세요');" style="display: none;"><span>스팸해제</span></a>
            </div>
        </div>
        <div class="mPaginate">
            <a href="/admin/php/shop1/b/board_admin_bulletin_l.php?&amp;sel_board_no=0&amp;sel_spam_view=&amp;list_limit=10&amp;navi_hide=&amp;search=&amp;search_key=&amp;start_date=2022-05-11&amp;end_date=2022-06-10&amp;period=30&amp;is_reply=&amp;is_comment=&amp;real_filename=&amp;mem_type=&amp;search_channel=&amp;report_status=&amp;searchSort=&amp;no_member_article=&amp;board_category=&amp;page=1" class="first"><span>첫 페이지</span></a> <a href="#none" class="prev"><span>이전 10 페이지</span></a>
            <ol>
                <li><strong title="현재페이지">1</strong></li>
            </ol><a href="#none" class="next"><span>다음 10 페이지</span></a> <a href="/admin/php/shop1/b/board_admin_bulletin_l.php?&amp;sel_board_no=0&amp;sel_spam_view=&amp;list_limit=10&amp;navi_hide=&amp;search=&amp;search_key=&amp;start_date=2022-05-11&amp;end_date=2022-06-10&amp;period=30&amp;is_reply=&amp;is_comment=&amp;real_filename=&amp;mem_type=&amp;search_channel=&amp;report_status=&amp;searchSort=&amp;no_member_article=&amp;board_category=&amp;page=1" class="last"><span>마지막 페이지</span></a>
        </div>
    </div>
</body>

</html>