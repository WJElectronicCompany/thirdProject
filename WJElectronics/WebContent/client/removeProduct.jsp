<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function confirm() {
	opener.location.reload();
	self.close();
}
</script>
</head>
<body>
	<h4 align="center">해당 상품을 취소했습니다.</h4>
		<% 	ArrayList<ProductVO> productList = (ArrayList<ProductVO>)session.getAttribute("productList");
			productList.remove(Integer.parseInt(request.getParameter("index")));%>
		
	<div align="center"><input type="button" value="확인" onclick="confirm()" /></div>
</body>
</html>