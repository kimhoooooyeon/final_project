<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>



<body>

    <div class="section" id="QA_list2">
        <div class="mTitle" style="display: none;">
            <h2>상품 목록</h2>
            <div class="cTip" code="PR.SM.PL.60"></div>
        </div>
        <!--  검색된 결과 몇개인지 출력 -->
        <div class="mState">
            <div class="gLeft">
                <p class="total"></p>
            </div>
        </div>
        
        <div class="mCtrl typeHeader setting">
            <!-- [Allinone mode] 유틸 버튼(진열함/판매함/복사/삭제/분류수정 등등) -->

            <!-- [Influencer mode]인플루언서 유틸 버튼 -->
            <!--  테이블내 선택란 -->
            <div class="gLeft">
                <span class="txtLess">
                    <blank></blank>
                </span>
                <!-- 상품삭제 -->
                <!--  <a href="/shop/menu/delete" class="btnNormal _manage_delete">상품삭제</a-->
                <button name="deleteBtn">상품삭제</button>
                <!--  상품수정 -->
                <button name="updateBtn">상품수정</button>
                <!-- <a href="#" class="btnNormal _manage_copy">상품수정</a-->

                <span class="bar"></span>
                <div class="mOpen eClick" bindstatus="true"></div>
                <div class="mOpen eClick" bindstatus="true"></div>
                <span class="bar"></span>
                <!-- 이부분 jquery문 적용이 되는거 같아서 안날렸음 추후 확인후 날릴거면 날리기 -->
                <!-- 상품분류 변경 -->
                
            </div>

            <div class="gRight">
                <a href="/shop/menu/register" class="btnCtrl">상품등록</a>
            </div>

            
        </div>
        <!--  검색 결과 보여줌 -->
        <div class="mBoard typeList gScroll gCell">
            <!--항목 추가에따른 th, td 추가시 col도 같이 추가해주세요.-->
            <table id="menuList" border="1" summary="" class="eChkColor">
                <caption>상품 목록</caption>
                <colgroup>
                    <!--  테이블 사이즈 설정 -->
                    <col class="chk">
                    <!-- 기본 -->
                    <col style="width:250px">
                    <col style="width:100px">
                    <col style="width:80px">
                    <col style="width:80px">
                    <col style="width:200px">
                    <col style="width:80px">
                    <col style="width:245px">
                </colgroup>
                <!--  테이블 목록 -->
                <thead id="product-list-header">
                    <tr>
                        <!-- 체크박스 -->
                        <th scope="col">
                        	<input type="checkbox" class="allChk" name="allChk">
                        </th>
                        <!-- 기본 -->
                        <th scope="col" column-name="product_name">
                            상품명 </th>
                        <th scope="col" column-name="product_price">
                            판매가 </th>
                        <th scope="col" column-name="display_status">
                            판매여부 </th>
                        <th scope="col" column-name="selling_status">
                            추천여부 </th>
                        <th scope="col" column-name="category">
                            상품분류 </th>
                        <th scope="col" column-name="ins_date">
                            할인율 </th>
                        <th scope="col" column-name="order_address">
                            메뉴설명
                        </th>
                    </tr>
                </thead>
                <c:if test="${menulist.isEmpty() == false }">
                <c:forEach var="menu" items="${menulist }"> 
	                <!-- 상품 목록출력되는 곳, db에서 불러오는값 확인하기 -->
	                <tbody class="center" id="product-list">
	                    <tr class="ec-product-manage-list" data-product-type="true" data-product-num="10" data-is-set-product="F">
                        <td>
                        	<input type="checkbox" class="rowChk _product_no" name="check" is_display="T" is_selling="T" is_funding_product="F" is_set_product="F">
                        	<input type="hidden" name="menu_coder" value="${menu.menu_coder }">
                        </td>
                        <td>
                            <div class="gGoods gMedium">
                                <div class="mOpen eOver" bindstatus="true">
                                    <span class="frame eOpenOver" find="gGoods">
                                    	<img src="${contextPath }/download?imageFileName=${menu.menu_filename}" width="44" height="44" alt="">
                                    </span>
                                    <div class="open" style="top:20%;left:20%;width:145px;">
                                        <div class="wrap">
                                            <ul class="default">
                                                <li><a href="#none" class="eProductDetail" product_no="10">상품 상세보기</a></li>
                                                <li><a href="#none" class="eProductDisplayPopup" popup="T" url="http://ydh312.cafe24.com/product/detail.html?product_no=10" data-product-no="10">쇼핑몰화면 진열보기</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <p>
                                    <input type="text" name="menu_price" value="${menu.menu_name }"style="width:40%;border:0;">
                                	<!--<a href="#" target="_blank" title="새창 열림" class="txtLink eProductDetail ec-product-list-productname" product_no="10">${menu.menu_name }</a>-->
                                </p>

                            </div>
                        </td>
                        <td class="right">
                        	<input type="text" name="menu_price" value="${menu.menu_price }"style="width:90%;border:0;">원 </td>
                        <td>
	                        <c:choose>
	                        	<c:when test="${menu.saling_check == 0 }">
	                        		<input type="text" value="${menu.saling_check}"style="width:100%;border:0;">
	                        	</c:when>
	                        	<c:otherwise>
	                        		<input type="text" value="${menu.saling_check}"style="width:100%;border:0;"></c:otherwise>
	                        </c:choose>
                        </td>
                        <td>
                         	 <c:choose>
	                        	<c:when test="${menu.recommendation == 0 }"><input type="text" value="${menu.recommendation}"style="width:100%;border:0;"></c:when>
	                        	<c:otherwise><input type="text" value="${menu.recommendation}"style="width:100%;border:0;"></c:otherwise>
                        	</c:choose>
                        </td>
                        <td class="left prdCate">
                        <!-- 이부분 수정하기 -->
                            <div class="mOpenCategory" align="center">
                            	<input type="text" value="${menu.category_num }"style="width:100%;border:0;">
                            </div>
                        </td>
                        <td><input type="text" value="${menu.sale_rate }" style="width:100%;border:0;">%</td>
                        <td>
                            <input type="text" class="fText ec-product-list-orderaddress " style="width:100%;border:0;" data-product-no="10" value="${menu.menu_explanation }">
                        </td>

                    </tr>
                </tbody>
                </c:forEach>
                </c:if>
            </table>
        </div>
        <!-- 하단링크 -->
        <div class="mCtrl typeFooter"></div>
        <!--  페이지출력되는곳  -->
        <div class="mPaginate">
            <ol>
                <li><strong title="현재페이지">1</strong></li>
            </ol>
        </div>

</body>

</html>