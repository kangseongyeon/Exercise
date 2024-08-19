<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 내 풀이 -->
	<p>Today : <%=new Date() %> </p>
	
	<!-- 다른 사람 풀이 -->
	<% Date current = new Date(); %>
	Today : <%=current %>
</body>
</html>