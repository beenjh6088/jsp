<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#checkJson").click(function() {
				var _jsonInfo = '{"name":"park", "age":25, "gender":"male", "nickname":"speedy"}';
				$.ajax({
					type:"post",
					async:false,
					url:"${pageContext.request.contextPath}/json3",
					data: {jsonInfo: _jsonInfo},
					success: function(data, textStatus) {
						var jsonInfo = JSON.parse(data);
						var memberInfo = "member info<br>";
						memberInfo += "=======<br>";
						for(var i in jsonInfo.members) {
							memberInfo += "name: "+jsonInfo.members[i].name +"<br>";
							memberInfo += "age: "+jsonInfo.members[i].age +"<br>";
							memberInfo += "gender: "+jsonInfo.members[i].gender +"<br>";
							memberInfo += "nickname: "+jsonInfo.members[i].nickname +"<br><br><br>";
						}
						
						var booksInfo = "<br><br><br>book info<br>";
						booksInfo += "=======<br>";
						for(var i in jsonInfo.books) {
							booksInfo += "title: "+jsonInfo.books[i].title+"<br>";
							booksInfo += "writer: "+jsonInfo.books[i].writer+"<br>";
							booksInfo += "price: "+jsonInfo.books[i].price+"<br>";
							booksInfo += "genre: "+jsonInfo.books[i].genre+"<br>";
							imageURL = jsonInfo.books[i].image;
							booksInfo += "<img src='"+imageURL+"' /><br><br><br>";
						}
						
						$("#output").html(memberInfo+"<br>"+booksInfo);
					}
				})
			})
		})
		
	</script>

</head>
<body>
	<input type='button' id='checkJson' value='checkJson'><br>
	<div id='output'></div>
</body>
</html>