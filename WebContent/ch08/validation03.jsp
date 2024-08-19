<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="validation_process.jsp" method="post" name="loginForm">
		아이디 : <input type="text" name="id"/><br/>
		비밀번호 : <input type="text" name="pw"/><br/>
		비밀번호 확인: <input type="text" name="pwCheck"/><br/>
		<input type="button"  value="전송" onclick = "CheckLogin()">
	</form>
</body>
<script type="text/javascript">
function CheckLogin() {
	var regExpPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
	
	var form = document.loginForm;
	var pw = form.pw.value;
	var pwCheck = form.pwCheck.value;
	
	if(form.id.value=="") {
		alert("아이디를 입력해주세요.");
		form.id.select();
		return false;
	}
	if(form.pw.value=="") {
		alert("비밀번호를 입력해주세요.");
		form.pw.select();
		return false;
	}
	if(!regExpPw.test(pw)) {
		alert("영문+숫자+특수문자로 8자리 이상으로 구성해야 합니다.");
		form.pw.select();
		return false;
	}
	if(pw != pwCheck) {
		alert("비밀번호를 다시 확인해주세요");
		form.pwCheck.select();
		return false;
	}
	form.submit();
};
</script>
</html>