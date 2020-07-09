<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 담기</title>
</head>
<body>
	<h4 align="center">해당 상품을 장바구니에 담았습니다.</h4>
	<%((ArrayList<ProductVO>)session.getAttribute("productList")).add(new ProductVO(
			request.getParameter("pcode"),request.getParameter("pname"),Integer.parseInt(request.getParameter("price")),
			request.getParameter("category"),request.getParameter("info"),request.getParameter("imageLink"))); %>
	<div align="center"><input type="button" value="확인" onclick="javascript:self.close();" /></div>
</body>
</html>