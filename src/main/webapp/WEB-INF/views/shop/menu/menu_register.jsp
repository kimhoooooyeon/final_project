<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div class="mToggleBar eToggle selected ec-product-register-toggle" bindstatus="true">
        <h2>기본 정보</h2>
        <div class="ctrl">
            <span><button type="button"><em>열기</em></button></span>
        </div>
    </div>


    <div class="toggleArea" cssview="on" style="display: block;">
        <div class="mBoard typeWrite">
            <table border="1" summary="">
                <caption>상품 기본 정보</caption>
                <colgroup>
                    <col style="width:190px;">
                    <col style="width:308px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">메뉴명 <strong class="icoRequired">필수</strong></th>
                        <td colspan="2">
                            <div class="overlapTip ec-product-auto-translate">
                                <span class="mFormRequired">
                                	<input type="text" name="menu_name" id="product_name" placeholder="" class="fText eHasModifyProductAuth eMarketChecker" style="width:500px;" fw-filter="isFill" value="" maxcount="250">
                                <span class="requiredMsg gRightArrow">입력해주세요.</span></span>
                                
                                <!-- jquery문으로 바꾸는 부분 -->
                                <div class="tip" style="display:none;">
                                    <span class="icoReference">참고</span>
                                    입력하신 상품명과 동일한 상품명이 있습니다.
                                    <button type="button" class="close eClose" id="ec-product-register-basic-duplicate">닫기</button>
                                    <span class="edge"></span>
                                </div>

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th scope="row">
                            <!-- 판매가 -->
                            판매가격
                            <strong class="icoRequired">필수</strong>
                        </th>
                        <td colspan="2">
                            <span class="mFormRequired">
                                <input type="text" class="fText right ePrdPrice eHasModifyProductAuth eMarketChecker ec-product-register-form-basic-price" name="menu_price" style="width:150px;" value="" fw-label="판매가" fw-filter="isFill&amp;isNumber[3]" required="required" data-validate="price.length|14|T|T" data-wrapped="true">
                                <span class="requiredMsg gRightArrow">입력해주세요.</span>
                            </span>
                            원
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">상품카테고리</th>
                        <td colspan="2">
                        	<c:if test="${categorylist.isEmpty() == false }">
                            <select class="fSelect" name="category_num" style="width:150px;">
	                            <c:forEach var="category" items="${categorylist }">
		                            <option value="${category.category_num }">${category.category_name }</option>
                            	</c:forEach>
                            </select>
                            </c:if>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">상품설명</th>
                        <td colspan="2">
                            <textarea rows="3" cols="110" class="fTextarea" name="menu_explanation" style="width:100%;"></textarea>
                            <ul class="txtInfo">
                                <li>상품의 간단한 추가 정보를 입력할 수 있습니다.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">할인율</th>
                        <td colspan="2">
                            <span class="mFormRequired">
                                <input type="text" class="fText right ePrdPrice eHasModifyProductAuth eMarketChecker ec-product-register-form-basic-price" name="sale_rate" style="width:150px;" value="">
                            </span>
                            %
                        </td>
                    </tr>


                    <tr>
                        <th scope="row">판매여부</th>
                        <td colspan="2">
                            <label class="gLabel eSelected">
                            	<input type="radio" name="saling_check" value="1" class="fChk ec-product-register-image-upload-type" checked="checked"> 판매
                            </label>
                            <label class="gLabel"><input type="radio" name="saling_check" value="0" class="fChk ec-product-register-image-upload-type"> 미판매</label>

                        </td>
                    </tr>

                    <tr>
                        <th scope="row">추천여부</th>
                        <td colspan="2">
                            <label class="gLabel eSelected"><input type="radio" name="recommendation" value="1" class="fChk ec-product-register-image-upload-type" checked="checked"> 추천</label>
                            <label class="gLabel"><input type="radio" name="recommendation" value="0" class="fChk ec-product-register-image-upload-type"> 추천안함</label>
                        </td>
                    </tr>
                    

                        <!-- 이미지 등록 -->
                    <tr>
                        <th scope="row" rowspan="2">메뉴이미지</th>
                        <td colspan="2">
                            <div class="mForm">
                            <span class="item"><strong class="txtEm">이미지등록</strong></span>
                            <input type="file" name="menuFileName">
                            </div>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
        <div>
        	<input type="submit" value="등록하기">
        	<input type="reset" value="초기화">
        </div>

        
    </div>

</body>

</html>