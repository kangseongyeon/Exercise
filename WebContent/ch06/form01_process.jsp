<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- StringBuffer 사용 -->
	<%
		request.setCharacterEncoding("UTF-8");
	
		StringBuffer name = new StringBuffer(request.getParameter("name"));
		StringBuffer addr = new StringBuffer(request.getParameter("addr"));
		StringBuffer email = new StringBuffer(request.getParameter("email"));
		
		out.println("이름 : " + name + "<br/>");
		out.println("주소 : " + addr + "<br/>");
		out.println("이메일 : " + email + "<br/>");
	%>
	
</body>
</html>