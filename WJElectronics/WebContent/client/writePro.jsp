<%@page import="com.wj.client.model.DAO.AsDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
        <%

	request.setCharacterEncoding("UTF-8");

	response.setContentType("text/html; charset=UTF-8"); //set으로쓰는 습관들이세오.

	%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
		<!-- 자바클래스명 -->     <!-- 패키지명.클래스명 -->
<jsp:useBean id="AsVO" class="com.wj.client.model.VO.AsVO" scope="page" />
				<!-- 자바클래스명 -->
<jsp:setProperty name="AsVO" property="title" />
				<!-- 자바클래스명 -->
<jsp:setProperty name="AsVO" property="content" />
				<!-- 자바클래스명 -->
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
			alert("문의사항이 등록되었습니다.");
			location.href="/WJElectronics/client/asListForm.do?pagenumber=1";
		</script>
	</c:if>
	<c:if test="${result != 1 }">
		<script>
			alert("서버 점검중입니다. 잠시후 시도해주세요");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>