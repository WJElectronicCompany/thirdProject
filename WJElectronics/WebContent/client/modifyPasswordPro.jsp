<%@page import="com.wj.client.model.VO.ClientVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호수정</title>
</head>
<body>
	<c:if test="${result == 1}">
		<script>
			var id = '<%=session.getAttribute("id")%>'
			alert("비밀번호가가 수정되었습니다");
			self.close();
		</script>
	</c:if>

	<c:if test="${result == -1}">
		<script>
			alert("정보수정에 실패했습니다. 잠시후 다시 시도해 주세요");
			history.go(-1);
		</script>
			
	</c:if>

	<c:if test="${result == -10}">
		<script>
			alert("가입 정보가 맞지 않습니다.");
			history.go(-1);
		</script>
	</c:if>

	<c:if test="${result == -11}">
		<script>
			alert("비밀번호가 맞지 않습니다.");
			history.go(-1);
		</script>
	</c:if>

	<c:if test="${result==-3}">
		<script>
			alert("서버가 점검중입니다.");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>