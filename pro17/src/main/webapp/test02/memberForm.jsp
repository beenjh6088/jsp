<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.cls1 {
			font-size: 40px;
			text-align: center;
		}
		
		.cls2 {
			font-size: 20px;
			text-align: center;
		}
	</style>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
	<form method="post" action="${contextPath }/member/addMember.do">
		<h1 style="text-align:center">join form</h1>
		<table>
			<tr>
				<td width='200'><p align='right'> id</p></td>
				<td width='400'><input type='text' name='id'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'> pwd</p></td>
				<td width='400'><input type='text' name='pwd'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'> name</p></td>
				<td width='400'><input type='text' name='name'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'> email</p></td>
				<td width='400'><input type='text' name='email'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'> &npsp;</p></td>
				<td width='400'>
					<input type='submit' value='join'>
					<input type='reset' value='reset'>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>