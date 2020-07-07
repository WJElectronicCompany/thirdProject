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
<script src ="../Resources/script.js"></script>
<title>WJ 전자</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">WJElectronics</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="enterpriseInfoForm.jsp">기업정보</a></li>
				<li><a href="productListForm.jsp">판매목록</a></li>
				<li><a href="asListForm.jsp">AS센터</a></li>
				<li><a href="noticeForm.jsp">공지사항</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${sessionScope.id == null }">
					<li><a href="loginForm.jsp">로그인</a></li>
					<li><a href="joinForm.jsp">회원가입</a></li>
				</c:if>
				<c:if test="${sessionScope.id != null }">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> ${sessionScope.id } 님 <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">내 정보</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul></li>
				</c:if>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div align="center">
			<div class="jumbotron" style="padding-top: 20px; margin-top: 50px;">
				<h3 align="center">회원 가입</h3>
				<form action="/WJElectronics/client/join.do?cmd='join'" method="post" name="joinForm" onsubmit="return ">
					<input type="hidden" name="checkedID" />
					<table border="1">
						<tr>
							<td align="right">아이디 :</td>
							<td><input type="text" name="id" size="20" />&nbsp; <input
								type="button" value="중복확인" onclick="idDoubleCheck(this.form.id.value)" /></td>
						</tr>
						<tr>
							<td align="right">패스워드 :</td>
							<td><input type="password" name="pass" /></td>
						</tr>
						<tr>
							<td align="right">패스워드 확인 :</td>
							<td><input type="password" name="repass" /></td>
						</tr>
						<tr>
							<td align="right">이름 :</td>
							<td><input type="text" name="name" /></td>
						</tr>
						<tr>
							<td align="right">전화번호 :</td>
							<td><select name="phone1">
									<option value="02">02</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>&nbsp;-&nbsp; <input type="text" name="phone2" size="5" />&nbsp;-&nbsp;
								<input type="text" name="phone3" size="5" /></td>
						</tr>
						<tr>
							<td align="right">이메일 :</td>
							<td><input type="text" name="email" /></td>
						</tr>
						<tr>
							<td align="right">우편번호 :</td>
							<td><input type="text" name="zipcode" size="20" />&nbsp; <input
								type="button" value="찾기" onclick="zipCheck()" /></td>
						</tr>
						<tr>
							<td align="right">주소1 :</td>
							<td><input type="text" name="address1" size="50" /></td>
						</tr>
						<tr>
							<td align="right">주소2 :</td>
							<td><input type="text" name="address2" size="30" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="button"
								value="회원가입" onclick="inputCheck()" />&nbsp;&nbsp; <input
								type="reset" value="다시입력" /></td>
						</tr>
					</table>
				</form>					
			</div>
		</div>
	</div>
</body>
</html>