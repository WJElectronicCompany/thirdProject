var popupWidth = 300;
var popupHeight = 100;

var popupX = (window.screen.width / 2) - (popupWidth / 2);
var popupY= (window.screen.height / 2) - (popupHeight / 2);

function loginInputCheck() {
	if(document.loginform.id.value.replace(/(\s*)/gi, "") == "") {
		alert("아이디를 입력하십시오.");
		document.loginform.id.focus();
		return false;
	}
	
	if(document.loginform.pw.value.replace(/(\s*)/gi, "") == "") {
		alert("비밀번호을 입력하십시오.");
		document.loginform.pw.focus();
		return false;
	}
	
}

function idDoubleCheck(id) {
	if(id.replace(/(\s*)/gi, "") == "") {
		alert("아이디를 입력해 주세요");
		document.joinForm.id.foucs();
	} else {
		url = "/WJElectronics/client/join.do?cmd=idDoubleCheck&id="+id;
		window.open(url,"post",'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	}
}

function zipCheck() {
	url = "/WJElectronics/client/zipcode.do";
	window.open(url,"post","toolbar=no, width=500, height=300, directories=no," +
			"status=yes, scrollbars=yes, menubar=no");
}

function openModifyPasswordForm(id) {
	url = "/WJElectronics/client/modifyPass.do?cmd=modifyPasswordForm&id="+id;
	window.open(url,"post","toolbar=no, width=500, height=300, directories=no," +
			"status=yes, scrollbars=yes, menubar=no");
}

function joinInputCheck() {
	
	if(!document.getElementById("id").value.replace(/(\s*)/gi, "")) {
		alert("아이디를 입력해 주세요");
		document.getElementById("id").focus();
		return false;
	}
	if(!document.getElementById("pass").value.replace(/(\s*)/gi, "")) {
		alert("비밀번호를 입력해 주세요");
		document.getElementById("pass").focus();
		return false;
	}
	if(!document.getElementById("repass").value.replace(/(\s*)/gi, "")) {
		alert("비밀번호를 확인해 주세요");
		document.getElementById("repass").focus();
		return false;
	}
	if(document.getElementById("repass").value != document.getElementById("pass").value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.getElementById("repass").focus();
		return false;
	}
	if(!document.getElementById("name").value.replace(/(\s*)/gi, "")) {
		alert("이름을 입력해 주세요");
		document.getElementById("name").focus();
		return false;
	}
	if(!document.getElementById("tel1").value.replace(/(\s*)/gi, "")) {
		alert("통신사를 선택해 주세요");
		document.getElementById("tel1").focus();
		return false;
	}
	if(!document.getElementById("tel2").value.replace(/(\s*)/gi, "")) {
		alert("전화번호 앞자리를 입력해 주세요");
		document.getElementById("tel2").focus();
		return false;
	}
	if(!document.getElementById("tel3").value.replace(/(\s*)/gi, "")) {
		alert("전화번호 뒷자리를 입력해 주세요");
		document.getElementById("tel3").focus();
		return false;
	}
	if(!document.getElementById("email").value.replace(/(\s*)/gi, "")) {
		alert("이메일을 입력해 주세요");
		document.getElementById("email").focus();
		return false;
	}
	
	var regExp = /[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(!regExp.test(document.getElementById("email").value.replace(/(\s*)/gi, ""))) {
		alert("잘못된 이메일 주소입니다.");
		document.getElementById("email").focus();
		return false;
	}
	if(!document.getElementById("zipcode").value.replace(/(\s*)/gi, "")) {
		alert("우편번호를 입력해 주세요");
		document.getElementById("zipcode").focus();
		return false;
	}
	if(!document.getElementById("address1").value.replace(/(\s*)/gi, "")) {
		alert("주소를 입력해 주세요");
		document.getElementById("address1").focus();
		return false;
	}
	if(!document.getElementById("address2").value.replace(/(\s*)/gi, "")) {
		alert("세부주소를 입력해 주세요");
		document.getElementById("address2").focus();
		return false;
	}
	
	if(!document.getElementById("checkedID").value || document.getElementById("checkedID").value != document.getElementById("id").value) {
		alert("아이디 중복확인을 해주세요");
		document.getElementById("id").focus();
		return false;
	}
	
}

function modifyInfoInputCheck() {
	
	if(!document.getElementById("pass").value.replace(/(\s*)/gi, "")) {
		alert("비밀번호를 입력해 주세요");
		document.getElementById("pass").focus();
		return false;
	}
	if(document.getElementById("pass").value != document.getElementById("clientPass").value) {
		alert("비밀번호가 맞지 않습니다");
		document.getElementById("pass").focus();
		return false;
	}
	if(!document.getElementById("name").value.replace(/(\s*)/gi, "")) {
		alert("이름을 입력해 주세요");
		document.getElementById("name").focus();
		return false;
	}
	if(!document.getElementById("tel1").value.replace(/(\s*)/gi, "")) {
		alert("통신사를 선택해 주세요");
		document.getElementById("tel1").focus();
		return false;
	}
	if(!document.getElementById("tel2").value.replace(/(\s*)/gi, "")) {
		alert("전화번호 앞자리를 입력해 주세요");
		document.getElementById("tel2").focus();
		return false;
	}
	if(!document.getElementById("tel3").value.replace(/(\s*)/gi, "")) {
		alert("전화번호 뒷자리를 입력해 주세요");
		document.getElementById("tel3").focus();
		return false;
	}
	if(!document.getElementById("email").value.replace(/(\s*)/gi, "")) {
		alert("이메일을 입력해 주세요");
		document.getElementById("email").focus();
		return false;
	}
	
	var regExp = /[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(!regExp.test(document.getElementById("email").value)) {
		alert("잘못된 이메일 주소입니다.");
		document.getElementById("email").focus();
		return false;
	}
	if(!document.getElementById("zipcode").value) {
		alert("우편번호를 입력해 주세요");
		document.getElementById("zipcode").focus();
		return false;
	}
	if(!document.getElementById("address1").value.replace(/(\s*)/gi, "")) {
		alert("주소를 입력해 주세요");
		document.getElementById("address1").focus();
		return false;
	}
	if(!document.getElementById("address2").value.replace(/(\s*)/gi, "")) {
		alert("세부주소를 입력해 주세요");
		document.getElementById("address2").focus();
		return false;
	}
	
	
}

function modifyPasswordInputCheck() {
	if(!document.getElementById("pass").value.replace(/(\s*)/gi, "")) {
		alert("비밀번호를 입력해 주세요");
		document.getElementById("pass").focus();
		return false;
	}
	if(!document.getElementById("newPass").value.replace(/(\s*)/gi, "")) {
		alert("새 비밀번호를 입력해 주세요");
		document.getElementById("newPass").focus();
		return false;
	}
	if(!document.getElementById("reNewPass").value.replace(/(\s*)/gi, "")) {
		alert("새 비밀번호를 확인을 입력해 주세요");
		document.getElementById("reNewPass").focus();
		return false;
	}
	if(document.getElementById("newPass").value != document.getElementById("reNewPass").value) {
		alert("새 비밀번호를 확인해 주세요.");
		document.getElementById("reNewPass").focus();
		return false;
	}
}