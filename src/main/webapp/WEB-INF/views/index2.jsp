<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>위치검색</title>

<style type="text/css">
	   .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
</head>
<body>

<!-- 부트스트랩 이용을 위한 jQuery와 CDN -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<div id="map" style="width:750px;height:350px;"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7893324c959c5fd8cb71d14b81b36060&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.56733, 126.97932), // 지도의 중심좌표
		        level: 4, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
		    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
		        if (status === kakao.maps.services.Status.OK) {
		            var detailAddr1 = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
		            var detailAddr2 = '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
		            var detailAddr = detailAddr1 + detailAddr2;
		            
		            var content = '<div class="bAddr">' +
		                            '<span class="title"></span>' + 
		                            detailAddr + 
		                        '</div>'
		                     	;
		                        
		            
		        

		            // 마커를 클릭한 위치에 표시합니다 
		            marker.setPosition(mouseEvent.latLng);
		           
		            marker.setMap(map);
		            
		            var message = detailAddr1;
		            var message2 = detailAddr2;
		           
		            
		            var resultDiv = document.getElementById('clickLatlng'); 
		            resultDiv.innerHTML = message;
		            
		            var resultDiv = document.getElementById('clickLatlng2'); 
		            resultDiv.innerHTML = message2;

		            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
		            infowindow.setContent(content);
		            infowindow.open(map, marker);
		        }   
		    });
		});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', function() {
		    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback) {
		    // 좌표로 행정동 주소 정보를 요청합니다
		    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
		}

		function searchDetailAddrFromCoords(coords, callback) {
		    // 좌표로 법정동 상세 주소 정보를 요청합니다
		    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status) {
		    if (status === kakao.maps.services.Status.OK) {
		        var infoDiv = document.getElementById('centerAddr');

		        for(var i = 0; i < result.length; i++) {
		            // 행정동의 region_type 값은 'H' 이므로
		            if (result[i].region_type === 'H') {
		                infoDiv.innerHTML = result[i].address_name;
		                break;
		            }
		        }
		    }    
		}

		function locationLoadSuccess(pos){
		    // 현재 위치 받아오기
		    var currentPos = new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude);

		    // 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
		    map.panTo(currentPos);

		    // 마커 생성
		    var marker = new kakao.maps.Marker({
		        position: currentPos
		    });

		    // 기존에 마커가 있다면 제거
		    marker.setMap(null);
		    marker.setMap(map);
		};

		function locationLoadError(pos){
		    alert('위치 정보를 가져오는데 실패했습니다.');
		};

		// 위치 가져오기 버튼 클릭시
		function getCurrentPosBtn(){
		    navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
		};
		

	</script>
	

<!-- 부트스트랩 primary 버튼 -->
<button type="button" class="btn btn-lg btn-primary" id="getMyPositionBtn" onclick="getCurrentPosBtn()">내 위치 가져오기</button>
<div id="clickLatlng"></div>
<div id="clickLatlng2"></div>
	
</body>
</html>