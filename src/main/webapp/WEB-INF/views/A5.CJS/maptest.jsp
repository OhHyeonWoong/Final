<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지도 테스트</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<center>
<div id="map" style="width:30%;height:350px;"></div>
</center>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=120b01867e29e09658100681cf1d0604&libraries=services,clusterer,drawing"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};  
var geocoder = new daum.maps.services.Geocoder();
var coords="";
var coords1="";
geocoder.addressSearch('경기도 도덕공원로', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

    coords = new daum.maps.LatLng(result[0].y, result[0].x);
    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    console.log("coords="+coords)
     var circle = new daum.maps.Circle({
    	    center : coords,  // 원의 중심좌표 입니다 
    	    radius: 50, // 미터 단위의 원의 반지름입니다 
    	    strokeWeight: 5, // 선의 두께입니다 
    	    strokeColor: '#75B8FA', // 선의 색깔입니다
    	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    	    strokeStyle: 'dashed', // 선의 스타일 입니다
    	    fillColor: '#CFE7FF', // 채우기 색깔입니다
    	    fillOpacity: 0.7  // 채우기 불투명도 입니다   
    	}); 

    	// 지도에 원을 표시합니다 
    	circle.setMap(map); 
});


// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다

// 주소로 좌표를 검색합니다


geocoder.addressSearch('경기도 도덕공원로 75-28', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        coords1 = new daum.maps.LatLng(result[0].y, result[0].x);
        console.log("coords1="+coords1);
        var positions = [
            {
                content: '<div text-align:"center">카카오</div>', 
                latlng: coords1
            }
        ];

        for (var i = 0; i < positions.length; i ++) {
            // 마커를 생성합니다
            console.log(positions);
            var marker = new daum.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng // 마커의 위치
            });

            // 마커에 표시할 인포윈도우를 생성합니다 
            var infowindow = new daum.maps.InfoWindow({
                content: positions[i].content // 인포윈도우에 표시할 내용
            });

            // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
            // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
            (function(marker, infowindow) {
                // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
                daum.maps.event.addListener(marker, 'mouseover', function() {
                    infowindow.open(map, marker);
                });

                // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
                daum.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close();
                });
            })(marker, infowindow);
        }    
        
        
    } 
});


    

</script>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>