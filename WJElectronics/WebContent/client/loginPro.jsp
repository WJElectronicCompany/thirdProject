<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<c:if test="${result == 1}">
		<%	session.setAttribute("id", request.getParameter("id"));
			session.setAttribute("productList", new ArrayList<ProductVO>());%>
		<script>
			sessionStorage.setItem("id", '<%=request.getParameter("id") %>')
			alert("환영합니다");
			location.href="index.jsp";
		</script>
		
	</c:if>
	
	<c:if test="${result == -1}">
		<script>
			alert("아이디가 없습니다.");
			history.go(-1);
		</script>
	</c:if>
	
	<c:if test="${result == -2}">
		<script>
		alert("비밀번호가 틀립니다.");
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