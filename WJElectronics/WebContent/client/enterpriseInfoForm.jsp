<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" href="../Resources/prodictListStyle.css?ver=1" />
<link rel="stylesheet" href="../Resources/css/index.css?ver=1">
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<title>WJ 전자</title>
<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

th, td {
	padding: 10px;
}

.bodycontents-companyinfo {
	margin: 0;
	padding: 0;
	float: right;
	width: 70%;
	font-size: 20px;
}

.bodycontents-companyhistory {
	margin: 0;
	padding: 0;
	float: right;
	width: 70%;
	font-size: 20px;
}

.bodycontents-vision {
	margin: 0;
	padding: 0;
	float: right;
	width: 70%;
	font-size: 20px;
}

.bodycontents-map {
	margin: 10px;
	padding: 0;
}

.menu {
	float: left;
	width: 20%;
	font-size: 20px;
}

<
style>.li1 {
	list-style: none
}

.li2 {
	font-size: 10px;
}
</style>


</head>
<body>

	<!--헤더-->
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>
	<!--헤더 끝-->
	<br>


	<section class="menu" id="new">
		<h3>
			<span>NEW ARRIVAL</span> 회사 소개
		</h3>


		<section id="cat1">
			<div id="cat_title">WJElectronics</div>

			<ul>
				<li><div class="menu-li1">
						<span><a href="#">대표 인사말</a></span>
					</div></li>
				<li><div class="menu-li2">
						<span><a href="#">WJ의 3대가치</a></span>
					</div></li>
				<li><div class="menu-li3">
						<span><a href="#">WJ연혁</a></span>
					</div></li>
				<li><div class="menu-li4">
						<span><a href="#">오시는 길</a></span>
					</div></li>
			</ul>
		</section>
		<!-- section cat1 -->

	</section>
	<div style="height: 100%; width: 80%; right: 0%;" align="center">
		<!--배너  -->
		<div class="container"
			style="width: 40%; height: 40%; margin: auto; margin-right: 20%;">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<ol class="carousel-inner">
					<div class="item active">
						<img src="../Resources/images/enterprise/11.jpg" />
					</div>
					<div class="item">
						<img src="../Resources/images/enterprise/22.jpg" />
					</div>
					<div class="item">
						<img src="../Resources/images/enterprise/33.jpg" />
					</div>
				</ol>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>

		</div>
		<!--배너 끝-->
		<br>


		<!--가운데 내용-->
		<div>
			<div class="bodycontents-companyinfo" id="bodycontents-cominfo">
				<!--회사 소개  -->
				<table class="bodycontent-companyhistory" width=80%>
					<tr align="center">
						<td colspan="2"><h1>WJEletronics 대표 장우진</h1> <br> <img
							src="../Resources/images/enterprise/44.jpg" width=30%
							height=200px /> <br>
							<h2>"사람이 미래를 만든다"</h2> <br></td>

					</tr>

					<tr align="center">
						<td colspan=2><br> <br>

							<h3>라는 말은 저희 기업 신념입니다.</h3> <br> <br> 기업은 이윤을 추구하기 위해
							존재하지만, 결코 사람보다 우선시 될 수 없습니다.<br> WJ의 직원은 가족이자 자산이라는 생각으로 기업을
							운영하고 있습니다.<br> 더 나은 WJ,발전하는 WJ가 되도록 노력하겠습니다.<br></td>
				</table>
			</div>
			<br> <br> <br>

			<div class="bodycontents-companyhistory" id="bodycontents-comhistory">
				<!--회사 연혁  -->
				<table width=80% border=1>
					<tr align="center">
						<td colspan="2"><h1>회사 연혁</h1></td>

					</tr>

					<tr align="center">
						<td><h2>2015</h2></td>
						<td>장우진 대표,회사 설립(2015.xx.xx)<br> 첫 제품출시(2015.xx.xx)
						</td>
					</tr>

					<tr align="center">
						<td><h2>2016</h2></td>
						<td>모니터 출시 <br>
						</td>
					</tr>
					<tr align="center">
						<td><h2>2017</h2></td>
						<td>장우진 대표,회사 설립(2015.xx.xx)<br> 첫 제품출시(2015.xx.xx)
						</td>
					</tr>
					<tr align="center">
						<td><h2>2018</h2></td>
						<td>장우진 대표,회사 설립(2015.xx.xx)<br> 첫 제품출시(2015.xx.xx)
						</td>
					</tr>
					<tr align="center">
						<td><h2>2019</h2></td>
						<td>장우진 대표,회사 설립(2015.xx.xx)<br> 첫 제품출시(2015.xx.xx)
						</td>
					</tr>


				</table>
				<br> <br>

			</div>


		</div>

		<div class="bodycontents-vision" id="bodycontents-vi"
			style="display: none;">
			<table width=80%>
				<tr align="center">
					<td colspan="3"><h1>WJ의 3대 핵심가치</h1></td>

				</tr>
				<tr align="center">
					<td><img src="../Resources/images/enterprise/1.jpg"
						style="width: 70%; height: 50%;" /></td>
					<td><img src="../Resources/images/enterprise/2.jpg"
						style="width: 70%; height: 50%;" /></td>
					<td><img src="../Resources/images/enterprise/3.jpg"
						style="width: 70%; height: 50%;" /></td>
				</tr>
				<tr align="center">
					<td><h2>사람</h2></td>
					<td><h2>신뢰</h2></td>
					<td><h2>끈기</h2></td>
				</tr>
			</table>

		</div>


		<div class="bodycontents-maps" id="bodycontents-mp">
			<h1>WJ전자에 오시는 길</h1>
			<br>
			<div id="map"
				style="width: 400px; height: 350px; margin: auto; padding: auto;"></div>

			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1612a47582f976311be9a8dd6ec0b816"></script>
			<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.570711, 126.992291), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 
// 지도에 마커를 표시합니다
marker.setMap(map);

// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';
    
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
});


$(document).ready(function() {
      $('.bodycontents-companyinfo').show(); //페이지를 로드할 때 표시할 요소
      $('.bodycontents-vision').hide(); //페이지를 로드할 때 숨길 요소
      $('.bodycontents-companyhistory').hide();
      $('.bodycontents-maps').hide();
      
      
      $('.menu-li2').click(function() {
         $('.bodycontents-companyinfo').hide(); 
         $('.bodycontents-vision').show(); 
         $('.bodycontents-companyhistory').hide();
         $('.bodycontents-maps').hide();
         /* return false;*/      
         });
      $('.menu-li3').click(function() {
         $('.bodycontents-companyinfo').hide(); 
         $('.bodycontents-vision').hide(); 
         $('.bodycontents-companyhistory').show();
         $('.bodycontents-maps').hide();
         /* return false;*/      
         });
      $('.menu-li4').click(function() {
         $('.bodycontents-companyinfo').hide(); 
         $('.bodycontents-vision').hide(); 
         $('.bodycontents-companyhistory').hide();
         $('.bodycontents-maps').show();
         /* return false;*/      
         });
      $('.menu-li1').click(function() {
         $('.bodycontents-companyinfo').show(); 
         $('.bodycontents-vision').hide(); 
         $('.bodycontents-companyhistory').hide();
         $('.bodycontents-maps').hide();
         /* return false;*/      
         });
   });

</script>

		</div>
	</div>

	<div>
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>

</body>
</html>