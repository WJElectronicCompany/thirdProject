<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" href="../Resources/prodictListStyle.css" />
<script src = "../Resources/jquery-3.3.1.js"></script>
<script src  = "../Resources/js/bootstrap.js"></script>
<script src  = "../Resources/script.js"></script>

<title>WJ 전자</title>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">WJElectronics</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="enterpriseInfoForm.jsp">기업정보</a></li>
				<li class="active"><a href="productListForm.jsp">판매목록</a></li>
				<li><a href="asListForm.jsp">AS센터</a></li>
				<li><a href="noticeForm.jsp">공지사항</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<c:if test="${sessionScope.id == null }">
					<li><a href="loginForm.jsp">로그인</a></li>
					<li><a href="joinForm.jsp">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.id != null }">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> ${sessionScope.id } 님 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">내 정보</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul>
					</li>
				</c:if>
			</ul>
		</div>
	</nav>
<section id="new">
    <h3><span>NEW ARRIVAL</span> 제품 소개 </h3>
    
    <section id="main">
  <section id="cat1">
    <div id="cat_title">
      CATEGORY ITEM
    </div>
    <ul>
		<li>컴퓨터 및 노트북</li>
		<li>컴퓨터 주변기기</li>
		<li>스마트폰 및 태블릿</li>
		<li>IT제품</li>
		<br /><br /><br /><br /><br />
    </ul>
  </section> <!-- section cat1 -->
    
    <div class="item">
      <ul>
        <li><img src="../img/monitor.png"></li>
        <li class="subject">제품명 : 모니터</li>
        <li class="comment">WJ29IFOFOOF</li>
        <li class="comment">60Hz 주사율의 커보드 모니터</li>
        <li class="price">가격 : 100.000원</li>
      </ul>
    </div>
    
    <div class="item">
      <ul>
        <li><img src="../img/mouse1.png"></li>
        <li class="subject">제품명 : 마우스</li>
        <li class="comment">제품번호 : ZI203OJFI23</li>
        <li class="comment">게이머를 위한 전용 마우스</li>
        <li class="price">가격 : 20,000원</li>
      </ul>
    </div>
    
    <div class="item">
      <ul>
        <li><img src="../img/keyboard.png"></li>
        <li class="subject">제품명 : 키보드</li>
        <li class="comment">제품번호 : KASI0IF0223</li>
        <li class="comment">게이머를 환경에 적합한 동시 키 입력 기능 강화</li>
        <li class="price">가격 : 180,000원</li>
      </ul>
    </div>
    
    <div class="item">
      <ul>
        <li><img src="../img/computer.png"></li>
        <li class="subject">제품명 : 데스크탑</li>
        <li class="comment">제품번호 : KACUQC78S</li>
        <li class="comment">고성능 사양</li>
        <li class="price">가격 : 880.000원</li>
      </ul>
    </div>
    
   
    <div class="item">
      <ul>
        <li><img src="../img/printer.png"></li>
        <li class="subject">제품명 : 스피커</li>
        <li class="comment">제품번호 : Print-0121</li>
        <li class="comment">출력비용이 절약</li>
        <li class="price">가격 : 880.000원</li>
      </ul>
    </div>
    <div class="item">
      <ul>
        <li><img src="../img/wireless.png"></li>
        <li class="subject">제품명 : 공유기</li>
        <li class="comment">제품번호 : Unoqi-311</li>
        <li class="comment">무선인터넷 환경</li>
        <li class="price">가격 : 75.000원</li>
      </ul>
    </div>
    <div class="item">
      <ul>
        <li><img src="../img/headphone.png"></li>
        <li class="subject">제품명 : 헤드셋</li>
        <li class="comment">제품번호 : WR-211</li>
        <li class="comment">게이밍 헤드셋</li>
        <li class="price">가격 : 50.000원</li>
      </ul>
    </div>
  </section> <!-- section new -->



</body>
</html>