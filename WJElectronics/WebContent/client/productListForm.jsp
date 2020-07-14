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
<link rel="stylesheet" href="../Resources/prodictListStyle.css?ver=1" />
<script>
   function SelectedItemPurchase() {
      alert("결제되었습니다. 구매내역을 확인해 주세요");
      self.close();
   }
</script>
<title>WJ 전자</title>
<style>

div #new {
   height: 650px;
   margin-top: 20px;
   border-top: solid 2px #9bc32a;
}

div #new h3 {
   margin: 20px 0 0 35px;
}

div #new h3 span {
   color: #80a727;
}

div #new .item {
   float: left;
   text-align: center;
   margin: 20px 0 0 32px;
}

div #new .item .subject {
   margin-top: 10px;
   color: #80a727;
}

div #new .item .comment {
   margin-top: 5px;
   color: #888888;
}

div #new .item .price {
   margin-top: 5px;
   font-weight: bold;
}

/* 硫붿씤 肄섑뀗痢  */
div #main {
}
/* 醫뚯륫 移댄뀒怨좊━ + 硫붿씤  씠誘몄  + 怨듭  궗 빆/二쇨컙  씠踰ㅽ듃 */
div #cat1 {
   width: 215px;
   float: left;
   margin-top: 15px;
   margin-left: 10px;
   font-weight: bold;
}

div #cat1 #cat_title {
   padding: 12px;
   background-color: #564556;
   color: #ffffff;
   text-align: center;
}

div #cat1 li {
   color: #666666;
   padding: 7px 0 7px 30px;
   border-bottom: solid 1px #cccccc;
}

.colorstyle:not(.nonestyle) {
   background-color: #ffffff;
   opacity: 0.8;
}

.boldsize {
font-weight: bold;
}
</style>
</head>
<body>
   <header>
      <jsp:include page="topNav.jsp"></jsp:include>
   </header>
   <div id="new">
      <h3>
         <span style="padding-left: 10px;">제품 소개</span> 
      </h3>


      <div id="cat1">
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
      </div>
      </div>
      <!-- section cat1 -->
      <div class="container">
      <div id="main" align="center">
         <table border="1" class="colorstyle">
            <tr style="width:60%" class="nonestyle">
         <% ArrayList<ProductVO> productList = (ArrayList<ProductVO>)request.getAttribute("productList"); %>
         
         <%if(productList.size() == 0) { %>
            <tr>
               <h2>상품 목록을 준비 중입니다.</h2>
            </tr>
         <% } else  {%>
            <%   for(int i = 0; i < productList.size(); i++) {
               String[] infoArr = productList.get(i).getInfo().split("\\+");%>
                     <td align="center" width="20%" class="boldsize"><img src=<%=productList.get(i).getImageLink() %> style="height: 100px; width: 100px;"> <br />
                        <b><%=productList.get(i).getpName() %></b></td>
                        <td width="30%" class="boldsize"> <br /> &nbsp;&nbsp;&nbsp;<%=productList.get(i).getpCode() %> <br /><br />
                        <ul> <%for(String info : infoArr) { %>
                        <li style="list-style: disc;"> <%=info %> </li> <%} %></ul>
                         <br /><br />
                        &nbsp;&nbsp;&nbsp;가격 : &nbsp;<%=productList.get(i).getPrice() %>원 <br /><br /><br />&nbsp;&nbsp;
                        <div align="center"  style="margin-bottom: 5%;">
                           수량 : <input type="text" name="quantityOfProduct<%=i %>" id="quantityOfProduct<%=i %>" value="1" /> (개) &nbsp;&nbsp;
                           <input id="buy" type="button" value="구매하기" onclick="checkLogin(); checkInputOfProductQuantity('<%=i%>'); doPayment('<%=session.getAttribute("id") %>','<%=productList.get(i).getpCode() %>','<%=productList.get(i).getPrice() %>','SelectedItemPurchase','<%=i%>');"/> &nbsp; 
                           <input id="add" type="button" value="담기" onclick="checkLogin(); checkInputOfProductQuantity('<%=i%>'); addProductToBasket('<%=productList.get(i).getpCode() %>', '<%=productList.get(i).getpName() %>', 
                              '<%=productList.get(i).getPrice() %>','<%=i%>', '<%=productList.get(i).getCategory() %>', '<%=productList.get(i).getInfo() %>', '<%=productList.get(i).getImageLink() %>')" />
                        </div>      
                     </td>
                  
            <%if(i%2 == 1) { %> </tr><tr> <%} %> 
         <% } %>
      <% } %>
            </tr>
         </table>
         </div>
         <br /><br />
   <div class="footer" align="center" style="margin-bottom: 10%; margin-left: 10%">
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
            <a href="/WJElectronics/client/productListForm.do?category=${category }&pageNum=${i}">[${i}]</a>&nbsp;
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