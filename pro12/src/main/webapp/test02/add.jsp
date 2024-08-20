<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="addException.jsp"
    %>
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int sum = 0;
	for(int i = 0; i <= num; i ++) {
		sum = sum + i;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Sum</h2>
	<h1>from 1 to <%=num %> in total, it is <%=sum %></h1>
</body>
</html>