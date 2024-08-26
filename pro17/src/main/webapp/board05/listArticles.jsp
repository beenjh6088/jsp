<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.cls1 {
			text-decoration: none;
		}
		.cls2 {
			text-align: center;
			font-size: 30px;
		}
	</style>
</head>
<body>

	<table align="center" border="1" width="80%">
		<tr height="10" align="center" bgcolor="lightgreen">
			<td>articleNO</td>
			<td>writer</td>
			<td>title</td>
			<td>writeDate</td>
		</tr>
		<c:choose>
			<c:when test="${empty articlesList }">
				<tr height="10">
					<td colspan='4'><p align="center"><b><span>there are NO articles</span></b></p></td>
				</tr>
			</c:when>
			<c:when test="${!empty articlesList }">
				<c:forEach var="article" items="${articlesList }" varStatus="articleNum">
					<tr align="center">
						<td width="5%">${articleNum.count }</td>
						<td width="10%">${article.id }</td>
						<td align="left" width="35%">
							<span style="padding-left:30px"></span>
							<c:choose>
								<c:when test="${article.level > 1 }">
									<c:forEach begin="1" end="${article.level }" step="1">
										<span style="padding-left:20px;"></span>
									</c:forEach>
									<span style="font-size:12px;">[Reply]</span>
									<a class="cls1" href="${contextPath }/board/viewArticle.do?articleNO=${article.articleNO }">${article.title }</a>
								</c:when>
								<c:otherwise>
									<a class="cls1" href="${contextPath }/board/viewArticle.do?articleNO=${article.articleNO }">${article.title }</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td width="10%">
							<fmt:formatDate value="${article.writeDate }"/>
						</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<a class="cls1" href="${contextPath }/board/articleForm.do"><span class="cls2">write</span></a>
</body>
</html>