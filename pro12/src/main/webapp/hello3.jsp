<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "Lee";
	public String getName() {return name;}
%>
<% String age = request.getParameter("age"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello, <%=name %></h1>
	<h1>age <%=age %></h1>
	<h1>height <%=180 %></h1>
	<h1>age+10 : <%=Integer.parseInt(age)+10%></h1>
</body>
</html>