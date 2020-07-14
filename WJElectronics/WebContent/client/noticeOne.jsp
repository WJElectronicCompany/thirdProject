<%@page import="com.wj.client.model.VO.AsVO"%>
<%@page import="com.wj.client.model.DAO.AsDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰 포트 -->
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<!-- 스타일시트 참조 -->
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>

	<!-- 네비게이션 부분 -->
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>



	<!-- 글쓰기  -->
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
				<tr>
					<th colspan="3"
						style="background-color: #eeeeee; text-align: center;">
						${vo.title }</th>
				</tr>

				</thead>
				<tbody>
					<tr>
						<td colspan="3">${vo.sdate }</td>
					</tr>

					<tr>
						<td colspan="3" style="height: 350px;">${vo.content }</td>
					</tr>

					<tr>
						<td><c:if test="${vo.clno < lastPage}">
								<a href="/WJElectronics/client/cliNoticeOne.do?clno=${vo.clno +1 }">이전글
								</a>
							</c:if></td>
						<td><a href="/WJElectronics/client/cliNotice.do?pagenumber=1">목록</a></td>
						<td><c:if test="${vo.clno > 1}">
								<a href="/WJElectronics/client/cliNoticeOne.do?clno=${vo.clno -1 }">다음글</a>
							</c:if></td>
					</tr>

				</tbody>
			</table>
		</div>



	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>