<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name", "lee");
	request.setAttribute("address", "seoul");
	
	
	RequestDispatcher dispatch = request.getRequestDispatcher("request2.jsp");
	dispatch.forward(request, response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>