<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>선택한 과일</h3>
	
	<%
		request.setCharacterEncoding("UTF-8");
	
		String[] fruit = request.getParameterValues("fruit");
	%>
	
	<%
		if(fruit != null) {
			for (int i=0; i<fruit.length; i++) {
				out.print(" " + fruit[i]);
			}
		}
	%>
</body>
</html>