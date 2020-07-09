<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1" />
<link rel="stylesheet" href="../Resources/css/bootstrap.css">
<script src="../Resources/jquery-3.3.1.js"></script>
<script src="../Resources/js/bootstrap.js"></script>
<script src="../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	<header>
		<jsp:include page="topNav.jsp"></jsp:include>
	</header>

	<div class="container">
		<div align="center">
			<div class="jumbotron" style="padding-top: 20px; margin-top: 50px;">
				<h3 align="center">회원 가입</h3>
				<form action="/WJElectronics/client/join.do?cmd=join" method="post"
					name="joinForm" onsubmit="return joinInputCheck()">
					<input type="hidden" name="checkedID" id="checkedID" />
					<table border="1">
						<tr>
							<td align="right">아이디</td>
							<td><input type="text" name="id" size="20" id="id" />&nbsp;
								<input type="button" value="중복확인"
								onclick="idDoubleCheck(this.form.id.value)" /></td>
						</tr>
						<tr>
							<td align="right">패스워드</td>
							<td><input type="password" name="pw" id="pass" /></td>
						</tr>
						<tr>
							<td align="right">패스워드 확인</td>
							<td><input type="password" name="repw" id="repass" /></td>
						</tr>
						<tr>
							<td align="right">이름</td>
							<td><input type="text" name="name" id="name" /></td>
						</tr>
						<tr>
							<td align="right">전화번호</td>
							<td><select name="tel1" id="tel1">
									<option value="02">02</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>&nbsp;-&nbsp; <input type="text" name="tel2" size="5" id="tel2" />&nbsp;-&nbsp;
								<input type="text" name="tel3" size="5" id="tel3" /></td>
						</tr>
						<tr>
							<td align="right">이메일</td>
							<td><input type="text" name="email" id="email" /></td>
						</tr>
						<tr>
							<td align="right">우편번호</td>
							<td><input type="text" name="zipcode" size="20" id="zipcode" />&nbsp;
								<input type="button" value="찾기" onclick="zipCheck()" /></td>
						</tr>
						<tr>
							<td align="right">주소1</td>
							<td><input type="text" name="address1" size="50"
								id="address1" /></td>
						</tr>
						<tr>
							<td align="right">주소2</td>
							<td><input type="text" name="address2" size="30"
								id="address2" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="회원가입" />&nbsp;&nbsp; <input type="reset" value="다시입력" /></td>
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