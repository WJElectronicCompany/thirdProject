<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경</title>
</head>
<body>
	<h3 align="center" style="padding-top: 20px;">비밀번호 변경</h3>
	<div align="center">
		<form action="/WJElectronics/client/modifyPass.do?cmd=modifyPasswordPro&id=${client.id}" method="post" onsubmit="return modifyPasswordInputCheck()">
			<table border="1">
				<tr>
					<td width="120" align="center">아이디</td> <td>${client.id }</td>
				</tr>
				<tr>
					<td align="center">현재 비밀번호</td> <td><input type="password" name="pw" id="pass"/></td>
				</tr>
				<tr>
					<td align="center">새 비밀번호</td> <td><input type="password" name="newPw" id="newPass"/></td>
				</tr>
				<tr>
					<td align="center">새 비밀번호 확인</td> <td><input type="password" name="reNewPw" id="reNewPass"/></td>
				</tr>	
			</table>
			<div align="center" style="padding-top: 10px;">
				<input type="submit" value="비밀번호 변경" />&nbsp;
				<input type="reset" value="다시입력" />&nbsp;
				<input type="button" value="취소" onclick="javascript:self.close();" />
			</div>
		</form>
	</div>
	
	
	<div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	</div>
</body>
</html>