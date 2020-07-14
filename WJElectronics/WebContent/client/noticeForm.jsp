<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>
	<!-- 게시판 부분 -->
	<br />
	<br />
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
					<c:set var="i" value="1"/>
					<c:set var="p" value="${pageNum }"/>				
						<c:forEach var="item" items="${vo}">
							<tr>
								<td>${i + (p-1)*10 }</td>
								<td><a href="/WJElectronics/client/cliNoticeOne.do?clno=${item.clno }">${item.title}</a></td>
								<td>${item.sdate}</td>
								<c:set var="i" value="${i+1 }"/>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<div align="center">
				<c:if test="${count>0 }">
					<c:set var="imsi" value="${count % pageSize == 0 ? 0: 1}" />
					<!-- 게시글 수가 페이지사이즈에 맞는지(안맞으면 페이지 하나 늘려주기 위해) -->
					<c:set var="pageCount" value="${count / pageSize + imsi}" />
					<!-- 페이지 수  -->
					<c:set var="pageBlock" value="${3}" />
					<!-- 보이는 페이지 수 -->
					<fmt:parseNumber var="result" value="${(pageNum-1) / pageBlock}"
						integerOnly="true" />
					<!-- 현재 페이지에서 1을 뺀 다음 블록을 나눠줌 -->
					<c:set var="startPage" value="${result*pageBlock+1}" />
					<c:set var="endPage" value="${startPage + pageBlock-1}" />
					<c:if test="${endPage > pageCount}">
						<c:set var="endPage" value="${pageCount}"></c:set>
					</c:if>
					<c:if test="${startPage > pageBlock}">
						<a
							href="/WJElectronics/client/cliNotice.do?pagenumber=${startPage - pageBlock}">[이전]</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="/WJElectronics/client/cliNotice.do?pagenumber=${i}">[${i}]</a>
					</c:forEach>
					<c:if test="${endPage < pageCount}">
						<a
							href="/WJElectronics/client/cliNotice.do?pagenumber=${startPage  + pageBlock}">[다음]</a>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>








	<div>
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>