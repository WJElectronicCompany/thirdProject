<%@page import="java.util.ArrayList"%>
<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<link rel="stylesheet" href="../Resources/prodictListStyle.css" />
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<style>
.li1 {
	list-style: none
}

.li2 {
	font-size: 10px;
}
</style>
<title>WJ 전자</title>
</head>
<body>
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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> ${sessionScope.id } 님 <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a
								href="/WJElectronics/client/mypage.do?id=${sessionScope.id }">내
									정보</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul></li>
				</c:if>
			</ul>
		</div>
	</nav>

	
	<section id="new">
		<h3>
			<span>NEW ARRIVAL</span> 제품 소개
		</h3>

		
			<section id="cat1">
				<div id="cat_title">CATEGORY ITEM</div>
				<ul>
					<li><a href="#">컴퓨터 및 노트북</a></li>
					<li><a href="#">컴퓨터 주변기기</a></li>
					<li><a href="#">스마트폰 및 태블릿</a></li>
					<li><a href="#">IT제품</a></li>
				</ul>
			</section>
			<!-- section cat1 -->
			
			<section id="main">
				<% ArrayList<ProductVO> productList = (ArrayList<ProductVO>)request.getAttribute("productList");
					 for(ProductVO product : productList) {
					 	String[] infoArr = product.getInfo().split("\\+");%>
						<div class="item">
							<ul>
								<li style="list-style: none;"><img src=<%=product.getImageLink() %> height="205" width="206"></li>
								<li class="subject" style="list-style: none;">제품명 : <%=product.getpName() %></li>
								<li class="comment" style="list-style: none;">제품코드 : <%=product.getpCode() %></li>
								<%for(String info : infoArr) { %>
									<li class="comment" ><%=info %></li>						
								<%} %>
								<li class="price" style="list-style: none;">가격 : <%=product.getPrice() %>원</li>
							</ul>
						</div>
					<%} %>
			</section>
	</section>
</body>
</html>