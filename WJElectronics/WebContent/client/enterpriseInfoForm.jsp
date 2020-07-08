<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
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

 #bodycontents-companyinfo {
 	margin: 0;
	padding: 0;
	float:right;
	width:80%;
	font-size: 20px;
}

 #bodycontents-companyhistory {
 	margin: 0;
	padding: 0;
	float:right;
	width:80%;
	font-size: 20px;
	
}  
#bodycontents-vision {
 
	margin: 0;
	padding: 0;
	float:right;
	width:80%;
	font-size: 20px;
	
}  

#bodycontents-map{
	margin: 10px;
	padding: 0;
}

/* .menu {
	float:left;
	width:20%;
	font-size: 20px;
	
} */


</style>
<script>
	//bada는 document.getElementById('somenu1')받음

	function look(bada) {//toggle은 항상 이렇게
		if (bada.style.display == "none") {//숨어있으면
			bada.style.display = "block"//보여줘
		} else {
			bada.style.display = "none"//안숨었으면 숨어
		}
	}/*fuction-end  */
	
	
	</script>

</head>
<body>
	<!--헤더-->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">WJElectronics</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="enterpriseInfoForm.jsp">기업정보</a></li>
				<li><a href="productListForm.jsp">판매목록</a></li>
				<li><a href="asListForm.jsp">AS센터</a></li>
				<li><a href="noticeForm.jsp">공지사항</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${sessionScope.id == null }">
					<li><a href="loginForm.jsp">로그인</a></li>
					<li><a href="joinForm.jsp">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.id != null }">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> ${sessionScope.id } 님 <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">내 정보</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul></li>
				</c:if>
			</ul>
		</div>
	</nav>
	<!--헤더 끝-->
<br>
	<!--배너  -->
	<div class="container" style="width:30%; height:30%; margin:auto;" >

		<div id="myCarousel" class="carousel slide" data-ride="carousel" >
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<ol class="carousel-inner">
				<div class="item active">
					<img src="clientimg/11.jpg"/>
				</div>
				<div class="item">
					<img src="clientimg/22.jpg"/>
				</div>
				<div class="item">
					<img src="clientimg/33.jpg"/>
				</div>
			</ol>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>

	</div>
	<!--배너 끝-->
	<br>
	<br>
	<br>

<!--가운데 내용-->
	<div>
		<div id="bodycontents-companyinfo" style="margin:50px;">
			<!--회사 소개  -->
			<table class="bodycontent-companyhistory" width=80%>
				<tr align="center">
					<td colspan="2"><h1>WJEletronics 대표 장우진</h1><br><img src="clientimg/1.jpg" width=30% height=150px/></td>

				</tr>

				<tr align="center">
					<td colspan=2><br>
					<br>
						<h2>"사람이 미래를 만든다"</h2> <br> <br>
						<h3>라는 말은
							저희 기업 신념입니다.</h3><br>
							<br>
							
							기업은 이윤을 추구하기 위해 존재하지만, 결코 사람보다 우선시 될 수 없습니다.<br> WJ의 직원은 가족이자 자산이라는 생각으로 기업을 운영하고 있습니다.<br>
							더 나은 WJ,발전하는 WJ가 되도록 노력하겠습니다.<br>
						</td>
			</table>
		</div>
		<br>
		<br>
		<br>
		
		<div id="bodycontents-companyhistory" style="margin:50px;" >
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
					<td>장우진 대표,회사 설립(2015.xx.xx)<br> 첫 제품출시(2015.xx.xx)
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


		</div>
	

	</div>
	<br>
	<br>
	<br>
	<div id="bodycontents-vision">
	<table width=80% >
			<tr align="center">
				<td colspan="3"><h1>WJ의 3대 핵심가치</h1></td>

			</tr>
			<tr align="center">
				<td><img src="clientimg/1.jpg" style="width: 70%; height: 50%;" /></td>
				<td><img src="clientimg/2.jpg" style="width: 70%; height: 50%;" /></td>
				<td><img src="clientimg/3.jpg" style="width: 70%; height: 50%;" /></td>
			</tr>
			<tr align="center">
				<td><h2>사람</h2></td>
				<td><h2>신뢰</h2></td>
				<td><h2>끈기</h2></td>
			</tr>
		</table>
			<br>
<br>
<br>
	</div>


<div id="bodycontents-maps">

<div id="map" style="width:30%; height:350px; margin:auto; padding:auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1612a47582f976311be9a8dd6ec0b816"></script>
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
</script>


<br>
<br>
<br>
</div>
	<!-- <div class="menu">

		<div class="menu1" id="bigmenu1"
			onclick="look(document.getElementById('somenu1'))">CEO</div>

		<div class="menu2" id="somenu1" style="display: none">
			<ul>
				<li><a href="#bodycontents-companyinfo" onclick="look(document.getElementById('bodycontents-companyinfo'))">CEO인사말</a></li>
			</ul>
		</div>

		<div class="menu1" id="bigmenu2"
			onclick="look(document.getElementById('somenu2'))">WJElectronics</div>

		<div class="menu2" id="somenu2" style="display: none" >
			<ul>
				<li><a href="#bodycontents-vision" onclick="look(document.getElementById('bodycontents-vision')">WJE소개</a></li>
				<li><a href="#bodycontents-companyhistory" onclick="look(document.getElementById('bodycontents-companyhistory')">WJE연혁</a></li>
			</ul>
		</div>

		<div class="menu1" id="bigmenu2">찾아오시는 길</div>
			<ul>
				<li><a href="#bodycontents-vision" onclick="look(document.getElementById('bodycontents-maps'))">회사위치</a></li>
			</ul>
	</div> -->




</body>
</html>