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
            <h2>발급 쿠폰 검색</h2>
        </div>
        <div class="mBoard type2 gSmall">
            <form id="fSearchForm" method="post" action="/shop/coupon/result">
                <input id="fCouponPage" type="hidden" name="coupon_list_page" value="1">
                <input id="fCouponType" type="hidden" name="coupon_type" value="O">
                <input id="fListCount" type="hidden" name="list_count" value="10">
                <input id="fCouponOrderColumn" type="hidden" name="coupon_order_column" value="">
                <input id="fCouponOrderWay" type="hidden" name="coupon_order_way" value="">
                <table border="1" summary="">
                    <caption>발급 쿠폰 검색</caption>
                    <colgroup>
                        <col style="width:200px;">
                        <col style="width:auto;">
                        <col style="width:200px;">
                        <col style="width:auto;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <!-- 쿠폰명 -->
                            <th scope="row">쿠폰명</th>
                            <td colspan="3">
                                <input id="fSearchValue" type="text" class="fText" name="coupon_name" value="" style="width:98%">
                            </td>
                        </tr>
                    </tbody>
                </table>
        </div>
        <div class="mButton gCenter">
            <p><a href="coupon_result" class="mNoEventAction btnSearch" id="fCouponSearchBtn"><span>검색</span></a></p>
            <input type="submit" value="검색">
        </div>
    </div></form>

</body>

</html>