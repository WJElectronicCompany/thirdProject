<%@page import="java.util.ArrayList"%>
<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<link rel="stylesheet" href="../Resources/prodictListStyle.css" />
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<style>
.li1 {
	list-style: none
}

.li2 {
	font-size: 10px;
}
</style>
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>

	<section id="new">
		<h3>
			<span>NEW ARRIVAL</span> 제품 소개
		</h3>


		<section id="cat1">
			<div id="cat_title">CATEGORY ITEM</div>
			<ul>
				<li><a
					href="/WJElectronics/client/productListForm.do?category=all&pageNum=1">전체보기</a></li>
				<li><a
					href="/WJElectronics/client/productListForm.do?category=모니터&pageNum=1">모니터</a></li>
				<li><a
					href="/WJElectronics/client/productListForm.do?category=키보드&pageNum=1">키보드</a></li>
				<li><a
					href="/WJElectronics/client/productListForm.do?category=마우스&pageNum=1">마우스</a></li>
				<li><a
					href="/WJElectronics/client/productListForm.do?category=음향기기&pageNum=1">음향기기</a></li>
			</ul>
		</section>
		<!-- section cat1 -->

		<section id="main">

			<% ArrayList<ProductVO> productList = (ArrayList<ProductVO>)request.getAttribute("productList");
			for(ProductVO product : productList) {
				String[] infoArr = product.getInfo().split("\\+");%>
				<div class="item">
					<ul>
						<li style="list-style: none;">
						<img src=<%=product.getImageLink() %> height="50" width="50"></li>
						<li class="subject" style="list-style: none;">제품명 : <%=product.getpName() %></li>
						<li class="comment" style="list-style: none;">제품코드 : <%=product.getpCode() %></li>
						<%for(String info : infoArr) { %>
						<li class="comment"><%=info %></li>
						<%} %>
						<li class="price" style="list-style: none;">가격 : <%=product.getPrice() %>원
						</li>
					</ul>
					<% %>
					<a href=""><input type="button" value="구매하기" /></a>&nbsp;&nbsp; 
					<input type="button" value="담기" onclick= "checkLogin(); addProductToBasket('<%=product.getpCode() %>', '<%=product.getpName() %>', 
									'<%=product.getPrice() %>', '<%=product.getCategory() %>', '<%=product.getInfo() %>', '<%=product.getImageLink() %>')" /> 
				</div>
			<% } %>
		</section>
		</section>
		<div class="footer">
			<c:if test="${count>0 }">
				<c:set var="imsi" value="${count % pageSize == 0 ? 0: 1}" />
				<c:set var="pageCount" value="${count / pageSize + imsi}" />
				<c:set var="pageBlock" value="${3}" />
				<fmt:parseNumber var="result" value="${(pageNum-1) / pageBlock}"
					integerOnly="true" />
				<c:set var="startPage" value="${result*pageBlock+1}" />
				<c:set var="endPage" value="${startPage + pageBlock-1}" />
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}"></c:set>
				</c:if>
				<c:if test="${startPage > pageBlock}">
					<a
						href="/WJElectronics/client/productListForm.do?category=${category }&pageNum=${startPage - pageBlock}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<a
						href="/WJElectronics/client/productListForm.do?category=${category }&pageNum=${i}">[${i}]</a>
				</c:forEach>
				<c:if test="${endPage < pageCount}">
					<a
						href="/WJElectronics/client/productListForm.do?category=${category }l&pageNum=${startPage  + pageBlock}">[다음]</a>
				</c:if>
			</c:if>
		</div>
	
	
	<div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>
</body>
</html>