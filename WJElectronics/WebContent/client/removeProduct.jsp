<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 구매</title>
<script>
function confirm() {
	opener.location.reload();
	self.close();
}
</script>
</head>
<body>
	<% 	ArrayList<ProductVO> productList = (ArrayList<ProductVO>)session.getAttribute("productList");
			productList.remove(Integer.parseInt(request.getParameter("index")));%>
	<%	if(request.getParameter("cmd") == null) { %> 
		<h4 align="center">해당 상품을 취소했습니다.</h4>
		<div align="center"><input type="button" value="확인" onclick="confirm()" /></div>
	<% } else {%> 
		<h4 align="center">이용해 주셔서 감사합니다. <br /> 구매한 상품은 주문 내역에서 확인하실 수 있습니다.</h4>
		<div align="center"><input type="button" value="확인" onclick="confirm()" /></div>
	<% } %>

</body>
</html>