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

    <div class="section" id="QA_day3">
        <div class="mTitle" style="display: none;">
            <h2>일별 매출내역</h2>
            <div class="cTip" code="OR.AD.SA.DA.80"></div>
        </div>
        <div class="mState">
            <div class="gRight">
            </div>
        </div>
        <div class="mBoard gScroll">
            <table border="1" summary="">
                <caption>일별 매출내역</caption>
                <colgroup>
                    <col style="width:110px;">
                    <col style="width:80px;">
                    <col style="width:80px;">
                    <col style="width:100px;">
                </colgroup>
                
                <thead>
                    <tr>
                        <th scope="col" rowspan="2">일자</th>
                        <th scope="col" colspan="3">결제완료 주문 <div class="cTip eSmartMode" >
                                <div class="mTooltip gMedium">
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
                    <tr>
                        <th scope="col">주문수</th>
                        <th scope="col">주문가격</th>
                        <th scope="col">배송비</th>
                    </tr>
                </thead>
                <c:if test="${incomelist.isEmpty() == false }">
			        <c:set var="orderCount" value="0"/>
			        <c:set var="totalPrice" value="0"/>
                	<c:forEach var="income" items="${incomelist}">
                		<tbody class="right" id="${income.orders }">
	                    <tr>
	                        <td class="center">${income.day }</td>
	                        <td>${income.orders }</td>
	                        <td>${income.price}</td>
	                        <td>${income.delivery_cost}</td>
	                    </tr>
                		</tbody>
                	</c:forEach> 
                </c:if>
            </table>
        </div>
    </div>


</body>

</html>