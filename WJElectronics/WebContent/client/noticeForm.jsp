<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<script src = "../Resources/jquery-3.3.1.js"></script>
<script src  = "../Resources/js/bootstrap.js"></script>
<script src  = "../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>
	<!-- 게시판 부분 -->
	<br /><br /><br /><br /><br /><br /><br />
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thread>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
				</tr>
				</thread>
				<tbody>
					<c:if test="${not empty vo}">
						<c:forEach var="item" items="${vo}">
							<tr>
								<td>${item.clno}</td>
								<td>${item.title}</td>
								<td>${item.sdate}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
	
	
	<div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>
</body>
</html>