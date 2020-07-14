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
<title>WJ 전자</title>
<style>
section#main {
   width: 990px;
   margin: 0 auto;
}

aside#left #cat_title {
   padding: 12px;
   text-align: center;
}

section#right tr.title {
   height: 50px;
   background-color: silver;
}

section#right th {
   padding: 10px;
}

section#right tr.items {
   height: 80px;
   border-bottom: solid 2px #cccccc;
}

section#right table {
   width: 100%;
   margin: 10px 0 0 0;
   border-top: solid 2px;
   border-left: solid 2px;
   border-right: solid 2px;
   border-bottom: solid 2px;
}
.colorstyle:not(.nonestyle) {
   background-color: #ffffff;
   opacity: 0.8;
}
</style>
</head>
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
   <div class="container">
   <section id="main">

      <section id="right">
         <h1 align="center">장바구니</h1>
         <table border="1" style="margin-bottom: 3%; margin-top: 3%;" class="colorstyle">

            <tr id="items">

               <%
                  ArrayList<ProductVO> productList = (ArrayList<ProductVO>) session.getAttribute("productList");
                  int totalPrice = 0;
               %>

               <%
                  for (int i = 0; i < productList.size(); i++) {
               %>
            
            <tr class="title">
               <th>제품사진</th>
               <th>제품명</th>
               <th>제품코드</th>
               <th>가격</th>
               <th>구매</th>
               <th>삭제</th>
               <th>수량</th>
            </tr>
            <tr>
               <td><img src=<%=productList.get(i).getImageLink()%>
                  style="height: 100px; width: 100px;"></td>
               <td>제품명 : <%=productList.get(i).getpName()%></td>
               <td>제품코드<%=productList.get(i).getpCode()%></td>
               <td>&nbsp;&nbsp;&nbsp;가격 : &nbsp;가격 :<%=productList.get(i).getPrice()%>원
               </td>
               <td><input type="button" value="구매하기"
                  onclick="checkInputOfProductQuantity('<%=i %>'); doPayment('<%=session.getAttribute("id") %>','<%=productList.get(i).getpCode() %>','<%=productList.get(i).getPrice() %>','basketSelectedItemPurchase','<%=i %>');"
                  class="btn btn-primary pull-left" />&nbsp;&nbsp;
               <td><input type="button" value="삭제"
                  onclick="removeProductToBasket('<%=i%>');"
                  class="btn btn-primary pull-left" /></td>
               <td><input type="text" placeholder="수량"
                  name="quantityOfProduct<%=i%>" id="quantityOfProduct<%=i%>"
                  value="<%=productList.get(i).getQuantity()%>" /> (개)
                  &nbsp;&nbsp;</td>

               <%
                  if (i % 2 == 1) {
               %>
            </tr>
            <tr>
               <%
                  }
               %>
               <%
                  totalPrice += productList.get(i).getPrice();
               %>
            </tr>
            <%
               }
            %>
         </table>
      </section>
      <div align="right">
         <b style="border: 1px;">총 금액 : <%=totalPrice%></b>
      </div>
      <br />
      <br />
      <div align="center" style="margin-bottom: 10%;">
         <input type="button" value="전체구매" onclick="doPayment('<%=session.getAttribute("id") %>',' ','<%=totalPrice %>','totalPurchase','0')" />
         &nbsp;&nbsp;&nbsp;&nbsp; 
         <input type="button" value="장바구니 비우기" onclick="clearProductToBasket();" />
    	  </div>
  	 </section>
   </div>
   <div>
      <footer>
         <jsp:include page="footer.jsp"></jsp:include>
      </footer>
   </div>
</body>
</html>