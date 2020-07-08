<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<c:if test="${result == 1}">
		<script>
			alert("가입되었습니다.");
			location.href="index.jsp";
		</script>
		
	</c:if>
	
	<c:if test="${result == -1}">
		<script>
			alert("가입에 실패했습니다. 잠시후 다시 시도해 주세요");
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