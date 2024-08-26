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
				var jsonStr = '{"name":"park", "age":25, "gender":"male", "nickname":"speedy"}';
				var jsonObj = JSON.parse(jsonStr);
				var output = "info<br>"
				output += "=======<br>";
				output += "name : "+jsonObj.name+"<br>";
				output += "age : "+jsonObj.age+"<br>";
				output += "gender : "+jsonObj.gender+"<br>";
				output += "nickname : "+jsonObj.nickname+"<br>";
				$("#output").html(output);
			})
		})
		
	</script>

</head>
<body>
	<input type='button' id='checkJson' value='checkJson'><br>
	<div id='output'></div>
</body>
</html>