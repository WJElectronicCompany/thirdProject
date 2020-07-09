<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script>
function confirm() {
	opener.location.reload();
	self.close();
}
</script>
</head>
<body>
	<h4 align="center">장바구니를 비웠습니다.</h4>
	<% 	session.removeAttribute("productList");
		session.setAttribute("productList", new ArrayList<ProductVO>());%>
	<div align="center"><input type="button" value="확인" onclick="confirm()" /></div>
</body>
</html>