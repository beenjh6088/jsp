<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frmArticle" method='post' enctype='multipart/form-data'>
		<table>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">articleNO</td>
				<td>
					<input type="text" value="${article.articleNO}" name="articleNO" id="i_articleNO" disabled />
					<input type='hidden' name='articleNO' value='${article.articleNO }'/>
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">writer</td>
				<td>
					<input type="text" value="${article.id}" name="id" id="i_id" disabled />
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">title</td>
				<td>
					<input type="text" value="${article.title }" name="title" id="i_title" disabled />
				</td>
			</tr>
			<tr>
				<td width="150" align="center" bgcolor="#ff9933">content</td>
				<td>
					<textarea rows="20" cols="60" name="content" id="i_content" disabled>${article.content} </textarea>
				</td>
			</tr>
			
			<c:if test="${not empty article.imageFileName && article.imageFileName != 'null' }">
				<tr>
					<td width="20%" align="center" bgcolor="#ff9933" rowspan="2">image</td>
					<td>
						<input type="hidden" name="originalFileName" value="${article.imageFileName }" />
						<img src="${contextPath }/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO}" id="preview" /><br>
					</td>
				</tr>
				<tr>
					<td>
						<input type='file' value='file' disabled onchange='readURL(this);'>
					</td>
				</tr>	
			</c:if>
			
			<tr>
				<td width="20%" align="center" bgcolor="#ff9933">writeDate</td>
				<td>
					<input type="text" value="<fmt:formatDate value='${artilce.writeDate }' />" disabled />
				</td>
			</tr>
			
			<tr id="tr_btn">
				<td colspan="2" align='center'>
					<input type='button' value='update'>
					<input type='button' value='deelte'>
					<input type='button' value='toList' onclick="location.href='${contextPath}/board/listArticles.do'">
					<input type='button' value='rewrite'>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>