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
    <div class="section" id="QA_inquiry2">
        <div class="mTab typeTab eTab">
        <!-- 못살리면 지우기 -->
            <ul>
                <li class="selected"><a href="#none" id="eOrdNumTab">주문번호별</a></li>
                <li><a href="#none" id="ePrdNumTab">품목주문별</a></li>
            </ul>
        </div>
        <div id="tabNumber" class="tabCont">
            <div class="mState typeHeader">
                <div class="gLeft">
                    <p class="total">[ 검색결과
                        <strong>0</strong>건
                        ]
                    </p>
                </div>
                <div class="gRight"></div>
            </div>
            <div class="mCtrl typeSetting setting"></div>
            <!-- 결과값 보여주는 테이블 -->
            <div id="searchResultList" class="mBoard typeOrder typeList gScroll gCellSingle">
                <table border="1" summary="" class="thead">
                    <caption>전체주문 조회 목록</caption>
                    <tbody>
                        <tr>
                            <th scope="col" class="w24"><input type="checkbox" id="allChk"></th>
                            <th scope="col" class="w50" style="display:none;">No</th>
                            <th scope="col" class="w120" style="">주문일</th>
                            <th scope="col" class="w150" style="">주문번호</th>
                            <th scope="col" class="w95" style="">주문자</th>
                            <th scope="col" class="w110" style="">배송지</th>
                            <th scope="col" class="w110" style="">상품명</th>
                            <th scope="col" class="w50" style="">수량</th>
                            <th scope="col" class="w80" style="">결제금액</th>
                            <th scope="col" class="w60" style="">결제수단</th>
                            <th scope="col" class="w60" style="">진행상태</th>
                            <th scope="col" class="w60" style="">문의내용</th>
                        </tr>
                    </tbody>
                </table>
				<!-- 검색결과 디비에 출력될값 -->
                <table border="1" summary="">
                    <caption>전체주문 조회 목록</caption>
                    <!-- 이부분은 검색시 비어있는 값이 아닐경우 숨기기 -->
                    <tbody class="empty">
                        <tr>
                            <td colspan="15">검색된 주문내역이 없습니다.</td>
                        </tr>
                    </tbody>
                    
                <c:if test="${orderlist.isEmpty() == false }">
                <c:forEach var="order" items="${orderlist }"> 
	                <!-- 상품 목록출력되는 곳, db에서 불러오는값 확인하기 -->
	                <tbody class="center" id="product-list">
	                    <tr class="ec-product-manage-list" >
	                        <td>
	                        	<input type="checkbox" class="rowChk _product_no" name="check" >
	                        </td>
	                        <td><input type="text" name="day" value="${order.day }"style="width:40%;border:0;"></td>
	                        <td class="right">
	                        	<input type="text" name="order_num" value="${order.order_num }"style="width:90%;border:0;">
	                        </td>
	                        <td>
		                        <input type="text" value="${order.name}"style="width:100%;border:0;">
	                        </td>
	                        <td>
	                        	<input type="text" value="${order.order_address} ${order.order_address_detail}"style="width:100%;border:0;">
	                        </td>
	                        <td class="left prdCate">
	                            	<input type="text" value="${order.menu_name }"style="width:100%;border:0;">
	                        </td>
	                        
	                        <td><input type="text" value="${order.count }" style="width:100%;border:0;">개</td>
	                        <td><input type="text" value="${order.total_price }" style="width:100%;border:0;">원</td>
	                        <td><input type="text" value="${order.payment_option }" style="width:100%;border:0;"></td>
	                        <td><input type="text" name="progression" value="${order.progression }" style="width:100%;border:0;"></td>
	                        <td>
	                            <input type="text" class="fText ec-product-list-orderaddress " style="width:100%;border:0;"value="${order.request }">
	                        </td>
	
	                    </tr>
	                </tbody>
                </c:forEach>
                </c:if>
                    
                </table>

            </div>
            <div class="mCtrl typeFooter">
            </div>
            <div class="mPaginate">

            </div>
        </div>
    </div>


</body>

</html>