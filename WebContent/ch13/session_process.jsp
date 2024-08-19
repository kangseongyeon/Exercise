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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("admin1234")) {
			session.setAttribute("userId", id);
			response.sendRedirect("welcome.jsp");
		} else {
			out.println("다시 입력해주세요"); 
	%>
		<br/><a href = "session.jsp">로그인 화면</a>
	<%
	
		}
	%>
</body>
</html>