<%@page import="com.wj.client.model.DAO.AsDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
        <%

	request.setCharacterEncoding("UTF-8");

	response.setContentType("text/html; charset=UTF-8"); //set���ξ��� �������̼���.

	%>

<!-- �Ѹ��� ȸ�������� ��� userŬ������ �ڹ� ����� ��� / scope:������ ������ ������������ ���-->
		<!-- �ڹ�Ŭ������ -->     <!-- ��Ű����.Ŭ������ -->
<jsp:useBean id="AsVO" class="com.wj.client.model.VO.AsVO" scope="page" />
				<!-- �ڹ�Ŭ������ -->
<jsp:setProperty name="AsVO" property="title" />
				<!-- �ڹ�Ŭ������ -->
<jsp:setProperty name="AsVO" property="content" />
				<!-- �ڹ�Ŭ������ -->
<jsp:setProperty name="AsVO" property="product" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result eq 1 }">
		<script>
			alert("���ǻ����� ��ϵǾ����ϴ�.");
			location.href="/WJElectronics/client/asListForm.do?pagenumber=1";
		</script>
	</c:if>
	<c:if test="${result != 1 }">
		<script>
			alert("���� �������Դϴ�. ����� �õ����ּ���");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>