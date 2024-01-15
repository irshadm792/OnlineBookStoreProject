<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<%
		String msg =(String) request.getAttribute("msg");
		out.println(msg);
		
	%>
	<a href="AdminLogin.jsp">Home</a>
</body>
</html>