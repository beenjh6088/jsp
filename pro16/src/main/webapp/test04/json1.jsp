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
				var jsonStr = '{"name": ["hong", "lee", "lim"]}';
				var jsonInfo = JSON.parse(jsonStr);
				var output = "member name<br>";
				output += "========<br>";
				for(var i in jsonInfo.name) {
					output += jsonInfo.name[i]+"<br>";
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