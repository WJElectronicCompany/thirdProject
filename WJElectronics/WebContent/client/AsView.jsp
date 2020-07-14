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
<script>
	function reply(index) {
		document.getElementById("commentLine" + index).style.display = '';
		document.getElementById("com").style.display = 'none';
	}
	function cancel(index) {
		document.getElementById("commentLine" + index).style.display = 'none';
		document.getElementById("com").style.display = '';
	}
</script>


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
						<th colspan="4"
							style="background-color: #eeeeee; text-align: center;">
							${vo.title }</th>
					</tr>

				</thead>
				<tbody>
					<tr>
						<td>작성자</td>
						<td width="250">${vo.writer }</td>
						<td>작성일</td>
						<td width="250">${vo.date }</td>
					</tr>

					<tr>
						<td colspan="4" style="height: 350px;">${vo.content }</td>
					</tr>

					<tr>
						<td><c:if test="${vo.asNo < lastPage}">
								<a href="/WJElectronics/client/asView.do?asno=${vo.asNo + 1 }">이전글
								</a>
							</c:if></td>
						<td colspan="2"><a
							href="/WJElectronics/client/asListForm.do?pagenumber=1">목록</a></td>
						<td><c:if test="${vo.asNo > 1}">
								<a href="/WJElectronics/client/asView.do?asno=${vo.asNo - 1 }">다음글</a>
							</c:if></td>
					</tr>

				</tbody>
			</table>
		</div>

		<!-- 댓글  -->
		<!-- 댓글 부분 -->
		<%
			int index = 0;
		%>
		<div id="comment">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<!-- 댓글 목록 -->

				<c:if test="${not empty comment}">
					<c:forEach var="comment" items="${comment}">

						<tr id="trId<%=index%>">
							<!-- 아이디, 작성날짜 -->
							<td>
								<div>
									${comment.id}<br> <font size="2" color="lightgray">${comment.date}</font>
								</div>
							</td>
							<!-- 본문내용 -->
							<td width="600" align="left">${comment.content}</td>
							<!-- 버튼 -->
							<td>
								<div id="btn" style="text-align: center;">
									<c:if test="${sessionScope.id !=null}">
										<button onclick="reply('<%=index%>')" style="">답변</button>
										<br>
									</c:if>
									<c:if test="${comment.id == sessionScope.id}">
										<!-- <a href="#">[수정]</a>
										<br> -->
										<a
											href="/WJElectronics/client/commentWriteAction.do?de=1&cono=${comment.cono}&asno=${vo.asNo}">[삭제]</a>
									</c:if>
								</div>
							</td>
						</tr>

						<form method="post" action="/WJElectronics/client/commentWriteAction.do?de=2">
							<tr bgcolor="#ffffff" style="display: none " id="commentLine<%=index%>">

								<!-- 아이디-->
								<td valign="middle"><input type="hidden" name="parent"
									value="${comment.cono}"> <input type="hidden"
									name="asno" value="${vo.asNo}"> <input type="hidden"
									name="id" value="${sessionScope.id}">
									<div>${sessionScope.id}</div></td>
								<!-- 본문 작성-->
								<td width="600">
									<div>
										<textarea name="content" placeholder="답글 내용" rows="4"
											cols="70"></textarea>
									</div>
								</td>
								<!-- 댓글 등록 버튼 -->
								<td valign="middle"><input type="submit" value="등록">
									<button onclick="cancel('<%=index%>')">취소</button></td>
							</tr>
						</form>


						<!-- 대댓글for문 -->
						<c:forEach var="cc" items="${ccomment}">
							<c:if test="${comment.cono == cc.parent }">
								<tr>
									<!-- 아이디, 작성날짜 -->
									<td>
										<div>
											<img src="../image/comment.png"> ${cc.id}<br> <font
												size="2" color="lightgray">${cc.date}</font>
										</div>
									</td>
									<!-- 본문내용 -->
									<td width="600" align="left">${cc.content}</td>
									<!-- 버튼 -->
									<td>
										<div id="btn" style="text-align: center;">
											<c:if test="${cc.id == sessionScope.id}">
												<!-- <a href="#">[수정]</a>
										<br> -->
												<a
													href="/WJElectronics/client/commentWriteAction.do?de=1&cono=${cc.cono}&asno=${vo.asNo}">[삭제]</a>
											</c:if>
										</div>
									</td>
								</tr>
							</c:if>
						</c:forEach>

					</c:forEach>
				</c:if>



				<!-- 로그인 했을 경우만 댓글 작성가능 -->
				<c:if test="${sessionScope.id !=null}">
					<form method="post"
						action="/WJElectronics/client/commentWriteAction.do?de=0">
						<tr bgcolor="#F5F5F5" id="com">
							<!-- 아이디-->
							<td valign="middle"><input type="hidden" name="asno"
								value="${vo.asNo}"> <input type="hidden" name="id"
								value="${sessionScope.id}">
								<div>${sessionScope.id}</div></td>
							<!-- 본문 작성-->
							<td width="600">
								<div>
									<textarea name="content" placeholder="댓글 내용" rows="4" cols="70"></textarea>
								</div>
							</td>
							<!-- 댓글 등록 버튼 -->
							<td valign="middle"><input type="submit" value="[댓글등록]">
							</td>
						</tr>
					</form>
				</c:if>

			</table>
		</div>



	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>