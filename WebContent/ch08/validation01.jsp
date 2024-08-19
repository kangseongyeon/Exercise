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
		<input type="button"  value="전송" onclick = "CheckLogin()">
	</form>
</body>
<script type="text/javascript">
function CheckLogin(){
	var form = document.loginForm;
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
	if(form.pw.value.includes(form.id.value)) {
		alert("비밀번호는 아이디를 포함할 수 없습니다.");
		form.pw.select();
		return false;
	}
	form.submit();
}
</script>
</html>