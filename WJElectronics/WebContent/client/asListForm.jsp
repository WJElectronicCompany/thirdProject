<%@page import="com.wj.client.model.DAO.AsDAO"%>
<%@page import="com.wj.client.model.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰 포트 -->
<meta name="viewport" content="width=device-width", initial-scale="1" />
<!-- 스타일시트 참조 -->
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<script src = "../Resources/jquery-3.3.1.js"></script>
<script src  = "../Resources/js/bootstrap.js"></script>
<script src  = "../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	
<!-- 네비게이션 부분 -->
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
				<li><a href="productListForm.jsp">판매목록</a></li>
				<li class="active"><a href="asListForm.jsp">고객지원</a></li>
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
	
	<!-- 게시판 부분 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
				<thread>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">번호</th>
						<th style="background-color: #eeeeee; text-align:center;">제목</th>
						<th style="background-color: #eeeeee; text-align:center;">작성자</th>
						<th style="background-color: #eeeeee; text-align:center;">작성일</th>
					</tr>
				</thread>
				<tbody>
					<%--글 목록 가져오는 부분--%>
					
					<!-- <tr>
						<td>1</td>
						<td>안녕하세요</td>
						<td>홍길동</td>
						<td>2020-07-07</td>
					</tr> -->
				</tbody>
			</table>
			<!-- 페이지 넘기기 -->
			
			<%
				/* if(pageNumber != 1){
					
				} */
			%>
			
		 	<!-- 버튼 구현 및 글쓰기 버튼 구현 -->
				<!-- 회원만넘어가도록 -->

			<%

			//if logined userID라는 변수에 해당 아이디가 담기고 if not null

			if (session.getAttribute("id") != null) {

			%>

			<a href="writeAS.jsp" class="btn btn-primary pull-right">글쓰기</a>

			<% } else { %>

			<button class="btn btn-primary pull-right" onclick="if(confirm('로그인이 필요한 서비스입니다.'))location.href='loginForm.jsp';" type="button" >글쓰기</button>

			<% }%>		



		</div>

	</div>

<!-- 토글메뉴  고객지원> as>교환 및 환불,칭찬합니다 -->

	
</body>
</html>