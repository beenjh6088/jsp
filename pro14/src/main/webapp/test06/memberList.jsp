<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>ID</b></td>
			<td width="7%"><b>PWD</b></td>
			<td width="7%"><b>Name</b></td>
			<td width="7%"><b>Email</b></td>
			<td width="7%"><b>JoinDate</b></td>
		</tr>
		<c:choose>
			<c:when test="${membersList==null }">
				<tr>
					<td colspan="5"><b>there are no members</b></td>
				</tr>
			</c:when>
			<c:when test="${membersList!= null }">
				<c:forEach var="mem" items="${membersList }">
					<tr align="center">
						<td>${mem.id }</td>
						<td>${mem.pwd }</td>
						<td>${mem.name }</td>
						<td>${mem.email }</td>
						<td>${mem.joinDate }</td>
					</tr>						
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
</body>
</html>