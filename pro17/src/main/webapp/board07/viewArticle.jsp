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
  <style>
    #tr_btn_modify{
      display:none;
    }
  
  </style>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script >
		function fn_enable(obj) {
			
			document.getElementById("i_title").disabled = false;
			document.getElementById("i_content").disabled = false;
			document.getElementById("i_imageFileName").disabled = false;
			document.getElementById("tr_btn_modify").style.display = "block";
			document.getElementById("tr_btn").style.display = "none";
		}
		
		function fn_modify_article(obj) {
			obj.action= "${contextPath}/board/modArticle.do";
			obj.submit();
		}
    function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
    }
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
					$('#preview').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		function fn_remove_article(url, articleNO) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", url);
			var articleNOInput = document.createElement("input");
			articleNOInput.setAttribute("type", "hidden");
			articleNOInput.setAttribute("name", "articleNO");
			articleNOInput.setAttribute("value", articleNO);
			form.appendChild(articleNOInput);
			document.body.appendChild(form);
			form.submit();
		}
		function fn_reply_form(url, parentNO) {
			var form = document.createElement("form");
			form.setAttribute("method", "post");
			form.setAttribute("action", url);
			var parentNOInput = document.createElement("input");
			parentNOInput.setAttribute("type", "hidden");
			parentNOInput.setAttribute("name", "parentNO");
			parentNOInput.setAttribute("value", parentNO);
			form.appendChild(parentNOInput);
			document.body.appendChild(form);
			if(parentNO >= 0) {
				form.submit();
			}
		}
		
	</script>
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
						<input type='file' name="imageFileName" id="i_imageFileName" disabled onchange='readURL(this);'>
					</td>
				</tr>	
			</c:if>
			
			<tr>
				<td width="20%" align="center" bgcolor="#ff9933">writeDate</td>
				<td>
					<input type="text" value="<fmt:formatDate value='${article.writeDate }' />" disabled />
				</td>
			</tr>
			
			<tr id="tr_btn_modify">
				<td colspan='2' align="center">
					<input type="button" value="refelct an update" onClick="fn_modify_article(this.form)">
					<input type="button" value="cancle" onClick="backToList(this.form)">
				</td>
			</tr>
			
		  <tr  id="tr_btn">
		   <td colspan=2 align=center>
			    <input type=button value="update" onClick="fn_enable(this.form)">
			    <input type=button value="delete" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
			    <input type=button value="backToList"  onClick="backToList(this.form)">
	     		<input type=button value="reply"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
		   </td>
		  </tr>
		</table>
	</form>
</body>
</html>