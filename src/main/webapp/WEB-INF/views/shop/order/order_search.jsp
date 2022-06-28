<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

</head>

<body>
    <div class="optionArea " id="QA_deposit1">

        <div class="mCtrl typeHeader " style="display: none;">
            <div class="gLeft"></div>
            <div class="gRight"></div>
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
                        </th>
                        <td colspan="2">
                            <div id="mainSearch">
                                <div>
                                    <select class="fSelect" name="kinds" style="width:163px;">
                                        <option value="">-검색항목선택-</option>
                                        <option value="name">주문자명</option>
                                        <option value="member_id">주문자 아이디</option>
                                        <option value="email">회원 이메일</option>
                                        <option value="phone">주문자 휴대전화</option>
                                    </select>
                                    <input type="text" class="fText sBaseSearchBox" name="searchData" id="sBaseSearchBox" style="width:400px;">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            주문일
                        </th>
                        <td colspan="2" style="position:relative;">
                            <p class="msg"><input type="date" id="order_datepicker1" class="fText gDate" name="order_start_date" style="width:163px;"> 10일치 결과를 보여줍니다.</p>
                        </td>

                    </tr>

                    <tr>
                        <th scope="row">
                            상품
                        </th>
                        <td colspan="2">
                        <!-- 이부분은 선택 값에 따라 상품명이면 input값 카테고리면 select바로 -->
                            <select class="fSelect" id="eProductSearchType" name="product_search_type" style="width:110px;">
                                <option value="menu_name" selected="selected">상품명</option>
                                <option value="category_num">카테고리별</option>
                            </select>
                            <!-- jquery로 선택되면 출력되게 해야함 -->
                            <input type="text" class="fText gDate" name="menu_name" id="eOrderProductNo" value=""style="width:150px;">
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
                        <th scope="row">주문상태</th>
                        <td colspan="2" id="orderStatusCheck">
                            <label class="gLabel eSelected"><input type="radio" name="progression" class="fChk" value="" checked="checked"> 전체</label>
                            <label class="gLabel eSelected"><input type="radio" name="progression" class="fChk" value="결제대기" > 결제대기</label>
                            <label class="gLabel eSelected"><input type="radio" name="progression" class="fChk" value="결제완료" > 결제완료</label>
                            <label class="gLabel eSelected"><input type="radio" name="progression" class="fChk" value="배송대기" > 배송대기</label>
                            <label class="gLabel eSelected"><input type="radio" name="progression" class="fChk" value="배송완료" > 배송완료</label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
	    <div class="mButton gCenter">
	   		<input type="submit" value="검색">
	    </div>
    
    </div>


</body>

</html>