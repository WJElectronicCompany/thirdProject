<%@page import="java.util.ArrayList"%>
<%@page import="com.wj.client.model.VO.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String cmd = (String) request.getAttribute("cmd");
	String name = (String) request.getAttribute("name");
	String email = (String) request.getAttribute("email");
	String phone = (String) request.getAttribute("phone");
	String address = (String) request.getAttribute("address");
	int quantity = Integer.parseInt((String) request.getAttribute("quantity"));
	int price = Integer.parseInt((String) request.getAttribute("price"));
	int totalPrice = 0;
	int index = Integer.parseInt((String) request.getAttribute("index"));
	String productCode = "";
	String quantityList = "";
	if (cmd.equals("SelectedItemPurchase")) {
		productCode = request.getParameter("productCode");
	} else if(cmd.equals("basketSelectedItemPurchase")){
		ArrayList<ProductVO> productList = (ArrayList<ProductVO>) session.getAttribute("productList");
		productCode = productList.get(index).getpCode();
	} else if(cmd.equals("totalPurchase")) {
		ArrayList<ProductVO> productList = (ArrayList<ProductVO>) session.getAttribute("productList");
		productCode = "";
		quantityList = "";
		for(ProductVO vo : productList) {
			productCode += (vo.getpCode() + "~");
			quantityList += (vo.getQuantity() + "~");
		}
		productCode = productCode.substring(0,productCode.length()-1);
		quantityList = quantityList.substring(0,quantityList.length()-1);
	}

	if (cmd.equals("totalPurchase")) {
		totalPrice = price;
	} else {
		totalPrice = price * quantity;
	}
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>상품 결제</title>
<script src="../Resources/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
function basketSelectedItemPurchase(index) {
	location.href="/WJElectronics/client/purchase.do?cmd=basketSelectedItemPurchase&buyerId="+'<%=(String) session.getAttribute("id")%>'+"&productCode="+'<%=productCode%>'+"&quantity="+'<%=quantity%>'+"&price="+'<%=totalPrice%>'+"&index="+'<%=index%>';
}

function totalPurchase() {
	location.href= "/WJElectronics/client/purchase.do?cmd=totalPurchase&buyerId="+'<%=(String) session.getAttribute("id")%>'+"&productCode="+'<%=productCode%>'+"&quantity="+'<%=quantityList%>'+"&price="+'<%=totalPrice%>'+"&index=0";
}
function SelectedItemPurchase() {
	location.href= "/WJElectronics/client/purchase.do?cmd=SelectedItemPurchase&buyerId="+'<%=(String) session.getAttribute("id")%>'+"&productCode="+'<%=productCode%>'+"&quantity="+'<%=quantity%>'+"&price="+'<%=totalPrice%>'+"&index=0";
	alert("이용해 주셔서 감사합니다.\n 구매한 상품은 주문 내역에서 확인하실 수 있습니다.");
	self.close();
}
</script>
</head>
<body>
	<script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp25774274'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg = "";
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            customer_uid: "CUSTOMER_UID",
            name : '(주)WJ 구매 결제',
            amount : <%=totalPrice%>,
            buyer_email : '<%=email%>',
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
            buyer_addr : '<%=address%>',
            buyer_postcode : '123-456',
           <%-- 	m_redirect_url : 'successToPayment.jsp?cmd='+ '<%=cmd%>' + '&index='+ '<%=index%>' --%>
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "index.jsp", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                	
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                    	alert("asd");
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                
                
                // 결제 성공 후 각 opener에서 함수를 호출해 처리
                if('<%=cmd%>' == "basketSelectedItemPurchase") {
                	basketSelectedItemPurchase(<%=index%>);
                }
                if('<%=cmd%>' == "totalPurchase") {
                	totalPurchase();
                }
                if('<%=cmd%>' == "SelectedItemPurchase") {
                	SelectedItemPurchase();
                }
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="<%=request.getContextPath()%>/order/payFail";
                alert(msg);
            }
        });
        
    });
    </script>

</body>
</html>
