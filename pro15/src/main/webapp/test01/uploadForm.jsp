<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${contextPath}/upload.do"  method="post" enctype="multipart/form-data" >
		file1 : <input type="file" name="file1"><br>
		file2 : <input type="file" name="file2"><br>
		param1 : <input type="text" name="param1"> <br>
		param2 : <input type="text" name="param2"> <br>
		param3 : <input type="text" name="param3"> <br>
		<input type="submit" value="upload">
	</form>
</body>
</html>