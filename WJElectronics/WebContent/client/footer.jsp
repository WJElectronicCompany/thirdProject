<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <!-- <link rel="stylesheet" href="../Resources/css/footer.css?ver=1"> -->
   <style>footer {/*position: absolute; bottom: 0; left: 0; */width: 100%; background: #333; padding: 35px 0; margin-top: 10%;}
.footerWrap {width: 1260px; margin: 0 auto;}
.footerWrap::after {display: block; content:""; clear: both;}
.logo {float: left; margin-right: 20px;}
.info{float: left; color: #999; font-size: 12px;}
.info li{ font-size: 12px; list-style:none;}
.info a, footer .info a:hover, footer .info a:focus {color: #999; text-decoration: none;}
.footLink {padding-bottom: 17px; padding-left: 0px;}
.footLink li {float: left; padding-right: 10px;}
.footLink li:not(:first-child) {padding: 0 10px 0 11px; border-left: 1px solid #ccc;}
.footLink::after {display: block; content:""; clear: both;}
.footLink li.point a {font-weight:bold;color:#b42f4a;}
footer address {padding-bottom: 5px; font-style: normal;}
footer address li {float: left; padding-right: 10px; list-style:none;}
footer address:after {display: block; content: ""; clear: both;}

/* -------------------------------------------------modal css---------------------------------------------- */
.modalBackdrop {position: fixed; top: 0; bottom: 0; left: 0; right: 0; z-index: 998; background: rgba(0,0,0,.3);}
.modal {display: none; position: fixed; top: 0; bottom: 0; left: 0; right: 0; z-index: 999;}
.modal ul, .modal ol {list-style: none;}
.modalDialog {position: relative; width: 770px; margin: 30px auto; padding: 60px; background: #fff;}
#modalPrivacy .modalDialog, .modalDialog.popup {width: 940px;}
#modalMedia .modalDialog, .modalDialog.popup {width: 940px;}
.modalDialog.popup {margin: 0;}
.modal .close, .modalDialog .close {position: absolute; top: 40px; right: 40px;}
.modalOpen {overflow: hidden;}
.modalOpen .modal {overflow-x: hidden; overflow-y: auto;}
#container h1, .modalDialog > h1 {margin-top: 37px; padding-bottom: 28px; text-align: center;}
.modalDialog > h1 {margin-top: 0;}
h1 > strong, .modalDialog > h1 > strong {display: inline-block; position: relative; padding: 0 70px; font-family: 'Nanum Myeongjo Bold'; font-size: 28px; vertical-align: top;}
#leaf_left, #leaf_right {display: block; position: absolute; top: 50%; content: ""; width: 60px; height: 22px; margin-top: -13px; vertical-align: top;}
#leaf_left {left: 0;margin-right: 10px; /* background: url(../../image/leaf-left.jpg) no-repeat 0 0; */}
#leaf_right {right: 0; margin-left: 10px; /* background: url(../../image/leaf-right.jpg) no-repeat 0 0; */}
.selPrivachWr {padding-bottom: 25px; text-align: right;}
.selPrivachWr .selectric-wrapper, .selPrivachWr .select {width: 260px;}
.ifWr {overflow: auto; width: 100%; height: 500px;padding-right: 10px;}
.privacy, .privacy p {font-size: 16px; line-height: 24px;}
p.introTb {margin-top: 28px; padding-bottom: 17px; font-family: "Noto Sans Bold"; font-size: 18px;}
.privacy .orderWr {overflow: hidden; width: 100%; padding: 25px 22px;background-color: #f4f4f4;}
.privacy .orderWr ol {float: left; width: 50%;}
.privacy .orderWr ol li {font-size: 16px; line-height: 24px;}
.privacy .orderWr ol > li:not(:first-child) {padding-top: 12px;}
.privacyCon {margin-top: 30px; padding-top: 30px;}
.privacyCon h1 {padding-bottom: 8px; font-size: 16px; font-family: "Noto Sans Bold";}
.privacyCon h2 {margin-top: 12px; font-size: 16px; color: #111;}
.privacyCon h2 + table {margin-top: 10px;}
.privacyCon table + h2 {margin-top: 15px;}
.privacyCon .desc {font-size: 16px; line-height: 24px;}
.privacyCon table {margin-top: 15px;}
.privacyCon .additionalTxt {padding-top: 20px; color: #666;}
.privacyCon .txtD1 li {font-size: 16px; line-height: 24px;}
.privacyCon .txtD1 > li {margin-left: 18px; text-indent: -18px;}
.privacyCon .txtD1.han > li {margin-left: 22px; text-indent: -22px;}
.privacyCon .txtD1 li:not(:last-child) {margin-bottom: 6px;}
.privacyCon .txtD1 > li > * {text-indent: 0;}
.privacyCon .txtD1 > li .additionalTxt {padding-top: 6px;}
.privacyCon .txtD2 {margin-top: 6px;}
.privacyCon .txtD2 > li {position: relative; padding-left: 10px; color: #666;}
.privacyCon .txtD2 > li:before {display: block; position: absolute; top: 0; left: 0; content: "- "; height: 100%;}
.privacyCon .desc + .txtD1 {margin-top: 12px;}
.privacyCon table.table.conTbMulti.noPd td {padding: 0;}
.popup .privacyCon table.table.conTbMulti.noPd td {padding: 0;}
.table.noPd td li {width: 100%; padding: 11px 0 10px; text-align: center;}
.table.noPd td li:not(:first-child) {border-top: 1px solid #ddd;}
.privacyCon .table.conTbRow th {background-color: #f4f4f4;}
button {overflow: visible;margin: 0;background-color: transparent;border: none;-webkit-appearance: button;cursor: pointer;font: inherit;color: inherit;}
button::-moz-focus-inner,
input::-moz-focus-inner {padding: 0; border: 0;}
textarea{resize: none;}
.privacyCon table.table tr {display: table-row;}
.privacyCon table.table th, .privacyCon table.table td {display: table-cell; border-bottom-color: #ddd;}
.privacyCon table.table colgroup {display: table-column-group;}
.privacyCon table.table thead tr {position: static; top: 0; left: 0;}
.privacyCon table.table thead th {background-color: #f4f4f4;}
.privacyCon table.table tbody th {padding: 11px 20px 10px; border-bottom-color: #ddd; text-align: left;}
.privacyCon table.table.conTbRow td {padding-top: 11px; padding-bottom: 10px;}
.privacyCon .table {border-top: 1px solid #bbb; border-bottom: 1px solid #bbb;}
.privacyCon .table th, .privacyCon .table td {padding: 11px 20px 10px;text-align: center;}
.privacyCon .table tr {padding: 0; border-bottom: none;}
.privacyCon .table td {border-bottom: 1px solid #ddd; padding: 11px 20px 10px;}
.privacyCon .table td.subject {text-align: left;}
.privacyCon .table th {line-height: 18px;}
.privacyCon .table > tbody > tr > td:first-child:not(.noData) {display: table-cell;}
.privacyCon .table.tableRow th, .privacyCon .table.tableRow td {padding: 11px 20px;}
.privacyCon .table.conTbMulti tr > td:not(:first-child),
.privacyCon .table.conTbMulti thead tr > th:not(:first-child){border-left: 1px solid #ddd;}
.privacyCon .table.conTbMulti tr:before {display: none;}
.privacyCon table.table.conTbMulti tbody th {display:table-cell;}
.privacyCon table.table.conTbMulti td {position: relative; padding: 11px 20px 10px; font-size: 14px; line-height: 18px;}
.privacyCon table.table.conTbMulti td:before {display: none;}
.privacyCon .contsWrap .table tr > td:not(:last-child) {border-right: none;}
.privacyCon table.table.conTbMulti.mobWide td {padding-left: 0;}
.privacyCon table.table.conTbMulti.mobNarrow td {padding-left: 0;}
.privacyCon .table.conTbMulti > tbody > tr:last-child > td {border-bottom: 1px solid #bbb;}
.privacyCon table.table.conTbMulti.mobWide td {padding-left: 20px;}</style>

<div class="footerWrap">
   <p class="logo">
      <img src="../image/wjLogo.png" width=110px height=70px>
   </p>
   <div class="info">
      <ul class="footLink">
         <li><a href="productListForm.jsp">상품페이지</a></li>
         <li class="point"><a href="#modalPrivacy" data-toggle="modal" data-backdrop="static">개인정보 처리방침</a></li>
         <li><a href="#modalMedia" data-toggle="modal">영상정보처리기기운영·관리방침</a></li>
         <li><a href="/WJElectronics/client/cliNotice.do?pagenumber=1">공지사항</a></li>
         <li><a href="http://www.mogef.go.kr/msv/metooReport.do">윤리신고센터</a></li>
         <li><a href="#modalPay" data-toggle="modal">거래희망사전등록</a></li>
      </ul>
      <address>
         <li>서울시 서초구 양재동 11-17번지</li>
         <li>FAX. 0505-073-0210</li>
         <li>고객상담센터 080-731-2027</li>
      </address>
      <p class="copyright">COPYRIGHT © 2015 THE WJ Electronic Company.
         ALL RIGHTS RESERVED.</p>
   </div>
</div>

<section id="modalPrivacy" class="modal" style="display: none;">
   <div class="modalDialog">
      <h1>
         <strong><img src="../image/leaf-left.jpg" id="leaf_left">개인정보 처리방침<img src="../image/leaf-right.jpg" id="leaf_right"></strong>
      </h1>
      <button class="close closeModal" data-dismiss="#modalPrivacy" aria-label="Close"><img src="../image/xmark.png" width="17" height="17" alt="닫기"></button>
      <!-- iframe -->
      <div class="ifWr privacy">
         <p>
            ‘WJ Electronic Company’은 (이하 '회사'이라 한다) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률”, “개인정보보호법”을 준수하고 있습니다. <br> 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
         </p>

         <p class="introTb">본 개인정보 처리방침의 목차는 아래와 같습니다.</p>
         <div class="orderWr">
            <ol>
               <li><a href="#privacy1">1. 개인정보의 수집 및 이용목적</a></li>
               <li><a href="#privacy2">2. 개인정보의 수집항목</a></li>
               <li><a href="#privacy3">3. 개인정보 수집방법</a></li>
               <li><a href="#privacy4">4. 개인정보 자동수집 장치의 설치, <br> 운영 및 그 거부에 관한 사항
               </a></li>
               <li><a href="#privacy5">5. 개인정보의 파기절차 및 방법</a></li>
               <li><a href="#privacy6">6. 개인정보의 제 3자 제공</a></li>
            </ol>
            <ol>
               <li><a href="#privacy7">7. 개인정보의 처리 위탁</a></li>
               <li><a href="#privacy8">8. 만14세 미만의 아동에 대한 개인정보보호</a></li>
               <li><a href="#privacy9">9. 이용자 및 법정대리인의 권리와 그 행사방법</a></li>
               <li><a href="#privacy10">10. 개인정보의 기술적/관리적 보호 대책</a></li>
               <li><a href="#privacy11">11. 개인정보관리책임자 및 담당부서 안내</a></li>
               <li><a href="#privacy12">12. 고지의 의무</a></li>
               <li><a href="#privacy13">13. 시행일자</a></li>
            </ol>
         </div>
         <div class="privacyCon" id="privacy1">
            <h1>1.개인정보의 수집 및 이용목적</h1>
            <p class="desc">회사에서는 WJ전자 서비스 이용에 관한 정보를 제공하고 고지하기 위하여 개인정보를 수집하고 있습니다.</p>
            <table class="table conTbMulti">
               <caption>개인정보의 수집 및 이용목적 테이블로 구분에 따른 이용목적 등의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: *;">
                  <col style="width: 50%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">구분</th>
                     <th scope="col">이용목적</th>
                  </tr>
               </thead>
               <tbody>
                  <tr data-title="가맹설명회 신청">
                     <th scope="row">가맹설명회 신청</th>
                     <td data-title="이용목적" class="subject">- WJ전자 오프라인 쇼핑몰 가맹설명회 참석 접수 및 확인</td>
                  </tr>
                  <tr data-title="FAQ /가맹문의">
                     <th scope="row">FAQ / 가맹문의</th>
                     <td data-title="이용목적" class="subject">- WJ전자 FAQ/가맹문의 접수 및 확인</td>
                  </tr>
                  <tr data-title="1:1 문의하기">
                     <th scope="row">1:1 문의하기</th>
                     <td data-title="이용목적" class="subject">- WJ전자 고객센터 문의 처리 (WJ전자 운영DB 미 저장)</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="privacy2">
            <h1>2. 개인정보의 수집항목</h1>
            <table class="table conTbMulti mobWide">
               <caption>개인정보의 수집항목 테이블로 구분에 따른 이용목적 등의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: 28%;">
                  <col style="width: *;">
                  <col style="width: 33%;">
                  <col style="width: 18.29%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">수집 구분</th>
                     <th scope="col">수집항목</th>
                     <th scope="col">보유 및 이용기간</th>
                     <th scope="col">보유근거</th>
                  </tr>
               </thead>
               <tbody>
                  <tr data-title="가맹설명회 신청">
                     <th scope="row">가맹설명회 신청</th>
                     <td data-title="수집항목">이름, 전화번호, 핸드폰번호, 이메일</td>
                     <td data-title="보유 및 이용기간">1개월 보유 후 파기</td>
                     <td data-title="보유근거">고객동의</td>
                  </tr>
                  <tr data-title="FAQ /가맹문의">
                     <th scope="row">FAQ / 가맹문의</th>
                     <td data-title="수집항목">이름, 전화번호, 핸드폰번호, 이메일</td>
                     <td data-title="보유 및 이용기간">1개월 보유 후 파기</td>
                     <td data-title="보유근거">고객동의</td>
                  </tr>
                  <tr data-title="1:1 문의하기">
                     <th scope="row">1:1 문의하기</th>
                     <td data-title="수집항목">이름, 휴대폰번호, 전화번호, 이메일</td>
                     <td data-title="보유 및 이용기간">고객에게 동의받은 기간 동안 보유</td>
                     <td data-title="보유근거">고객동의 및 법률 근거</td>
                  </tr>
               </tbody>
            </table>
            <p class="additionalTxt"></p>
            <ul class="txtD1">
               <li>1) 이용자의 인터넷 등 로그기록/이용자 접속지 추적자료 : 3개월(통신비밀보호법)</li>
            </ul>
            <p></p>
         </div>
         <div class="privacyCon" id="privacy3">
            <h1>3. 개인정보 수집방법</h1>
            <ul class="txtD1">
               <li>1) 개인정보 수집 필요 시점에 홈페이지, 서면양식, 전화/팩스, 전자우편 등을 의한 개인정보를 수집</li>
               <li>2) 상담내역 및 이력, 결제기록, 이용기록 등 통상적인 서비스 제공과정에서 자동적으로 수집, 생성되는 정보의 수집</li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy4">
            <h1>4. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h1>
            <ul class="txtD1">
               <li>1) 쿠키(cookie)란?
                  <p class="additionalTxt">회사에서는 고객에 대한 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 사용합니다. 쿠키는 웹사이트가 고객의 컴퓨터 브라우저(인터넷 익스플로러, 크롬 등)로 전송하는 소량의 정보입니다.</p>
               </li>
               <li>2) 쿠키(cookie) 운용
                  <p class="additionalTxt">회사에서는 이용자의 편의를 위하여 쿠키를 운영합니다. 쿠키를 통해 수집하는 정보는 회원 아이디에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 쿠키(cookie)를 통해 수집한 회원 아이디는 다음의 목적을 위해 사용됩니다. (쿠키는 브라우저의 종료시나 로그아웃 시 만료됩니다.</p>
               </li>
               <li>3) 쿠키 설정 거부방법
                  <p class="additionalTxt">고객이 사용하는 웹브라우저의 「옵션」메뉴를 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 단, 쿠키설치를 거부하였을 경우 서비스 제공에 제한이 있을 수 있습니다.</p>
               </li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy5">
            <h1>5. 개인정보의 파기절차 및 방법</h1>
            <ul class="txtD1">
               <li>1) 파기절차
                  <ul class="txtD2">
                     <li>고객의 개인정보는 수집, 이용목적이 달성된 후 내부 방침 및 기타 관련 법령에 의한 정보 보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.</li>
                     <li>파기대상 : 보유 및 이용기간, 관련법령에 따른 보존기간이 종료된 고객정보</li>
                  </ul>
               </li>
               <li>2) 파기방법
                  <ul class="txtD2">
                     <li>전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
                     <li>종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
                  </ul>
               </li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy6">
            <h1>6. 개인정보의 제 3자 제공</h1>
            <p class="desc">
               회사에서는 고객의 개인정보를 개인정보취급방침의 「개인정보의 이용목적」에서 고지한 범위 또는 서비스이용약관에 명시한 범위 내에서 사용하며, 동 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다. <br> 단 다음의 경우에는 관련 법령의 규정에 의해 고객의 동의 없이 개인정보를 제공하는 것이 가능합니다.
            </p>
            <ul class="txtD1">
               <li>1) 서비스 제공에 관한 계약 이행</li>
               <li>2) 관련 법령의 규정에 의하거나, 수사목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
               <li>3) 통계작성, 학술연구나 시장조사를 위해 특정 개인을 식별할 수 없는 형태로 가공하여 제공하는 경우 <br> *제3자에게 고객 개인정보를 제공이 발생하는 경우 반드시 정보주체에게 제3자 제공에 대한 동의 받도록 하겠습니다.
               </li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy7">
            <h1>7. 개인정보의 처리 위탁</h1>
            <p class="desc">회사에서는 서비스이행을 위해 다음과 같이 개인정보 취급 업무를 외부 전문업체에 위탁하여 운영하고 있습니다.</p>
            <table class="table conTbMulti mobWideMore noSubTit">
               <caption>개인정보의 수집항목 테이블로 구분에 따른 이용목적 등의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: 22%;">
                  <col style="width: 25%;">
                  <col style="width: 25%;">
                  <col style="width: *;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">수탁사명</th>
                     <th scope="col">위탁하는 업무</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-title="수탁사명">(주) WJ커뮤니케이션즈</td>
                     <td data-title="위탁하는 업무">홈페이지 운영 유지 및 이벤트 대행</td>
                  </tr>
                  <tr>
                     <td data-title="수탁사명">(주) WJ 네트웍스</td>
                     <td data-title="위탁하는 업무">1:1 문의하기 VOC 웹사이트 총괄관리</td>
                  </tr>

                  <tr>
                     <td data-title="수탁사명">(주) 더블유제이((주) WJ 네트웍스 재위탁사)</td>
                     <td data-title="위탁하는 업무">1:1 문의하기 WJ 웹사이트 유지보수</td>
                  </tr>

                  <tr>
                     <td data-title="수탁사명">(주) WJ 소속 쇼핑몰</td>
                     <td data-title="위탁하는 업무">쇼핑몰 상담처리 및 관련 교환/환불</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="privacy8">
            <h1>8. 만14세 미만의 아동에 대한 개인정보보호</h1>
            <p class="desc">회사는 만 14세 미만의 아동 개인정보 수집시 법정 대리인의 동의여부를 확인하고, 법정대리인 권리행사 시 본인확인을 진행합니다. 이 경우 정보주체가 동의하신 사항에서만 이용하며, 개인정보의 열람 및 오류정정을 요구 시, 지체 없이 필요한 조치를 취하며 오류정정 요구가 있을 시 그 정정 때까지 당해 해당정보를 이용하지 않습니다.</p>
         </div>
         <div class="privacyCon" id="privacy9">
            <h1>9. 이용자 및 법정대리인의 권리와 그 행사방법</h1>
            <ul class="txtD1">
               <li>1) 이용자는 언제든지 본인의 개인정보의 열람 및 오류정정을 요구할 수 있고, 당 회사에서는 지체 없이 필요한 조치를 취하며 오류정정 요구가 있을 시 그 정정 때까지 당해 해당정보를 이용하지 않습니다.</li>
               <li>2) 또한, 담당자에게 이메일 또는 전화로 연락하여 회원님 본인임을 확인한 후 열람/변경/회원탈퇴 신청을 하실 수 있습니다.</li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy10">
            <h1>10. 개인정보의 기술적/관리적 보호 대책</h1>
            <p class="desc">회사에서는 수집된 개인정보의 안정성 확보를 위하여 아래와 같은 기술적/관리적 대책을 강구하고 있습니다.</p>
            <h2>[기술적 대책]</h2>
            <ul class="txtD1">
               <li>1) 고객님의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호 화하여 중요한 데이터는 보호되고 있습니다.</li>
               <li>2) 해킹 등에 의한 고객님의 개인정보가 유출되는 것을 방지하기 위해 외부로부터의 침입을 차단하는 네트워크 및 시스템 측면의 별도의 보안 장치(방화벽 등)를 사용하여 침입의 차단 및 모니터링을 수행하고 있습니다.</li>
               <li>3) 또한 응용 프로그램의 공격을 통한 정보 유출을 막기 위한 보안 장치(VPN등)도 가동하고 있습니다.</li>
               <li>4) 백신 및 패치 자동 설치 프로그램을 이용하여, 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 해당 프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우, 즉시 패치를 적용함으로써 개인정보가 침해되는 것을 방지하고 있습니다.</li>
            </ul>
            <h2>[관리적 대책]</h2>
            <ul class="txtD1">
               <li>1) 회사에서는 고객님의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있으며 그에 해당하는 자는 다음과 같습니다.
                  <ul class="txtD2">
                     <li>이용자를 직접 상대로 하여 마케팅 업무를 수행하는 자</li>
                     <li>개인정보 보호책임자 및 담당자 등 개인정보관리업무를 수행하는 자</li>
                     <li>기타 업무상 개인정보의 취급이 불가피한 자</li>
                  </ul>
               </li>
               <li>2) 취급자에 의하여 개인정보가 분실, 도난, 유출 등이 되지 아니하도록 의식함양 및 지속적인 교육을 실시합니다.</li>
               <li>3) 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.</li>
               <li>4) 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.</li>
               <li>5) 회사에서는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.</li>
               <li>6) 그 외 내부 관리자의 실수나 기술관리상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 고객님께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
            </ul>
         </div>
         <div class="privacyCon" id="privacy11">
            <h1>11. 개인정보관리책임자 및 담당부서 안내</h1>
            <p class="desc">
               회사에서는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보 관리담당자를 지정하고 있습니다. <br> 고객께서는 당 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보 보호책임자, 개인정보보호 담당자에게 신고하실 수 있으며 당 회사에서는 고객의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
            </p>
            <table class="table conTbMulti noPd tdSubTit">
               <caption>개인정보관리책임자 및 담당부서 안내 테이블로 개인정보 보호책임자,개인정보보호 담당자(정),개인정보보호 담당자(부) 등의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: 33.3%;">
                  <col style="width: 33.3%;">
                  <col style="width: *;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">개인정보 보호책임자</th>
                     <th scope="col">개인정보보호 담당자(정)</th>
                     <th scope="col">개인정보보호 담당자(부)</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-title="개인정보 보호책임자">
                        <ul>
                           <li>문지홍 실장</li>
                           <li>080-123-9861</li>
                        </ul>
                     </td>
                     <td data-title="개인정보보호 담당자(정)">
                        <ul>
                           <li>한 훈 차장</li>
                           <li>02-1234-5789</li>
                        </ul>
                     </td>
                     <td data-title="개인정보보호 담당자(부)">
                        <ul>
                           <li>이송현 과장</li>
                           <li>song@wj.co.kr</li>
                        </ul>
                     </td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="privacy12">
            <h1>12. 고지의 의무</h1>
            <p class="desc">
               현 개인정보취급방침은 2019년 9월 23일부터 적용됩니다. 개인정보취급방침의 내용은 수시로 변경될 수 있으며, 변경 내용의 확인이 용이하도록 회사의 홈페이지 첫 화면 하단에 상시로 공개 합니다. <br> 현 개인정보취급방침 내용의 변경이 있을 경우 변경사항을 최소 7일전부터 홈페이지 ‘공지사항’을 통하여 공지합니다. 단, 회원님의 권리 또는 의무에 중요한 내용의 변경은 시행일로부터 30일 이전에 고지합니다.
            </p>
         </div>
         <div class="privacyCon" id="privacy13">
            <h1>13. 시행일자</h1>
            <p class="desc">
               공고일 : 2019년 09월 16일 <br> 시행일 : 2019년 09월 23일
            </p>
         </div>
      </div>
      <!-- iframe -->
      <!-- //modal con -->
   </div>
   <script>
      $('.close').on('click', function() {
         $('#modalPrivacy').modal('hide');
      });
   </script>
</section>





<section id="modalMedia" class="modal" style="display: none;">
   <div class="modalDialog">
      <h1>
         <strong><img src="../image/leaf-left.jpg" id="leaf_left">영상정보 처리기기 운영 및 관리 방침<img src="../image/leaf-right.jpg" id="leaf_right"></strong>
      </h1>
      <button class="close closeModal" data-dismiss="#modalPrivacy" aria-label="Close">
         <img src="../image/xmark.png" width="17" height="17" alt="닫기">
      </button>
      <!-- modal con -->
      <!-- iframe -->
      <div class="ifWr privacy">
         <p>‘WJ Electronic Company’은 (이하 '회사'이라 한다) 고객님의 개인정보를 중요시하며, 관련법률에 따라 영상정보처리기기 운영 및 관리방침을 통해 개인영상정보 이용 및 관리를 알려드립니다.</p>

         <p class="introTb">본 영상정보처리기기 운영 및 관리 방침의 목차는 아래와 같습니다.</p>
         <div class="orderWr">
            <ol>
               <li><a href="#media1">1. 영상정보처리기기의 설치 근거 및 목적</a></li>
               <li><a href="#media2">2. CCTV설치현황 및 촬영범위</a></li>
               <li><a href="#media3">3. 영상정보 관리책임자 및 담당자</a></li>
               <li><a href="#media4">4. 영상정보의 촬영시간, 보관기간, 장소 및 처리방법</a></li>
            </ol>
            <ol>
               <!-- <li><a href="#media5">5. 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항</a></li> -->
               <li><a href="#media5">5. 개인영상정보의 확인 방법 및 장소에 관한 사항</a></li>
               <li><a href="#media6">6. 정보주체의 영상정보 열람 등 요구에 대한 조치</a></li>
               <li><a href="#media7">7. 영상정보의 안전성 확보조치</a></li>
               <li><a href="#media8">8. 영상정보 처리기기 운영 및 관리방침 변경에 관한 사항</a></li>
            </ol>
         </div>
         <div class="privacyCon" id="media1">
            <h1>1. 영상정보처리기기의 설치 근거 및 목적</h1>
            <p class="desc">회사는 개인정보 보호법 제25조, 개인영상정보 보호법에 따라 고객의 안전, 도난방지, 시설 안전관리 등을 위하여 영상정보처리기기를 설치, 운영하고 있습니다.</p>
         </div>
         <div class="privacyCon" id="media2">
            <h1>2. CCTV설치현황 및 촬영범위</h1>
            <p class="desc">회사는 아래와 같이 CCTV를 회사 및 매장 내 설치하고 운영하고 있습니다.</p>
            <table class="table conTbMulti mobWideMore noSubTit">
               <caption>CCTV설치현황 및 촬영범위에 따른 설치 대수의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: *;">
                  <col style="width: 50%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">설치위치 및 촬영범위</th>
                     <th scope="col">설치 대수 (2020. 01 기준)</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-title="직영매장 내 외부">직영매장 내 외부</td>
                     <td data-title="설치 대수">279대</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="media3">
            <h1>3. 영상정보 관리책임자 및 담당자</h1>
            <p class="desc">회사는 영상정보 보호를 위해 아래와 같이 책임자 및 접근권한자를 지정하고 있습니다.</p>
            <table class="table conTbMulti mobWideMore noSubTit">
               <caption>관리책임자에 따른 접근권한자의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: *;">
                  <col style="width: 50%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">관리책임자</th>
                     <th scope="col">접근권한자</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-title="직영관리부서장">직영관리부서장</td>
                     <td data-title="접근권한자">부서장, 매장 점장, 정도경영2팀</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="media4">
            <h1>4. 영상정보의 촬영시간, 보관기간, 장소 및 처리방법</h1>
            <p class="desc">회사는 아래와 같이 영상정보를 촬영, 보관, 파기하고 있으며, 용량에 따라 자동삭제 시 복원 불가능한 방법으로 삭제합니다.</p>
            <table class="table conTbMulti mobWideMore noSubTit">
               <caption>촬영시간에 따른 보관기간, 보관장소, 파기방법의 정보를 제공합니다.</caption>
               <colgroup>
                  <col style="width: *;">
                  <col style="width: 30%;">
                  <col style="width: 20%;">
                  <col style="width: 30%;">
               </colgroup>
               <thead>
                  <tr>
                     <th scope="col">촬영시간</th>
                     <th scope="col">보관기간</th>
                     <th scope="col">보관장소</th>
                     <th scope="col">파기방법</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td data-title="24시간">24시간</td>
                     <td data-title="보관기간">저장용량에 따라 평균 30일 이내</td>
                     <td data-title="보관장소">매장 사무실</td>
                     <td data-title="파기방법">저장용량 초과시 자동 삭제</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <div class="privacyCon" id="media5">
            <h1>5. 개인영상정보의 확인 방법 및 장소에 관한 사항</h1>
            <p class="desc">영상정보 확인 방법 및 장소 : 영상정보 관리책임자에게 요구</p>
         </div>
         <div class="privacyCon" id="media6">
            <h1>6. 정보주체의 영상정보 열람 등 요구에 대한 조치</h1>
            <p class="desc">
               고객님이 개인영상정보에 관하여 열람 또는 존재확인, 삭제를 원하시는 경우 영상정보처리기기 운영자에게 요구하실 수 있습니다. 단, 고객님이 촬영된 개인영상정보 및 명백히 개인영상정보 주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보에 한정됩니다.<br> 회사는 개인영상정보에 관하여 열람 또는 존재확인, 삭제를 요구한 경우 지체 없이 필요한 조치를 이행합니다.
            </p>
         </div>
         <div class="privacyCon" id="media7">
            <h1>7. 영상정보의 안전성 확보조치</h1>
            <p class="desc">회사에서 처리하는 영상정보는 비밀번호, 암호화 조치 등을 통하여 안전하게 관리되고 있습니다. 또한 본 회사는 개인영상정보보호를 위한 관리적 대책으로서 개인정보에 대한 접근 권한을 차등부여하고 있으며, 개인영상정보의 위변조 방지를 위하여 개인영상정보의 생성 일시, 열람 시 열람 목적, 열람자, 열람 일시 등을 기록하여 관리하고 있습니다.</p>
         </div>
         <div class="privacyCon" id="media8">
            <h1>8. 영상정보 처리기기 및 운영관리방침 변경에 관한 사항</h1>
            <p class="desc">본 영상정보처리기기 운영 및 관리방침은 관련 법령과 정책, 영상정보 보호 기술 변경에 따라 변경될 수 있습니다. 변경되는 경우 시행 7일전 웹사이트를 통해 공지하도록 하겠습니다.</p>
         </div>
      </div>
   </div>
   <script>
      $('.close').on('click', function() {
         $('#modalMedia').modal('hide');
      });
   </script>
</section>
<section id="modalPay" class="modal" style="display: none;">
   <div class="modalDialog">
      <h1>
         <strong><img src="../image/leaf-left.jpg" id="leaf_left">거래희망 사전등록<img src="../image/leaf-right.jpg" id="leaf_right"></strong>
      </h1>
      <button class="close closeModal" data-dismiss="#modalPrivacy" aria-label="Close">
         <img src="../image/xmark.png" width="17" height="17" alt="닫기">
      </button>
      <div class="privacyCon" id="privacy11">
         <h1>거래희망 사전등록 책임자 및 담당부서 안내</h1>
         <p class="desc">
            회사에서는 거래희망 업체의 거래업체로 등록하기 위한 절차를 처리하기 위하여 아래와 같이 거래희망 업체 관리담당자를 지정하고 있습니다. <br> 업주께서는 당 회사의 서비스를 이용하시며 발생하는 모든 거래 관련 민원을 거래업체 책임자, 거래업체 담당자에게 신고하실 수 있으며 당 회사에서는 업체의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
         </p>
         <table class="table conTbMulti noPd tdSubTit">
            <caption>거래업체 책임자 및 담당부서 안내 테이블로 거래업체 책임자, 거래업체 담당자 등의 정보를 제공합니다.</caption>
            <colgroup>
               <col style="width: 50%;">
               <col style="width: 50%;">
               <col style="width: *;">
            </colgroup>
            <thead>
               <tr>
                  <th scope="col">거래업체 책임자</th>
                  <th scope="col">거래업체 담당자</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td data-title="거래업체 책임자">
                     <ul>
                        <li>유준영 과장</li>
                        <li>080-555-7979</li>
                     </ul>
                  </td>
                  <td data-title="거래업체 담당자">
                     <ul>
                        <li>김영인 사원</li>
                        <li>02-9875-1238</li>
                     </ul>
                  </td>
               </tr>
            </tbody>
         </table>
      </div>
   </div>
   <script>
      $('.close').on('click', function() {
         $('#modalPay').modal('hide');
      });
   </script>
</section>