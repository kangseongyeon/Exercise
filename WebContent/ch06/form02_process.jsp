<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		Enumeration paramNames = request.getParameterNames();
		
		while (paramNames.hasMoreElements()) {
			StringBuffer name = new StringBuffer((String)  paramNames.nextElement());
			StringBuffer value = new StringBuffer(request.getParameter(name.toString()));
			
			out.println(name + " : " + value + "<br/>");
		}
	%>
</body>
</html>