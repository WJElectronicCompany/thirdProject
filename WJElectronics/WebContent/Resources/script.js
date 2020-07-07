var popupWidth = 300;
var popupHeight = 100;

var popupX = (window.screen.width / 2) - (popupWidth / 2);
var popupY= (window.screen.height / 2) - (popupHeight / 2);

function loginInputCheck() {
	if(document.loginform.id.value=="") {
		alert("아이디를 입력하십시오.");
		document.loginform.id.focus();
		return false;
	}
	
	if(document.loginform.pw.value=="") {
		alert("비밀번호을 입력하십시오.");
		document.loginform.pw.focus();
		return false;
	}
	
}


function idDoubleCheck(id) {
	if(id == "") {
		alert("아이디를 입력해 주세요");
		document.regForm.id.foucs();
	} else {
		url = "/WJElectronics/client/join.do?cmd=idDoubleCheck&id="+id;
		window.open(url,"post",'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	}
}

function joinInputCheck() {
	var theForm = document.joinForm;
	
	if(!theForm.id.value) {
		alert("아이디를 입력해 주세요");
		theForm.id.focus();
		return;
	}
	if(!theForm.pass.value) {
		alert("비밀번호를 입력해 주세요");
		theForm.pass.focus();
		return;
	}
	if(!theForm.repass.value) {
		alert("비밀번호를 확인해 주세요");
		theForm.repass.focus();
		return;
	}
	if(theForm.repass.value != theForm.pass.value) {
		alert("비밀번호가 일치하지 않습니다.");
		theForm.repass.focus();
		return;
	}
	if(!theForm.name.value) {
		alert("이름을 입력해 주세요");
		theForm.name.focus();
		return;
	}
	if(!theForm.phone1.value) {
		alert("통신사를 선택해 주세요");
		theForm.phone1.focus();
		return;
	}
	if(!theForm.phone2.value) {
		alert("전화번호 앞자리를 입력해 주세요");
		theForm.phone2.focus();
		return;
	}
	if(!theForm.phone3.value) {
		alert("전화번호 뒷자리를 입력해 주세요");
		theForm.phone3.focus();
		return;
	}
	if(!theForm.email.value) {
		alert("이메일을 입력해 주세요");
		theForm.email.focus();
		return;
	}
	
	var regExp = /[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if(!regExp.test(theForm.email.value)) {
		alert("잘못된 이메일 주소입니다.");
		theForm.email.focus();
		return;
	}
	if(!theForm.zipcode.value) {
		alert("우편번호를 입력해 주세요");
		theForm.zipcode.focus();
		return;
	}
	if(!theForm.address1.value) {
		alert("주소를 입력해 주세요");
		theForm.address1.focus();
		return;
	}
	if(!theForm.address2.value) {
		alert("세부주소를 입력해 주세요");
		theForm.address2.focus();
		return;
	}
	theForm.submit();
}