<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>우편번호 검색</title>
<link rel="stylesheet" href="style.css" type="test/css" />
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function dongCheck() {
		if(document.zipForm.dong.value=="") {
			alert("동이름을 입력하세요");
			document.zipForm.dong.focus();
			return;
		}
		document.zipForm.submit();
	}
	function sendAddress(zipcode, sido, gugun, dong, bunji) {
		var address = sido + " " + gugun + " " + dong + " " + " " + bunji;
		opener.document.getElementById("zipcode").value = zipcode;
		opener.document.getElementById("address1").value = address;
		opener.document.getElementById("address2").value = "";
		self.close();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
<center>
<form action="/WJElectronics/client/zipcode.do" method="post" name="zipForm">
	<input type="hidden" value="n" name = "check" />
<table>
<tr>
<td>동이름 입력 : <input type="text" name = "dong" />
<input type="button" value="검색" onclick="dongCheck()" /></td>
</tr>
</table>
</form>

<table border="1">
<c:if test="${check eq 'n'}">
	<c:if test="${zipcodeList.isEmpty()}">
	<tr>
		<td align="center"><br />검색된 결과가 없습니다.</td>
	</tr>
	</c:if>
	<c:if test="${!zipcodeList.isEmpty()}">
	<tr>
		<td align="center"><br />
		* 검색 후, 아래 우편번호를 클릭하면 자동으로 입력됩니다.</td>
	</tr>
	<c:forEach var = "vo" items="${zipcodeList}">
	<tr>
		<td align="left">
		<a href="javascript:sendAddress(
		'${vo.getZipcode()}','${vo.getSido()}',
		'${vo.getGugun()}','${vo.getDong()}',
		'${vo.getRi()}','${vo.getBunji()}')">
		
		${vo.getZipcode()}&nbsp;${vo.getSido()}&nbsp;
		${vo.getGugun()}&nbsp;${vo.getDong()}&nbsp;
		${vo.getRi()}&nbsp;${vo.getBunji()}
		</a><br /></td>
	</tr>
	</c:forEach>
	</c:if>
</c:if>
<tr>
	<td align="center"><a href="javascript:this.close();">닫기</a></td>
</tr>
</table>


</center>

</body>
</html>