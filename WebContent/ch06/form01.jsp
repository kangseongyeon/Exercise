<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "form01_process.jsp" name = "member" method = "post">
		이름 : <input type = "text" name = "name" id = "name" /><br/>
		주소 : <input type = "text" name = "addr" id = "addr" /><br/>
		이메일 : <input type = "text" name = "email" id = "email" /><br/>
		
		<input type="submit" value="전송" />
	</form>
</body>
</html>