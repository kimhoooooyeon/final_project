<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div class="section" id="QA_day2">
        <div class="mTitle">
            <h2>통계 그래프</h2>
        </div>
        <div class="mBox typeBorder graph">
            <iframe name="iChartForm" id="iChartForm" src="chartpie?mode=bar_line&amp;what_call=sChart" frameborder="0" width="100%" height="420px" title="세로 바 그래프"></iframe>
            <script type="text/javascript">
                var sChart = [
                    [
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                    ], {
                        "7": "06-10",
                        "6": "06-09",
                        "5": "06-08",
                        "4": "06-07",
                        "3": "06-06",
                        "2": "06-05",
                        "1": "06-04",
                        "0": "06-03"
                    },
                    ["\uc21c\ub9e4\ucd9c", "pc\uc1fc\ud551\ubab0", "\ubaa8\ubc14\uc77c\uc6f9", "\ubaa8\ubc14\uc77c\uc571", "\ub124\uc774\ubc84 \ud398\uc774", "\uce74\uce74\uc624\ud398\uc774 \uad6c\ub9e4", "G\ub9c8\ucf13", "\uc625\uc158", "11\ubc88\uac00", "\uc2a4\ub9c8\ud2b8\uc2a4\ud1a0\uc5b4", "\uc778\ud130\ud30c\ud06c", "SSG", "\ucfe0\ud321", "\uce74\uce74\uc624\ud1a1 \uc2a4\ud1a0\uc5b4", "\ud150\ubc14\uc774\ud150", "\uc704\uba54\ud504", "\uba78\uce58\uc1fc\ud551", "\ud558\ud504\ud074\ub7fd", "\ubcf4\ub9ac\ubcf4\ub9ac", "\uc624\uac00\uac8c", "\uc1fc\ud53c \uc2f1\uac00\ud3ec\ub974", "\uc1fc\ud53c \uc778\ub3c4\ub124\uc2dc\uc544", "\uc1fc\ud53c \ub9d0\ub808\uc774\uc2dc\uc544", "\uc1fc\ud53c \ub300\ub9cc", "\uc1fc\ud53c \ud0dc\uad6d", "\uc1fc\ud53c \ud544\ub9ac\ud540", "\uc1fc\ud53c \ubca0\ud2b8\ub0a8", "\uc1fc\ud53c \uba55\uc2dc\ucf54", "\uc1fc\ud53c \ube0c\ub77c\uc9c8", "\uc0f5\ub9ac\uc2a4\ud2b8", "\ube0c\ub9ac\uce58", "\uc9c0\uadf8\uc7ac\uadf8", "\uc5d0\uc774\ube14\ub9ac", "\ud2f0\ubaac", "\ubb34\uc2e0\uc0ac", "\uc704\uc988\uc704\ub4dc", "\ud56b\ud2b8\ub799\uc2a4", "AK\ubab0", "\ub2e4\uc774\uc18c\ubab0", "LF\ubab0", "\uc2a4\ud0c0\uc77c\uc250\uc5b4", "\uc774\ub9c8\ud2b8\ubab0", "\uc5d0\uc774\ub79c\ub4dc", "\ub77c\ucfe0\ud150", "CJ\ubab0", "\ub86f\ub370ON", "\ud558\uc774\ub9c8\ud2b8", "TOF\/KOF", "\ub77c\uc790\ub2e4 \ud544\ub9ac\ud540", "\ub77c\uc790\ub2e4 \ud0dc\uad6d", "\ub77c\uc790\ub2e4 \uc2f1\uac00\ud3ec\ub974", "\ub77c\uc790\ub2e4 \uc778\ub3c4\ub124\uc2dc\uc544", "\ub77c\uc790\ub2e4 \ub9d0\ub808\uc774\uc2dc\uc544", "\uc2e0\uc138\uacc4TV\uc1fc\ud551", "\ud328\uc158\ud50c\ub7ec\uc2a4", "\ud050\ud150 \uc2f1\uac00\ud3ec\ub974", "\uc2a4\ud0c0\uc77c\ud06c\ub8e8", "\uc774\ub79c\ub4dc\ubab0", "\uc774\ubca0\uc774 \uc7ac\ud32c(\ud050\ud150)", "\ud038\uc787", "\uc704\uc2dc", "SSG\uc624\ud508\ub9c8\ucf13", "GVG\uc2a4\ud1a0\uc5b4", "\ubc14\uc774\ub9c8", "\ubaa8\ub77c\ub2c8\ud06c", "\ub137\ud53c\uc5d1\uc2a4", "\ub7ec\ube14\ub9ac\ub9c8\ucf13", "\uc544\ub9c8\uc874 US", "\uc544\uc774\uc2a4\ud0c1\ubab0", "\ud480\ub77c", "SUPERMARKET\u0004TOBEMKT01"], null
                ];
            </script>
        </div>
    </div>

</body>

</html>