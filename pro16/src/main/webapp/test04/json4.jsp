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
				var jsonStr = '{"members":[{"name":"park","age":25, "gender":"male", "nickname":"speedy"},{"name":"son", "age":30, "gender":"male", "nickname":"tank"}]}';
				var jsonObj = JSON.parse(jsonStr);
				var output = "info<br>"
				output += "=======<br>";
				for(var i in jsonObj.members) {
					output += "name : "+jsonObj.members[i].name+"<br>";
					output += "age : "+jsonObj.members[i].age+"<br>";
					output += "gender : "+jsonObj.members[i].gender+"<br>";
					output += "nickname : "+jsonObj.members[i].nickname+"<br><br><br>";
				}
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