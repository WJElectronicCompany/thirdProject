<%@page import="com.wj.client.model.VO.ClientVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<script src = "../Resources/jquery-3.3.1.js"></script>
<script src  = "../Resources/js/bootstrap.js"></script>
<script src ="../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>
	
	<div class="container">
		<div align="center">
			<div class="jumbotron" style="padding-top: 20px; margin-top: 50px;">
				<h3 align="center">내 정보</h3>
				<form action="/WJElectronics/client/modifyInfo.do?id=${client.id }" method="post" name="mypageForm" onsubmit="return modifyInfoInputCheck()">
					<input type="hidden" name="clientPw" id="clientPass" value = ${client.pw } >
					<table border="1">
						<tr>
							<td align="right">아이디 </td>
							<td size="20" id="id" align="center">${client.id }</td>
						</tr>
						<tr>
							<td align="right">비밀번호</td>
							<td><input type="password" name="pw" id="pass" /></td>
						</tr>
						<tr>
							<td align="right">이름 </td>
							<td><input type="text" name="name" id="name" value="${client.name }" /></td>
						</tr>
						<%String[] tel = ((ClientVO)request.getAttribute("client")).getTel().split("-"); %>
						<tr>
							<td align="right">전화번호 </td>
							<td><select name="tel1" id="tel1">
									<option value="02" <%if(tel[0].equals("02")){ %>selected <%} %>>02</option>
									<option value="010" <%if(tel[0].equals("010")){ %>selected <%} %>>010</option>
									<option value="011" <%if(tel[0].equals("011")){ %>selected <%} %>>011</option>
									<option value="016" <%if(tel[0].equals("016")){ %>selected <%} %>>016</option>
									<option value="017" <%if(tel[0].equals("017")){ %>selected <%} %>>017</option>
									<option value="018" <%if(tel[0].equals("018")){ %>selected <%} %>>018</option>
									<option value="019" <%if(tel[0].equals("019")){ %>selected <%} %>>019</option>
							</select>&nbsp;-&nbsp; <input type="text" name="tel2" size="5" id="tel2" value=<%=tel[1] %> />&nbsp;-&nbsp;
								<input type="text" name="tel3" size="5" id="tel3" value=<%=tel[2] %> /></td>
						</tr>
						<tr>
							<td align="right">이메일 </td>
							<td><input type="text" name="email" id="email" value="${client.email }" /></td>
						</tr>
						<tr>
							<td align="right">우편번호 </td>
							<td><input type="text" name="zipcode" size="20" id="zipcode" value="${client.zipcode }" />&nbsp; <input
								type="button" value="찾기" onclick="zipCheck()"  /></td>
						</tr>
						<tr>
							<td align="right">주소1 </td>
							<td><input type="text" name="address1" size="50" id="address1" value="${client.address1 }" /></td>
						</tr>
						<tr>
							<td align="right">주소2 </td>
							<td><input type="text" name="address2" size="30" id="address2" value="${client.address2 }" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="submit" value="정보수정" />&nbsp;&nbsp; 
								<input type="button" value="비밀번호 변경" onclick="javascript:openModifyPasswordForm('<%=((ClientVO)request.getAttribute("client")).getId() %>')" /></td>
						</tr>
					</table>
				</form>					
			</div>
		</div>
	</div>
	
	
	<div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>
</body>
</html>