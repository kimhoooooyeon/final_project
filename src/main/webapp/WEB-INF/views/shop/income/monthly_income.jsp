<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div class="section" id="QA_month4">
        <div class="mTitle">
            <h2>전월/금월 증감추이</h2>
            <div class="cTip eSmartMode" code="SS.SQ.MA.90">
                <div class="mTooltip gLarge">
                    <button type="button" class="icon eTip" bindstatus="true">도움말</button>
                    <div class="tooltip" style="z-index : 1; ">
                        <div class="content"></div>
                        <button type="button" class="close eClose">닫기</button>
                        <span class="edge"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="mBoard">
            <table border="1" summary="">
                <caption>전월/금월 증감추이</caption>
                <colgroup>
                    <col style="width:auto;">
                    <col style="width:15%;">
                    <col style="width:10%;">
                    <col style="width:15%;">
                    <col style="width:10%;">
                    <col style="width:15%;">
                    <col style="width:10%;">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">기간</th>
                        <th scope="col" colspan="2">결제합계 <div class="cTip eSmartMode" code="SS.SQ.MA.100">
                                <div class="mTooltip gLarge">
                                    <button type="button" class="icon eTip" bindstatus="true">도움말</button>
                                    <div class="tooltip" style="z-index : 1; ">
                                        <div class="content"></div>
                                        <button type="button" class="close eClose">닫기</button>
                                        <span class="edge"></span>
                                    </div>
                                </div>
                            </div>
                        </th>
                        <th scope="col" colspan="2">환불합계 <div class="cTip eSmartMode" code="SS.SQ.MA.110">
                                <div class="mTooltip gLarge">
                                    <button type="button" class="icon eTip" bindstatus="true">도움말</button>
                                    <div class="tooltip" style="z-index : 1; ">
                                        <div class="content"></div>
                                        <button type="button" class="close eClose">닫기</button>
                                        <span class="edge"></span>
                                    </div>
                                </div>
                            </div>
                        </th>
                        <th scope="col" colspan="2">순매출 <div class="cTip eSmartMode" code="SS.SQ.MA.120">
                                <div class="mTooltip gLarge">
                                    <button type="button" class="icon eTip" bindstatus="true">도움말</button>
                                    <div class="tooltip" style="z-index : 1; ">
                                        <div class="content"></div>
                                        <button type="button" class="close eClose">닫기</button>
                                        <span class="edge"></span>
                                    </div>
                                </div>
                            </div>
                        </th>
                    </tr>
                </thead>
                <tbody class="center middle">
                    <tr>
                        <td>금월(2022-06)</td>
                        <td>0</td>
                        <td rowspan="2">
                            <span class="txtWarn">
                                0% 증가 </span>
                        </td>
                        <td>0</td>
                        <td rowspan="2">
                            <span class="txtWarn">
                                0% 증가 </span>
                        </td>
                        <td>0</td>
                        <td rowspan="2">
                            <span class="txtWarn">
                                0% 증가 </span>
                        </td>
                    </tr>
                    <tr>
                        <td>전월(2022-05)</td>
                        <td>0</td>
                        <td>0</td>
                        <td>0</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>