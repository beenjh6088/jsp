<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='contextPath' value='${pageContext.request.contextPath }' />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<c:set var='file1' value='${param.param1 }'></c:set>
	<c:set var='file2' value='${param.param2 }'></c:set>
</head>
<body>
	param 1 : <c:out value='${file1 }' /> <br>
	param 2 : <c:out value='${file2 }' /> <br>
	
	<c:if test='${not empty file1 }'>
		<img src='${contextPath }/download.do?fileName=${file1}' width=300 height=300 /> <br>
	</c:if>
	
	<c:if test='${not empty file2 }'>
		<img src='${contextPath }/download.do?fileName=${file2}' width=300 height=300 /> <br>
	</c:if>
	
	download : <br>
	<a href='${contextPath }/download.do?fileName=${file2}'>download a file</a>
</body>
</html>