<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="footer" ng-show="is_yogiyo && !session_storage.oauth_next">
	<div class="footer-menu">
		<ul>
			<li class="mb privacy-txt" ng-show="!is_mobile_device"><a href="#/privacy/">개인정보처리방침</a></li>
			<li class="mb"><a href="https://www.wesang.com/" rel="noopener noreferrer" target="_blank">회사소개</a></li>
			<li><a href="/shop/home" target="_blank">요기요사장님</a></li>
			<li class="mb lst"><a href="https://owner.yogiyo.co.kr/owner/join/request/">입점문의</a></li>
			<li class="mb notice"><a href="#/notice/">공지사항</a></li>
			<li class="sns-link">
				<a href="https://www.facebook.com/Yogiyokorea/" class="facebook" rel="noopener noreferrer" target="_blank">
					<span><img src="/resources/images/facebook1.png"></span>페이스북
				</a>
				<a href="https://blog.naver.com/rgpkorea" class="blog" rel="noopener noreferrer" target="_blank">
				<span><img src="/resources/images/blog1.png"></span>블로그</a>
			</li>
		</ul>
	</div> 
	<div class="company-wrap">
	<div class="company-logo">
		<a href="" ng-click="click_home()">저기요</a>
	</div>
	
	<div class="company-info"><p><strong></strong><br>서울시 동작구 장승배기로 171, 3층<span class="bar">|</span>사업자등록번호:123-45-67890 통신판매업신고:제 2022-서울서초-0622호<span class="bar">|</span>개인정보담당자 : <a href="mailto:privacy@yogiyo.co.kr">taeminseo@naver.com.kr<span class="bar">|</span>고객만족센터 : <span ng-show="is_mobile_width" class="pnum">1234-5678(무료) 24시간, 무한휴무</span> </p>
		<div class="footer-terms" ng-show='is_mobile_device'>
			<a href="#/policy/">이용약관</a>
			<span class="bar">|</span>
			<a href="#/privacy/"><strong>개인정보처리방침</strong></a>
			<span class="bar">|</span>
			<a href="#/point_policy/">회원등급정책</a>
			<span class="bar">|</span>
			<a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2118868802" rel="noopener noreferrer" target="_blank">사업자정보확인</a>
		</div>
	</div>
</div>

<div class="service-info">
	<div class="bpg">
		<a href="#/trust/"><span class="img"><img src="/resources/images/요기요안심센터.png"></span><span class="text">저기요<br />안심센터</span></a>
	</div>
	<div class="cleanreview">
		<a href="#/cleanreview/">
			<span class="img"><img src="/resources/images/요기요클린리뷰.png"></span>
			<span class="text">저기요 100%<br />클린리뷰</span>
		</a>
	</div>
	<div class="csc">
		<em>고객만족센터</em> <strong>1234-5678</strong><em>(무료)</em> <span>24시간, 무한휴무</span>
	</div>
</div>
<div class="guide">
	<p>주식회사 2조는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 주식회사 위대한상상은 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright 2JO. All Rights Reserved.</p>
</div>
</div>