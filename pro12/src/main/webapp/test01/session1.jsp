<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String) session.getAttribute("name");
	session.setAttribute("address", "seoul");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name is <%=name %><br>
	<a href='session2.jsp'>move to second page</a>
</body>
</html>