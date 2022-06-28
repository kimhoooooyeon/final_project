<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>

    <div class="section" id="QA_day1">
        <div class="mBoard gSmall">
            <table border="1" summary="">
                <caption>일별 매출</caption>
                <tbody>
                    <tr>
                        <th scope="row">
                            기간 (결과는 +10)
                            <div class="cTip"></div>
                        </th>
                        <td style="position: relative;">

							<!-- 이부분은 나중에 데이터피커사용해야함 -->
							<input type="date" id="order_datepicker1" class="fText gDate" name="day" style="width:163px;">
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