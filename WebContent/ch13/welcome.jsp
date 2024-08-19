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
	String userId = (String)session.getAttribute("userId");

	if (userId == null) {
		response.sendRedirect("session_out.jsp");
	}
%>

<h3><%=userId %>님 반갑습니다.</h3><br/>
<a href="session_out.jsp">로그아웃</a>
</body>
</html>