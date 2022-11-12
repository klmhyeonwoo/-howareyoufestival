var markers = [];

const input = document.querySelector(".inputOfFacilities");
//console.log(input);
/* 카카오맵 API 시작 */

let = w_latitude = 37.2724079;
let = w_longitude = 127.1276815;

var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(w_latitude, w_longitude), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

function setValue() {
    let keyword = document.getElementById("keyword").value;
    if (!keyword.replace(/^\s+|\s+$/g, "")) {
        alert("키워드를 입력해주세요!");
        return false;
    }
    console.log(keyword);
    searchPlaces(keyword)
}

function setValueOfTag(e) {
    let keyword = e.target.value;
    searchPlaces(keyword);
}

function searchPlaces(value) {
    keyword = "강남대학교 " + value;
    ps.keywordSearch(keyword, placesSearchCB);
}

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        removeMarker()
        var bounds = new kakao.maps.LatLngBounds();
        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       
        

        var moveLatLon = new kakao.maps.LatLng(37.2724079, 127.1276815);
        map.setBounds(bounds); // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setLevel(3)
        map.setCenter(moveLatLon);


    } else {
        alert("검색 결과가 없습니다!");
    }
}


function setCenter() {            
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(w_latitude, w_longitude);
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {

    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    markers.push(marker);
    marker.setMap(map); // 지도 위에 마커를 표출합니다


    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
    
    return marker;
}

function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}