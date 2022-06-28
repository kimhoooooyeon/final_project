<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>현재 위치 확인</title>
    <style type="text/css">
.NowLocationbox{
height: 150px;
border: 1px solid gray; 
background-image: url("/resources/images/pizza.jpg");
}

 .locationLatlng{
position: relative;
top: 50px;
left: 40%;
float: left;
width: 300px;
height: 45px;
border: 1px solid #DCDCDC;
border-radius: 20px 20px 20px 20px / 20px 20px 20px 20px;

font-size: 20px;
background-color: white;
}


.la{
    position: relative;
    top: 8px;
    left: 20px;
}
.NowLocationbox .lobtn{
position: relative;
margin : 0 10px 0 0;
top: 50px;
left: 40%;
float: left;
height: 45px;
width: 50px;
cursor: pointer;
background-color: white;
border-radius: 10%;
}  
    
    </style>
</head>
<body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7893324c959c5fd8cb71d14b81b36060&libraries=services"></script>
<script>

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();



function nowlocationbtn(){
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
		
        getAddr(lat,lon);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
	
        message = '현재 위치를 찾을수없어요';
        
}

		function getAddr(lat,lon){
   		let geocoder = new kakao.maps.services.Geocoder();
	
  		let coord = new kakao.maps.LatLng(lat, lon);
    	let callback = function(result, status) {
       		if (status === kakao.maps.services.Status.OK) {
            	var detailAddr = result[0].address.address_name;

        		var message = detailAddr;

         		var resultDiv = document.getElementById('locationLatlng'); 
        			     resultDiv.innerHTML = message;
        		sessionStorage.setItem("locationInfo", detailAddr);
        
                }
      	  }
   	 geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
		}  
}

</script>
	<div class="NowLocationbox">
		
		<span class="icon">
			<ion-icon class="lobtn" name="compass-outline" onclick="nowlocationbtn()"></ion-icon>
		</span>
		<div class="locationLatlng" >
			<label class="la" id="locationLatlng"></label>
			
		</div>
	</div>
</body>

<script type="text/javascript">
function windowload(){
if(null != sessionStorage.getItem('locationInfo')){
		
		var resultDiv = document.getElementById('locationLatlng'); 
	     	resultDiv.innerHTML = sessionStorage.getItem('locationInfo');
		}
	
}
window.onload = windowload;
</script>
</html>