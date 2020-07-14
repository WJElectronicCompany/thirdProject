<%@page import="com.wj.client.model.VO.purchaseVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WJ 전자</title>
</head>
<style>
.colorstyle:not(.nonestyle) {
   background-color: #ffffff;
   opacity: 0.8;
}	
</style>
<script>
	function basketSelectedItemPurchaseScript(index) {
		removeProductToBasket(index);
	}
	
	function totalPurchaseScript() {
		clearProductToBasket();
	}
</script>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>
	<div align="center" style="margin-left: 20%; margin-right: 20%;">
		<h1 style="margin-bottom: 5%; margin-top: 5%">구매 내역</h1>
		<div id="main" align="center" style="margin-bottom: 5%;">
	
			<% 	ArrayList<purchaseVO> purchaseList = (ArrayList<purchaseVO>)request.getAttribute("purchaseList");  %>
				 
			<%for(int i = 0; i < purchaseList.size(); i++) { %>
				<table border="1" style="width:60%; margin-bottom: 5%;" class="colorstyle">
					<tr>
						<th style="text-align: center;"><br />거래 코드<br /><br /></th><th style="text-align: center;"><br />거래 품목<br /><br /></th><th style="text-align: center;"><br />수량<br /><br /></th>
						<th style="text-align: center;"><br />총액<br /><br /></th><th style="text-align: center;"><br />거래일<br /><br /></th><th style="text-align: center;"><br />상태<br /><br /></th>
					</tr>
					<% if(purchaseList.get(i).getPurchaseType().equals("singleProduct")) { %>
						<tr>
							<td align="center"><br /><b><%=purchaseList.get(i).getPurchaseCode() %></b><br /><br /></td>
							<td align="center"><br /><b style="color: blue;"><button onclick="openProductInfoForm('<%=purchaseList.get(i).getProductCode() %>');"><%=purchaseList.get(i).getProductCode() %></button></b><br /><br /></td>
							<td align="center"><br /><b><%=purchaseList.get(i).getQuantity() %></b><br /><br /></td>
							<td align="center"><br /><b><%=purchaseList.get(i).getPrice() %></b><br /><br /></td>
							<td align="center"><br /><b><%=purchaseList.get(i).getPurchaseDate() %></b><br /><br /></td>
							<td align="center"><br /><b><%=purchaseList.get(i).getStatus() %></b><br /><br /></td>
						</tr>
					<%} %>
					<% if(purchaseList.get(i).getPurchaseType().equals("multiProduct")) { %>
						<%	String[] productCode = purchaseList.get(i).getProductCode().split("~");
							String[] quantitys = purchaseList.get(i).getQuantity().split("~");%>
						<tr>
							<td align="center"><b><%=purchaseList.get(i).getPurchaseCode() %></b><br /></td>
							
							<td align="center"> <%	for(int j = 0; j < productCode.length; j++) { %>
								<br /><b style="color: blue;"><button onclick="openProductInfoForm('<%=productCode[j] %>');"><%=productCode[j] %></button></b><br />
							<% } %> </td>
							<td align="center"> <%	for(int j = 0; j < productCode.length; j++) { %>
								<br /><b><%=quantitys[j] %></b> <br />
							<% } %> </td>
							<td align="center"><b><%=purchaseList.get(i).getPrice() %></b><br /></td>
							<td align="center"><b><%=purchaseList.get(i).getPurchaseDate() %></b><br /></td>
							<td align="center"><b><%=purchaseList.get(i).getStatus() %></b><br /></td>
						</tr>
					<%} %>
				</table>
			<%} %>
		</div>
		<div class="page" align="center" style="margin-bottom: 10%; margin-left: 10%">
		<c:if test="${count>0 }">
			<c:set var="imsi" value="${count % pageSize == 0 ? 0: 1}" />
			<c:set var="pageCount" value="${count / pageSize + imsi}" />
			<c:set var="pageBlock" value="${3 }" />
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
	</div>
	
	<div>
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>