<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.review_RegisterBox{
position: relative;
margin: 10px 0 10px 25%;
border: 1px solid black;
width: 50%;
overflow:hidden;
height:600px;
padding-bottom:100px;/* footer height */
}
.review_top{
margin: 0 0 10px 0;
text-align: left;
border-bottom: 1px solid gray;
}

.review{
width:100%;
height: auto;
}

.uploadbox{
width:70%;
height: auto;
}

.writebox{
border-top : 1px solid gray;
height: 150px;
width: 100%;
margin : 10px 0 0 50px;
}

.imagePreview{
height: auto;
width: 30%;

}

.review_RegisterBox li {
     list-style: none;
}

.review_RegisterBox img {
      width: 200px;
      height: 200px;
}

.writebox .real-upload{
 display: ;
 }

.upload {
margin-left:100px;
width: 100px;
height: 50px;
background-color: #B7F0B1;
border: 1px solid #B7F0B1;
}

.image-preview {
width: 100%;
      height: 200px;
      background-color: gray;
      display: flex;
      gap: 10px;
}
    
.t_write{
margin : 20px 0 0 10px;
width: 300px;
height: 100px;
}

.registerBtn{
margin : 10px 0 0px 20px;
border : 1px solid #B7F0B1;
background-color : #B7F0B1;
position: absolute;
bottom:10px;
left:350px;
width: 50px;
height: 40px;
outline: none;
}
.starss {
    position: relative;
    width:100%;
    height:100px;
    font-size: 2rem;
    color: #ddd;
    margin: 0 0 20px 0 ;
  }
  
.starss .starInput {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
.starss .star5 {
    width: 0;
    position: absolute; 
    left: 0;
    color: #FAED7D;
    overflow: hidden;
    pointer-events: none;
  }
  
.imgChange{
height: 200px;

}



   
</style>
<meta charset="UTF-8">
<title>저기요</title>
<%@ include file="../common/top.jsp" %>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/member/js/jquery.js"></script>
<script type="text/javascript" src="/resources/member/js/review.js"></script>
<script type="text/javascript">
	
	function reviewRegister(){
		document.getElementById('reviewInfo').submit();
	}
</script>
<body>
<script type="text/javascript" src="/resources/member/js/jquery.js"></script>

	<c:set target="orderRe" var="Re" />
	<div class="review_RegisterBox">
	<div class="review_top">
		<h5 style="text-align: center;">${sessionScope.id }님의 리뷰작성중</h5>
		<label>${shop_name}</label><br>
		<label><c:out value="${orderRe.order_menu} ${orderRe.menu_count}개"/></label>
	</div>	
		
	<div class="review">
		<form action="reviewSend" name="dataForm" id="dataForm" onsubmit="return registerAction()">		
  			<button id="btn-upload" type="button" class="upload">사진 추가</button>
  			<input id="input_file" multiple="multiple" type="file" style="display:none;">
  			<span style="font-size:10px; color: gray;">※사진은 최대 3개까지 등록이 가능합니다.</span>
  			<div class="data_file_txt" id="data_file_txt" style="margin:40px;" style="border: 1px solid blue;">
				<div id="articlefileChange" class="imgChange"></div>
			</div>
			<button type="submit" class="registerBtn">전송</button>
		</form>
		
		<form action="reviewSend" id="reviewInfo" method="post" >
			<input type="hidden" name="member_num" value="<c:out value="${orderRe.member_num }" />">
			<input type="hidden" name="shop_num" value="<c:out value="${orderRe.shop_num }" /> ">
			<input type="hidden" name="order_num" value="<c:out value="${orderRe.order_num }" />">
			<input type="hidden" value="<c:out value="${orderRe.order_menu} ${orderRe.menu_count}" />"> 
	
			<span class="starss">
 			★★★★★
  			<span class="star5">★★★★★</span>
  			<input type="range" class="starInput" oninput="drawStar(this)" name="evalute" value="1" step="1" min="0" max="10">
			</span><br>
			<textarea class="t_write" name="review_content" placeholder="리뷰 작성"></textarea><br>		
  			
  		</form>
  		
  		
  	</div>
</div>


</body>
<script>
$(document).ready(function()
		// input file 파일 첨부시 fileCheck 함수 실행
		{
			$("#input_file").on("change", fileCheck);
		});

/**
 * 첨부파일로직
 */
$(function () {
    $('#btn-upload').click(function (e) {
        e.preventDefault();
        $('#input_file').click();
    });
});

// 파일 현재 필드 숫자 totalCount랑 비교값
var fileCount = 0;
// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
var totalCount = 3;
// 파일 고유넘버
var fileNum = 0;
// 첨부파일 배열
var content_files = new Array();

function fileCheck(e) {
    var files = e.target.files;
    
    // 파일 배열 담기
    var filesArr = Array.prototype.slice.call(files);
    
    // 파일 개수 확인 및 제한
    if (fileCount + filesArr.length > totalCount) {
      $.alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
      return;
    } else {
    	 fileCount = fileCount + filesArr.length;
    }
    
    // 각각의 파일 배열담기 및 기타
    filesArr.forEach(function (f) {
      var reader = new FileReader();
      reader.onload = function (e) {
        content_files.push(f);
        $('#articlefileChange').append(
       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
       		+ '<font style="font-size:12px"></font>'  
       		+ '<img src="'+e.target.result+'" style="width:150px; height:150px; float: left; cursor: pointer;"/>' 
       		+ '<div/>'
       		
		);
        fileNum ++;
      };
      reader.readAsDataURL(f);
    });
    console.log(content_files);
    //초기화 한다.
    $("#input_file").val("");
  }

// 파일 부분 삭제 함수
function fileDelete(fileNum){
    var no = fileNum.replace(/[^0-9]/g, "");
    content_files[no].is_delete = true;
	$('#' + fileNum).remove();
	fileCount --;
    console.log(content_files);
}

/*
 * 폼 submit 로직
 */
	function registerAction(){
		
	var form = $("form")[0];        
 	var formData = new FormData(form);
		for (var x = 0; x < content_files.length; x++) {
			// 삭제 안한것만 담아 준다. 
			if(!content_files[x].is_delete){
				 formData.append("article_file", content_files[x]);
			}
		}
   /*
   * 파일업로드 multiple ajax처리
   */    
	$.ajax({
   	      type: "POST",
   	   	  enctype: "multipart/form-data",
   	      url: "/file-upload",
       	  data : formData,
       	  processData: false,
   	      contentType: false,
   	      success: function (data) {
   	    	  
   	    	if(JSON.parse(data)['result'] == "OK"){
   	    		alert("파일업로드 성공");
   	    		reviewRegister();
			} else
				alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
   	      },
   	      error: function (xhr, status, error) {
   	    	alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
   	     return false;
   	      }
   	    });
   	    return false;
   	 
	}
</script>
</body>


<%@ include file="../common/footer.jsp" %>
</html>