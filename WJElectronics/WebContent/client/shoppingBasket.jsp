<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<link rel="stylesheet" href="../Resources/css/index.css">
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>

	<section id="main">

		<% ArrayList<ProductVO> productList = (ArrayList<ProductVO>)session.getAttribute("productList");
			for(int i = 0; i < productList.size(); i++) {
				String[] infoArr = productList.get(i).getInfo().split("\\+");%>
		<div class="item">
			<ul>
				<li style="list-style: none;"><img
					src=<%=productList.get(i).getImageLink() %> height="50" width="50"></li>
				<li class="subject" style="list-style: none;">제품명 : <%=productList.get(i).getpName() %></li>
				<li class="comment" style="list-style: none;">제품코드 : <%=productList.get(i).getpCode() %></li>
				<%for(String info : infoArr) { %>
				<li class="comment"><%=info %></li>
				<%} %>
				<li class="price" style="list-style: none;">가격 : <%=productList.get(i).getPrice() %>원
				</li>
			</ul>
			<input type="button" value="구매하기" onclick="" />&nbsp;&nbsp; <input
				type="button" value="삭제" onclick="removeProductToBasket('<%=i %>');" />
		</div>
		<% } %>
	</section>
	<div align="center">
		<input type="button" value="전체구매"
			onclick="doPayment('<%=session.getAttribute("id") %>')" />
		&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="장바구니 비우기"
			onclick="clearProductToBasket();" />
	</div>
</body>
</html>