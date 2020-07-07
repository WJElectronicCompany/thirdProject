<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src ="../Resources/script.js"></script>
</head>
<body>
	<div align="center">
		<b>${param.id}</b>
		<c:if test="${result == 1}">
		는 사용가능합니다.
	</c:if>

		<c:if test="${result == -1}">
		는 사용중입니다.
	</c:if>

		<c:if test="${result==-3}">
			<script>
				alert("서버가 점검중입니다.");
				history.go(-1);
			</script>
	</c:if>
	<div align="center"><input type="button" value="확인" onclick="javascript:self.close()" /></div>
	</div>
</body>
</html>