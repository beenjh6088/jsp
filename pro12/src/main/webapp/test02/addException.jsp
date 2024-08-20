<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	toString()========================<br>
	<h1><%=exception.toString() %></h1>
	getMessage()========================<br>
	<h1><%=exception.getMessage() %></h1>
	printStackTrace()========================<br>
	<h1><% exception.printStackTrace(); %></h1>
</body>
</html>