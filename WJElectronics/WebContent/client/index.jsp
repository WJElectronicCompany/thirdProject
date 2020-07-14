<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WJ 전자</title>
<style>
   .indexslide {width:1500px; margin:100px;}
   .item {width:100%;}
</style>
</head>
<body>
   <header>
      <jsp:include page="topNav.jsp"></jsp:include>
   </header>
   
   <div class="indexslide" align="center">
      <div id="indexbodyslide" class="carousel slide">
            <ol class="carousel-indicators">
               <li data-target="#indexbodyslide" data-slide-to="0" class="active"></li>
               <li data-target="#indexbodyslide" data-slide-to="1"></li>
               <li data-target="#indexbodyslide" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="item active">
                  <img src="../Resources/images/enterprise/33.jpg" />
                  <div class="carousel-caption" style="color:blue;">
                  <h1>WJ 전자는 사람이 먼저 입니다.</h1>
                  </div>
               </div>
               <div class="item">
                  <img src="../Resources/images/enterprise/11.jpg" />
                  <div class="carousel-caption" style="color:orange;">
                  <h1>WJ 전자는 신뢰 할 수 있습니다.</h1>
                  </div>
               </div>
               <div class="item">
                  <img src="../Resources/images/enterprise/11.jpg" />
                  <div class="carousel-caption" style="color:green;">
                  <h1>WJ 전자는 끈기를 가지며 쉽게 포기하지 않습니다.</h1>
                  </div>
               </div>
         </div>
      <a class="left carousel-control" href="#indexbodyslide" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left-none" aria-hidden="true"></span></a>
      <a class="right carousel-control" href="#indexbodyslide" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right-none" aria-hidden="true"></span></a>
      </div>
   </div>
   <script>
      $(function(){
         $('#indexbodyslide').carousel({
            interval: 3000,
            pause: "hover",
            wrap: true,
            keyboard: true
         });
      });
   </script>
   <div>
   <footer>
      <jsp:include page="footer.jsp"></jsp:include>
   </footer>
   </div>
</body>
</html>