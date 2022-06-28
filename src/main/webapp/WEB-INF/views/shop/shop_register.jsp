<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="ko" slick-uniqueid="3">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1000">
    <meta name="description" content="요기요 사장님 전용 사이트, 주문확인, 업소관리, 알뜰쇼핑, 청구서확인 등 사장님을 위한 다양한 정보 제공.">
    <meta name="naver-site-verification" content="4cdda9d96d7ffd83e486b2bf7d2d63e5ea479f3b">
    <meta name="google-site-verification" content="sjuYAwgH5hN_We8OTVoWve7cwBlU5yvn6sADTbxCmsU">
    <script type="text/javascript" src="https://bam.nr-data.net/1/060998d475?a=2104228&amp;v=1216.487a282&amp;to=NgQDY0YEWhICVEFQWg9OJ0JaBkAIDFkaXVoWAA9DGgpDDwZFRhdDCAQWRBoPWwgNDUdcUggSFUVVEV0ODQ%3D%3D&amp;rst=164&amp;ck=1&amp;ref=https://owner.yogiyo.co.kr/owner/join/request/&amp;ap=45&amp;be=96&amp;fe=162&amp;dc=147&amp;af=err,xhr,stn,ins,spa&amp;perf=%7B%22timing%22:%7B%22of%22:1654056663114,%22n%22:0,%22u%22:91,%22ue%22:91,%22f%22:3,%22dn%22:3,%22dne%22:3,%22c%22:3,%22ce%22:3,%22rq%22:5,%22rp%22:87,%22rpe%22:95,%22dl%22:91,%22di%22:147,%22ds%22:147,%22de%22:150,%22dc%22:162,%22l%22:162,%22le%22:163%7D,%22navigation%22:%7B%7D%7D&amp;fp=121&amp;fcp=121&amp;jsonp=NREUM.setToken"></script>
    <script src="https://js-agent.newrelic.com/nr-spa-1216.min.js"></script>
    <script async="" src="//www.google-analytics.com/analytics.js"></script>
    
    <title>요기요 사장님 회원가입</title>
    <!-- 다음주소를 위한 코드 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		function daumPost(){
			
		    new daum.Postcode({
		        oncomplete: function(data) {
		   			var addr = "";
		   			// R == 도로명 주소, J == 지번 주소
		   			if(data.userSelectedType == "R")
		   				addr = data.roadAddress;
		   			else{
		   				addr = data.jibunAddress;
		   			}
		   			document.getElementById('shop_zipCode').value= data.zonecode; // 우편번호
		   			document.getElementById('shop_address').value = addr;
		   			document.getElementById('shop_address_detail').focus();
		        }
		    }).open();
		    
		}
	</script>
    <link rel="shortcut icon" href="/resources/images/shop/shopfavicon.ico">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/shop/ygyshop_ios_57x57.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/shop/ygyshop_ios_72x72.png" sizes="72x72">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/shop/ygyshop_ios_114x114.png" sizes="114x114">
    <link rel="apple-touch-icon-precomposed" href="/resources/images/shop/ygyshop_ios_144x144.png" sizes="144x144">
    <link rel="stylesheet" type="text/css" href="/resources/css/shop/owners_new.css?v=e40da0e">
    
    
    <script type="text/javascript" src="/resources/shop/js/jquery.js"></script>
    <script type="text/javascript" src="/resources/shop/js/join.js"></script>
    
    <script type="text/javascript" src="/resources/js/shop/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/resources/js/shop/bootstrap-2.3.2.min.js"></script>
    <script type="text/javascript" src="/resources/js/shop/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/resources/js/shop/google_analytics.js"></script>
	
    <!-- Google GA -->
    <!-- 구글 휴대폰전송을 위한 api -->
    <script type="text/javascript">
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-47867637-1', {'cookieDomain': 'yogiyo.co.kr'});
        
        ga('send', 'pageview');
        

        function redirectLogin(next_url) {
            
            alert('로그인 후 이용하실 수 있습니다.');
            window.location.href = '/owner/login/?next_url=' + next_url;
            
        }

        function redirectCeoLogin(next_url) {
            
                openSignUpOneIdPage();
            
        }

        function openCeoBasicInfoMenu() {
            
            openSignUpOneIdPage();
            
        }

        $(document).ready(function() {
            // sms
            var phone = {};

            function inputChange(evt) {
                var elem = evt.target;
                var name = elem.name;
                if(elem.type == 'text') {
                    phone[name] = !(elem.value.length < elem.maxLength);
                }
                if (elem.name == 'num2') {
                    phone[name] = !(elem.value.length < elem.maxLength-1);
                }
                $('#sendbtn').attr('disabled', !(phone.num1 && phone.num2 && phone.num3));
            }

            $('.sms input[type="text"]').on('keypress keyup', function(evt) {
                if (evt.type == 'keypress' && !/^\d*$/.test(evt.key)){
                    evt.preventDefault();
                    return;
                }
                inputChange(evt);
            });
			
            $('#sendbtn').click(function() {
                if (!$('#chk').prop('checked')) {
                    alert('SMS 발송을 위한 휴대폰번호 수집에 동의해주세요.');
                    return;
                }

                var num1 = $('#owner-sms-num1').val();
                var num2 = $('#owner-sms-num2').val();
                var num3 = $('#owner-sms-num3').val();

                if (!/010|011|016|017|019/.test(num1) || !/\d{3,4}/.test(num2) || !/\d{4}/.test(num3)) {
                    alert('입력하신 전화번호를 다시 한번 확인해주시기 바랍니다.');
                    return;
                }

                var phone = num1 + num2 + num3;
                $.ajax({
                    method: 'post',
                    url: '/owner/ajax/send-sms-owner-app-download/',
                    data: {'phone': phone}
                }).done(function (callback) {
                    if (callback.success) {
                        alert('전송되었습니다.');
                    } else {
                        alert(callback.error_message);
                    }
                }).fail(function () {
                    alert('요청에 실패했습니다. 다시 한번 시도해 주시기 바랍니다.');
                });
            });
        });
    </script>
</head>

<body>
<!-- 로그인관련 js -->
<script>
	// 로그인 관련 js
    function openSignUpOneIdPage() {
        window.open("/shop/home");
    }
	// 로그아웃 관련  js
    function ownerLogout() {
        if (confirm("로그아웃하시겠습니까?")) {
            
            var redirectURL = "/shop/logout";
            
            window.location.href = redirectURL;
        }
    }
</script>
<c:if test="${not empty msg }" >
	<script>
		alert("${msg}");
	</script>
</c:if>


<%@ include file="common/shop_top.jsp" %>
<div class="own-container clearfix">
<!--  헤더 불러오고 -->
	<div class="side-bar">
	  <ul>
	  	<li><a href="/shop/register" class="active">온라인 입점신청</a></li>
	    <li><a href="/shop/introduce" class="list-group-item ">저기요 소개</a></li>
	    <li><a href="/shop/product" class="">입점상품 소개</a></li>
	    <li><a href="/shop/process" class="">입점절차</a></li>
	  </ul>
	</div>
	<!-- 칸 여러개 있는부분 합치는거 자바스크립트로 구현해야함 -->
    <div class="own-content j4">

        <div class="tit-area">
            <h2>상점운영자가입</h2>
            <p>운영중인 가게를 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(1661-5270)로 연락주세요</p>
        </div>

		<!-- 상점등록 폼태그 시작 -->
        <!-- form method="POST" name="join-form" enctype="multipart/form-data" novalidate="novalidate"-->
        <form action="/shop/register" method="post" id="join-form" name="join-form" enctype="multipart/form-data">
        <div class="join-form">
        	
            <div class="tbl-caption frst">가입 정보 <span class="stxt"><em>*</em>&nbsp;필수 입력 정보</span></div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
            
                <tbody>
               
                <tr>
                    <th>ID <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="shop_id" >
                        <button type="button" id="btn-idCheck" class="btn-sm" >아이디확인</button>
                        <span class="alert" name="id_vericode_message" style="display: none;"></span>
                    
                    </td>
                </tr>
                
                <tr name="confirm_vericode_row">
                    <th>비밀번호<em>*</em></th>
                    <td>
                        <input type="password" class="w-l" name="shop_pw">
                        <span class="alert" name="pw_vericode_message" style="display: none;"></span>
                    </td>
                </tr>
                
                
                <tr name="confirm_vericode_row">
                    <th>비밀번호 확인<em>*</em></th>
                    <td>
                        <input type="password" class="w-l" name="shop_pwCheck">
                        <button type="button" id="btn-pwCheck" class="btn-sm">비밀번호확인</button>
                        <span class="alert" name="pw_vericode_message" style="display: none;"></span>
                    </td>
                </tr>
            </tbody></table>
        
            <div class="tbl-caption frst">사업자 정보 <span class="stxt"><em>*</em>&nbsp;필수 입력 정보</span></div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tbody><tr>
                    <th>사업자 번호 <em>*</em></th>
                    <td>
                    <!-- 사업자 번호입력란
                    	company_number = cn1+cn2+cn3 
                     -->
                        <input type="text" class="w-l" name="owner_register_number" id="company_number" maxlength="11">
                        <!--input type="text" class="w-s" name="cn1" numberonly="true" maxlength="3"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="cn2" numberonly="true" maxlength="2"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="cn3" numberonly="true" maxlength="5"-->
                        <button type="button"  id="btn-ornCheck" name="check_duplicate_button" class="btn-sm" data-confirm="0">조회</button>
                        <!-- 조회 눌럿을경우 나오는 메세지 출력란 -->
                        <span class="alert" name="orn-message" style="display: none;"></span>
                    </td>
                </tr>
               
                <tr>
                    <th>사업주명 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="owner_name" maxlength="10">
                        <span class="alert" name="on-message" style="display: none;"></span>
                    </td>
                </tr>
                <tr name="email_row">
                    <th>이메일 입력 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="owner_email" numberonly="true">
                        <span class="alert" name="email_message" style="display: none;"></span>
                    </td>
                </tr>
                <tr>
                    <th>사업자 휴대폰 번호 <em>*</em></th>
                    <td>
                        <input type="text" name="owner_phone" class="w-l">
                        <!-- >div class="select-style">
                            <select name="mtel1" class="w-s">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="0130">0130</option>
                             </select>
                         </div -->
                          <!-- span class="bar">-</span>
                        <input type="text" class="w-s" name="mtel2" numberonly="true"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="mtel3" numberonly="true"-->
      <!--                   <button type="button" id="btn-sendsms" class="btn-sm" name="send_veri_code_button">인증번호 전송</button>
                        <p class="info-txt">인증번호를 받지 못했다면 [인증번호 재전송] 버튼을 클릭해 주세요.</p>
                        <span class="alert" name="vericode_message" style="display: none;"></span>
                    </td>
                </tr>
                여기는 나중에 추가하기
                <tr name="confirm_vericode_row">
                    <th>인증번호 입력 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="veri_code" numberonly="true">
                        <button type="button" id="btn-smsConfirm" class="btn-sm" name="comfirm_veri_code_button" data-confirm="0">확인</button>
                        <span class="alert" name="confirm_vericode_message" style="display: none;"></span>
                    </td>
                </tr> -->
                
            </tbody></table>

            <div class="tbl-caption">가게 정보</div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tbody><tr>
                    <th>가게 이름 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" maxlength="20" name="shop_name">
                    </td>
                </tr>
                <tr>
                    <th>가게 전화번호</th>
                    <td>
                    <!-- shop_tel = tel1+tel2+tel3  -->
                        <input type="text" name="shop_tel" class="w-l" >
                        <!-- div class="select-style">
                        <  select name="tel1" id="tel1" class="w-s">
                            <option value="02">02</option>
                            <option value="031">031</option>
                            <option value="032">032</option>
                            <option value="033">033</option>
                            <option value="041">041</option>
                            <option value="042">042</option>
                            <option value="043">043</option>
                            <option value="044">044</option>
                            <option value="051">051</option>
                            <option value="052">052</option>
                            <option value="053">053</option>
                            <option value="054">054</option>
                            <option value="055">055</option>
                            <option value="061">061</option>
                            <option value="062">062</option>
                            <option value="063">063</option>
                            <option value="064">064</option>
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                            <option value="0130">0130</option>
                            <option value="070">070</option>
                            <option value="080">080</option>
                            <option value="0507">0507</option>
                            <option value="0506">0506</option>
                            <option value="0505">0505</option>
                            <option value="0504">0504</option>
                            <option value="0503">0503</option>
                            <option value="0502">0502</option>
                            <option value="0303">0303</option>
                         </select>
                         </div> <span class="bar">-</span>
                        <input type="text" class="w-s" name="tel2" numberonly="true"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="tel3" numberonly="true"-->
                    </td>
                </tr>
                <tr>
                	<!-- 이걸 따로 저장할지 고민하기 -->
                    <th>가게 주소 <em>*</em></th>
                    <td name="selected_address">
                        <input type="hidden" id="shop_zipCode" name="shop_zipcode">
                        <input type="hidden" id="shop_street" name="shop_street">
                        <input type="text" class="w-xl" placeholder="동,면,읍" id="shop_address" name="shop_address" readonly="readonly">
                        <!-- <button type="button" class="btn-sm" data-toggle="modal" data-target="#myModal">주소검색</button-->
                        <button type="button" class="btn-sm" onclick="daumPost()">주소검색</button>
                        <p class="sb-addr">
                        	<input type="text" class="w-xl" placeholder="상세주소" id="shop_address_detail" name="shop_address_detail">
                        	<span class="alert" name="sa-message" style="display: none;"></span>
                        </p>
                    </td>
                </tr>
                <tr>
                <!-- 이부분은 db에서 카테고리 속성값 불러와서 로딩하기 -->
                    <th>업종 카테고리 <em>*</em></th>
                    <td>
                        <div class="select-style select-style1">
                        <select name="category_num">
                            <option value="0">선택해주세요</option>
                            <option value="1">치킨</option>
                            <option value="2">피자/양식</option>
                            <option value="3">중국집</option>
                            <option value="4">한식</option>
                            <option value="5">일식/돈까스</option>
                            <option value="6">족발/보쌈</option>
                            <option value="7">분식</option>
                            <option value="10">기타</option>
                            
                        </select>
                        <span class="alert" name="c-message" style="display: none;"></span>
                        
                        </div>
                        <p class="info-txt">야식카테고리는 회사 정책상 영업시간에 따라 노출 되는 카테고리로 단독 설정이 불가합니다.</p>
                    </td>
                </tr>
                <tr>
                <!-- 가게 로고사용관련 -->
                    <th>가게 로고 <em>*</em></th>
                    <td>
                        <div class="select-style select-style1">
                        업로드파일: <input type="file" name="shopLogoImg">
                        <span class="alert" name="logo-message" style="display: none;"></span>
                        
                        </div>
                    </td>
                </tr>
            </tbody>
           </table>

            
            <p class="chk-item">
                <label>
                    <input type="checkbox" name="terms" > <strong>개인정보 수집 및 이용에 동의합니다.(필수)</strong>
                </label>
            </p>
            <div class="btn-set1">
            <!-- 이부분 나중에 수정하기 -->
            <!-- 테스트부분 -->
                <button type="button" class="btn-type1" name="save_button">입점 신청 완료</button>
            </div>
        </div>
        </form>
    </div>
</div>

<div id="loader" class="loader" style="display: none"></div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel">주소 검색</h4>
      </div>
      <div class="modal-body addr-srch-box">
        <div>
            <input type="text" name="street_name" placeholder="동,면,읍">
                <button type="submit" class="btn-sm" name="address_search_button">검색</button>
        </div>
        <div class="addr-list">
            <table name="search_result" style="display: none">
                <colgroup>
                    <col class="c1">
                    <col class="c2">
                </colgroup>
            </table>

            <table name="no_result">
                <tbody><tr>
                    <td colspan="2" class="no-result" name="no-result">검색된 결과가 없습니다.</td>
                </tr>
            </tbody></table>
        </div>
      </div>
    </div>
  </div>
</div>






<link rel="stylesheet" type="text/css" href="/resources/css/shop/footer.css?v=e40da0e">

<script>
    function handleOnClickCollapseHeader (event) {
        var parent = event.currentTarget.parentElement;
        var isOpened = parent.className.includes('opened');

        if (isOpened) {
            parent.className = parent.className.replace('opened', '').trim();
        } else {
            parent.className = [parent.className, 'opened'].join(' ');
        }
    }

    function handleOnClickServiceIntroduceButton (event) {
        var list = document.querySelector('.footer-container .footer-row .service-download-container .service-download-list');
        var isOpened = list.className.includes('opened');

        if (isOpened) {
            list.className = list.className.replace('opened', '').trim();
        } else {
            list.className = [list.className, 'opened'].join(' ');
        }
    }

    function handleOnLoad() {
        var headers = document.querySelectorAll('.footer-container .collapse .header');

        headers.forEach(function(element) {
            element.addEventListener('click', handleOnClickCollapseHeader);
        });

        var serviceDownloadButton = document.querySelector('.footer-container .footer-row .service-download-button');
        serviceDownloadButton.addEventListener('click', handleOnClickServiceIntroduceButton);
    }

    (function () {
        window.addEventListener('load', handleOnLoad);
    })();
</script>

<%@ include file="common/shop_footer.jsp" %>
<!--div class="footer-container">
    <div class="footer-row">
        <div class="terms">
            <a target="_blank" href="/media/static/terms/terms.html" class="term">서비스 이용약관</a>
            <div class="vertical"></div>
            <a target="_blank" href="/media/static/terms/vms/site_usage_agreement.html" class="term">사이트 이용약관</a>
            <div class="vertical"></div>
            <a target="_blank" href="/owner/privacy/" class="term">
                <strong>개인정보 처리방침</strong>
            </a>
            <div class="vertical"></div>
            <a target="_blank" href="/media/static/terms/e/terms_191209.html" class="term">전자금융거래 이용약관</a>
        </div>
        <div class="service-download-container">
            <button class="service-download-button">서비스 소개 다운로드</button>
            <ul class="service-download-list">
                <li class="service-download-item">
                    <a href="https://rev-static.yogiyo.co.kr/owners/YGY_INFO_(VD)OL.pdf" target="_blank">요기요 서비스 소개 다운로드</a>
                </li>
                <li class="service-download-item">
                    <a href="https://rev-static.yogiyo.co.kr/owners/YGY_INFO_(OD)OL.pdf" target="_blank">요기요 익스프레스 서비스 소개 다운로드</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="collapse">
        <div class="header">
            <span class="title">주식회사 위대한상상
                <svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M4.75 9.852a.67.67 0 0 1-.951-.942l3.49-3.526a1 1 0 0 1 1.422 0L12.2 8.91a.67.67 0 0 1-.951.942l-2.895-2.92a.5.5 0 0 0-.71 0L4.75 9.852Z" fill="currentColor"></path></svg>
            </span>
        </div>
        <div class="body">
            <div class="company-info-container">
                <div class="cell">
                    <span class="label">대표이사</span>
                    <span class="value">서성원</span>
                </div>
                <div class="vertical"></div>
                <div class="cell">
                    <span class="label">사업자등록번호</span>
                    <span class="value">211-88-68802</span>
                    <a target="_blank" href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=2118868802" class="extra-button">사업자정보확인</a>
                </div>
                <div class="vertical"></div>
                <div class="cell">
                    <span class="label">통신판매업신고</span>
                    <span class="value">제 2018-서울서초-2635</span>
                </div>
            </div>
            <div class="company-info-container">
                <div class="cell">
                    <span class="label">주소</span>
                    <span class="value">서울시 서초구 서초대로38길 12 마제스타시티 타워2 17층</span>
                </div>
                <div class="vertical"></div>
                <div class="cell">
                    <span class="label">개인정보보호책임자</span>
                    <span class="value">최인호(privacy@yogiyo.co.kr)</span>
                </div>
            </div>
            <div class="company-info-container">
                <div class="cell">
                    <span class="label">제휴문의</span>
                    <span class="value">partnership@yogiyo.co.kr</span>
                </div>
                <div class="vertical"></div>
                <div class="cell">
                    <span class="label">고객만족센터</span>
                    <span class="value">support@yogiyo.co.kr</span>
                </div>
                <div class="vertical"></div>
                <div class="cell">
                    <span class="label">전화</span>
                    <span class="value">1661-5270(유료) 24시간, 연중무휴</span>
                </div>
            </div>
        </div>
    </div>
</div-->

<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script> 
<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_3972ba30e795";
	if (!_nasa) var _nasa={};
	if(window.wcs){
	    wcs.inflow();
	    wcs_do(_nasa);
	}	
</script>



<div class="modal fade popup-pwd-notice" id="modal-pwd-notice">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">비밀번호 변경 안내</h3>
    </div>
    <div class="modal-body">
        고객님의 소중한 정보를 보호하기 위해 <strong>3개월 주기로 비밀번호 변경</strong>을 안내해 드리고 있습니다.<br>
        불편하시더라도 주기적으로 비밀번호를 변경하여 사용해 주시길 부탁드립니다.
    </div>
    <div class="pop-btns">
        <a href="#" data-dismiss="modal" class="btn btn1">다음에 변경하기</a>
        <a href="#" onclick="redirectLogin('/owner/password_change/')" data-dismiss="modal" class="btn btn2">비밀번호 변경하기</a>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        var regexS = "[\\?&]login=([^&#]*)";
        var regex = new RegExp( regexS );
        var results = regex.exec(window.location.href);
        if (results) {
            $('.popup-pwd-notice').modal('show');
        }
    });
</script>


<script>
$(document).ready(function(){
  var fileTarget = $('.filebox .upload-hidden');

  fileTarget.on('change', function(){
    if(window.FileReader){
      var filename = $(this)[0].files[0].name;
    }
    else {
      var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
    }
    $(this).siblings('.upload-name').val(filename);
  });
});
</script>

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","queueTime":0,"licenseKey":"060998d475","agent":"","transactionName":"NgQDY0YEWhICVEFQWg9OJ0JaBkAIDFkaXVoWAA9DGgpDDwZFRhdDCAQWRBoPWwgNDUdcUggSFUVVEV0ODQ==","applicationID":"2104228","errorBeacon":"bam.nr-data.net","applicationTime":45}</script>


</body></html>