<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WJ 전자</title>
<style>
body{
color:#000000;
}
section #new h3 {
   margin: 20px 0 0 35px;
}

/* 硫붿씤 肄섑뀗痢  */
section #main {
   
}
/* 醫뚯륫 移댄뀒怨좊━ + 硫붿씤  씠誘몄  + 怨듭  궗 빆/二쇨컙  씠踰ㅽ듃 */
section #cat1 {
   width: 215px;
   float: left;
   margin-top: 15px;
   margin-left: 10px;
   font-weight: bold;
}

section #cat1 #cat_title {
   padding: 12px;
   background-color: #564556;
   color: #ffffff;
   text-align: center;
}

section #cat1 li {
   color: #666666;
   padding: 7px 0 7px 30px;
   border-bottom: solid 1px #cccccc;
}

.bodycontents-companyhistory table {
   font-size: 25px;
}

.bodycontents-vision img {
   margin: 20px;
   padding: 20px;
}

.bodycontents-vision tr, td {
   margin: 10px 10px 30px 30px;
   padding: 20px;
}

</style>

</head>
<body>

   <!--헤더-->
   <header>
      <jsp:include page="topNav.jsp"></jsp:include>
   </header>
   <!--헤더 끝-->
   <br>


   <section id="new">

      <h3>회사 소개</h3>

      <section id="cat1">

         <section id="cat_title">About WJElectronics</section>

         <ul>

            <li><div class="menu-li1">
                  <span><a href="#">대표 인사말</a></span>
               </div></li>
            <li><div class="menu-li2">
                  <span><a href="#">WJ의 3대가치</a></span>
               </div></li>
            <li><div class="menu-li3">
                  <span><a href="#">WJ의 발자취</a></span>
               </div></li>
            <li><div class="menu-li4">
                  <span><a href="#">오시는 길</a></span>
               </div></li>

         </ul>
      </section>
      <!-- section cat1 -->
      <section id="main">

         <div align="center">

            <!--가운데 내용-->
            <div>

               <div class="bodycontents-companyinfo" id="bodycontents-cominfo">
                  <!--타이틀  -->
                  <table id="title" border=0
                     style="width: 40%; margin-right: 200px;">
                     <tr>
                        <td>
                           <div
                              style="text-align: left; font-size: 30px; font-weight: bold; color: #000000; font-family: 돋움;">
                              <img src="../Resources/images/enterprise/head.png"
                                    height="30px" width="30px" />&nbsp;대표 인사말 <br>
                              <br>
                           </div>
                        </td>
                     </tr>
                  </table>

                  <!--타이틀 끝  -->

                  <!--회사 소개  -->
                  <table class="bodycontent-companyhistory"
                     style=" margin-right: 200px; width: 40%;  background-color:rgba( 255, 255, 255, 0.6 );
      };">

                     <tr align="center">
                        <td><br>
                        <img src="../Resources/images/enterprise/44.jpg" width=400px
                           height=300px /> <br>
                           <h2>"사람이 미래를 만든다"</h2> <br>
                     <tr align="center">
                        <td colspan=2><br> <br>

                           <h3>라는 말은 저희 기업 신념입니다.</h3> <br> <br>
                           <div style="font-weight: bold; font-size: 20px;">
                              기업은 이윤을 추구하기 위해 존재하지만, 결코 사람보다 우선시 될 수 없습니다.<br> WJ의 직원은
                              가족이자 자산이라는 생각으로 기업을 운영하고 있습니다.<br> 더 나은 WJ,발전하는 WJ가 되도록
                              노력하겠습니다.<br> <br>
                           </div>

                           <h2>WJElectronics 대표 장우진</h2></td>
                     </tr>

                  </table>
               </div>
               <br> <br> <br>

               <div class="bodycontents-companyhistory"
                  id="bodycontents-comhistory">

                  <!--타이틀  -->
                  <table id="title" border=0 style="width:40%; margin-right: 200px;">
                     <tr>
                        <td>
                           <div
                              style=" text-align: left; font-size: 30px; font-weight: bold; color: #000000; font-family: 돋움;">
                              <img src="../Resources/images/enterprise/head.png"
                                  height="30px" width="30px" />&nbsp;WJ의 발자취<br>
                              <br>
                           </div>
                        </td>
                     </tr>
                  </table>

                  <!--타이틀 끝  -->
                  <!--회사 연혁  -->

                  <table border=0 style=" margin-right: 100px; width:50%; background-color:rgba( 255, 255, 255, 0.6 )" >

                     <tr align="center">
                        <td><h2>2015</h2></td>
                        <td><br>장우진 대표,회사 설립(2015.03.23)<br> 첫 제품 "anti-12"마우스
                           출시(2015.07.01)<br><br>
                        </td>
                     </tr>

                     <tr align="center">
                        <td><h2>2016</h2></td>
                        <td><br>WenQ 모니터 출시(2016.04.03)<br><br>
                        </td>
                     </tr>
                     <tr align="center">
                        <td><h2>2017</h2></td>
                        <td><br>게이밍 해드셋 "kaja2020" 출시(2017.02.23)<br> 마우스
                           "haha333" 출시(2017.08.12)<br><br>
                        </td>
                     </tr>
                     <tr align="center">
                        <td><h2>2018</h2></td>
                        <td><br>블루투스 스피커 "babo1010" 출시(2018.01.15)<br> 블루투스 이어폰
                           "ondal0101" 출시(2018.05.03)<br> 장우진 대표 ,"한국을 빛낸 경영인
                           top100"(경향신분,2018.03.23)<br><br>
                        </td>
                     </tr>
                     <tr align="center">
                        <td><h2>2019</h2></td>
                        <td><br>2018년 전자 제품 매출 3위(동아일보,2019.02.12)<br> "직장인이 가장
                           가고싶은 회사 2위"(조선일보,2018.12.12)<br><br>
                        </td>
                     </tr>


                  </table>
                  <br> <br>

               </div>


            </div>

            <div class="bodycontents-vision" id="bodycontents-vi">
           
               <!--타이틀  -->
               <table id="title" border=0 style="width: 70%; "  >
                  <tr>
                     <td>
                        <div style="text-align: left; font-size: 30px; font-weight: bold; color: #000000; font-family: 돋움;">
                           <img src="../Resources/images/enterprise/head.png" style="height:70px; width:70px;" >WJ의 3대 핵심 가치 
                           <br><br>
                        </div>
                     </td>
                  </tr>
               </table>
              
               <!--타이틀 끝  -->
               <table style="background: #c0c0c0; margin-left: 100px; background-color:rgba( 255, 255, 255, 0.6 )">
                  <tr align="center">
                     <td><img src="../Resources/images/enterprise/1.jpg"
                        width=400px height=300px /></td>
                     <td><img src="../Resources/images/enterprise/2.jpg"
                        width=400px height=300px /></td>
                     <td><img src="../Resources/images/enterprise/3.jpg"
                        width=400px height=300px /></td>
                  </tr>
                  <tr align="center">
                     <td><h2>사람</h2></td>
                     <td><h2>신뢰</h2></td>
                     <td><h2>끈기</h2></td>
                  </tr>
               </table>
               <br>
               <br>

            </div>



            <div class="bodycontents-maps" id="bodycontents-mp">
               <!--타이틀  -->
               <table id="title" border=0 style="width:40%; margin-right: 200px;">
                  <tr>
                     <td>
               <div style="text-align:left; font-size:30px; font-weight:bold; color:#000000; font-family:돋움;" ><img src="../Resources/images/enterprise/head.png"
                      height="30px" width="30px" />&nbsp;WJ전자로 오시는 길 <br><br> </div></td>
                  </tr>
               </table>
               
               <!--타이틀 끝  -->
               <div style="width:50%; background-color:rgba( 255, 255, 255, 0.6 );"> 
               <br>
               <div id="map"
                  style="width: 600px; height: 500px; "></div>

               <div text-align="center" style="font-weight:bold; color:#000000;">
                  <h2>
                  <br>
                  <br>
                     주소 :서울특별시 서초구 양재동 11-17><br> (양재역 5번출구,도보 5분)
                  </h2>
                  <br>
                  
               </div>
            </div>
               <script type="text/javascript"
                  src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1612a47582f976311be9a8dd6ec0b816"></script>
               <script>
                  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                  mapOption = {
                     center : new kakao.maps.LatLng(37.484659,
                           127.036700), // 지도의 중심좌표
                     level : 3
                  // 지도의 확대 레벨
                  };

                  // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                  var map = new kakao.maps.Map(mapContainer, mapOption);

                  var marker = new kakao.maps.Marker({
                     // 지도 중심좌표에 마커를 생성합니다 
                     position : map.getCenter()
                  });
                  // 지도에 마커를 표시합니다
                  marker.setMap(map);

                  // 지도에 클릭 이벤트를 등록합니다
                  // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
                  kakao.maps.event.addListener(map, 'click', function(
                        mouseEvent) {

                     // 클릭한 위도, 경도 정보를 가져옵니다 
                     var latlng = mouseEvent.latLng;

                     // 마커 위치를 클릭한 위치로 옮깁니다
                     marker.setPosition(latlng);

                     var message = '클릭한 위치의 위도는 ' + latlng.getLat()
                           + ' 이고, ';
                     message += '경도는 ' + latlng.getLng() + ' 입니다';

                     var resultDiv = document
                           .getElementById('clickLatlng');
                     resultDiv.innerHTML = message;

                  });

                  $(document).ready(function() {
                     $('.bodycontents-companyinfo').show(); //페이지를 로드할 때 표시할 요소
                     $('.bodycontents-vision').hide(); //페이지를 로드할 때 숨길 요소
                     $('.bodycontents-companyhistory').hide();
                     $('.bodycontents-maps').hide();

                     $('.menu-li2').click(function() {
                        $('.bodycontents-companyinfo').hide();
                        $('.bodycontents-vision').show();
                        $('.bodycontents-companyhistory').hide();
                        $('.bodycontents-maps').hide();
                        /* return false;*/
                     });
                     $('.menu-li3').click(function() {
                        $('.bodycontents-companyinfo').hide();
                        $('.bodycontents-vision').hide();
                        $('.bodycontents-companyhistory').show();
                        $('.bodycontents-maps').hide();
                        /* return false;*/
                     });
                     $('.menu-li4').click(function() {
                        $('.bodycontents-companyinfo').hide();
                        $('.bodycontents-vision').hide();
                        $('.bodycontents-companyhistory').hide();
                        $('.bodycontents-maps').show();
                        /* return false;*/
                     });
                     $('.menu-li1').click(function() {
                        $('.bodycontents-companyinfo').show();
                        $('.bodycontents-vision').hide();
                        $('.bodycontents-companyhistory').hide();
                        $('.bodycontents-maps').hide();
                        /* return false;*/
                     });
                  });
               </script>

            </div>
            <!-- <div style="background-color: gray;  padding: 0; ">
               배너 
               <div class="container" style="margin-right:22%;">

                  <div id="myCarousel" class="carousel slide" data-ride="carousel"
                     style="width: 45%; height: 25%; margin-left: 20%; margin-top: 50px;">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <ol class="carousel-inner">
                        <div class="item active">
                           <img src="../Resources/images/enterprise/11.jpg" />
                        </div>
                        <div class="item">
                           <img src="../Resources/images/enterprise/22.jpg" />
                        </div>
                        <div class="item">
                           <img src="../Resources/images/enterprise/33.jpg" />
                        </div>
                     </ol>
                     <a class="left carousel-control" href="#myCarousel"
                        data-slide="prev"> <span
                        class="glyphicon glyphicon-chevron-left"></span>
                     </a> <a class="right carousel-control" href="#myCarousel"
                        data-slide="next"> <span
                        class="glyphicon glyphicon-chevron-right"></span>
                     </a>
                  </div>

               </div>
               배너 끝

            </div> -->
         </div>
      </section>
   </section>

   <!--footer-->
   <footer>
      <jsp:include page="footer.jsp"></jsp:include>
   </footer>


</body>
</html>