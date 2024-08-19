<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "form03_process.jsp" name = "fruit" method = "post">
		오렌지 <input type = "checkbox" name = "fruit" id = "fruit1" value="Orange">
		사과 <input type = "checkbox" name = "fruit" id = "fruit2" value="Apple">
		바나나 <input type = "checkbox" name = "fruit" id = "fruit3" value="Banana">
		<input type = "submit" value = "전송 " />
	</form>
	
</body>
</html>