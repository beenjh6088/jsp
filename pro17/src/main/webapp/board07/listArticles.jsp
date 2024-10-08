<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<c:set var="articlesList" value="${articlesMap.articlesList }"></c:set>
<c:set var="totArticles" value="${articlesMap.totArticles }"></c:set>
<c:set var="section" value="${articlesMap.section }"></c:set>
<c:set var="pageNum" value="${articlesMap.pageNum }"></c:set>
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
		.no-uline {text-decoration: none;}
		.sel-page {text-decoration: none; color: red;}
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
<%-- 						<td width="5%">${articleNum.count }</td> --%>
						<td width="5%">${article.articleNO }</td>
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

	<div class="cls2">
		<c:if test="${totArticles != null }" >
			<c:choose>
			  <c:when test="${totArticles >100 }">  <!-- 글 개수가 100 초과인경우 -->
					<c:forEach   var="page" begin="1" end="10" step="1" >
						<c:if test="${section >1 && page==1 }">
							<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a>
						</c:if>
						<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
						<c:if test="${page ==10 }">
							<a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
						</c:if>
					</c:forEach>
			  </c:when>
			  
			  <c:when test="${totArticles ==100 }" >  <!--등록된 글 개수가 100개인경우  -->
					<c:forEach   var="page" begin="1" end="10" step="1" >
					  <a class="no-uline"  href="#">${page } </a>
					</c:forEach>
			  </c:when>
			  
			  <c:when test="${totArticles< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
					<c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
						<c:choose>
							<c:when test="${page==pageNum }">
								<a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
							</c:when>
							<c:otherwise>
								<a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
			  </c:when>
			</c:choose>
		</c:if>
	</div>    
	<br><br>
	
	<a class="cls1" href="${contextPath }/board/articleForm.do"><span class="cls2">write</span></a>
</body>
</html>