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
						<td colspan="1">${vo.writer }</td>
						<td colspan="2">${vo.date }</td>
					</tr>

					<tr>
						<td colspan="3" style="height: 350px;">${vo.content }</td>
					</tr>

					<tr>
						<td><c:if test="${vo.asNo > 1}">
								<a href="/WJElectronics/client/asView.do?asno=${vo.asNo + 1 }">이전글
								</a>
							</c:if></td>
						<td><a
							href="/WJElectronics/client/asListForm.do?pagenumber=1">목록</a></td>
						<td><c:if test="${vo.asNo < lastPage}">
								<a href="/WJElectronics/client/asView.do?asno=${vo.asNo - 1 }">다음글</a>
							</c:if></td>
					</tr>

				</tbody>
			</table>
		</div>

		<!-- 댓글  -->
		<!-- 댓글 부분 -->
		<div id="comment">
			<table border="1" bordercolor="lightgray">
				<!-- 댓글 목록 -->
				<c:if test="${not empty comment}">
					<c:forEach var="comment" items="${comment}">

						<tr>
							<!-- 아이디, 작성날짜 -->
							<td width="150">
								<div>
									${comment.id}<br> <font size="2" color="lightgray">${comment.date}</font>
								</div>
							</td>
							<!-- 본문내용 -->
							<td width="550">
								<div class="text_wrapper">${comment.content}</div>
							</td>
							<%-- <!-- 버튼 -->
							<td width="100">
								<div id="btn" style="text-align: center;">
									<a href="#">[답변]</a><br>
									<!-- 댓글 작성자만 수정, 삭제 가능하도록 -->
									<c:if test="${comment.comment_id == sessionScope.sessionID}">
										<a href="#">[수정]</a>
										<br>
										<a href="#">[삭제]</a>
									</c:if>
								</div>
							</td> --%>
						</tr>

					</c:forEach>
				</c:if>

				<%-- <!-- 로그인 했을 경우만 댓글 작성가능 -->
				<c:if test="${sessionScope.id !=null}">
					<tr bgcolor="#F5F5F5">
						<form id="writeCommentForm">
							<input type="hidden" name="comment_board"
								value="${board.board_num}"> <input type="hidden"
								name="comment_id" value="${sessionScope.sessionID}">
							<!-- 아이디-->
							<td width="150">
								<div>${sessionScope.sessionID}</div>
							</td>
							<!-- 본문 작성-->
							<td width="550">
								<div>
									<textarea name="comment_content" rows="4" cols="70"></textarea>
								</div>
							</td>
							<!-- 댓글 등록 버튼 -->
							<td width="100">
								<div id="btn" style="text-align: center;">
									<p>
										<a href="#" onclick="writeCmt()">[댓글등록]</a>
									</p>
								</div>
							</td>
						</form>
					</tr>
				</c:if> --%>

			</table>
		</div>



	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>