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
					url:"${pageContext.request.contextPath}/json",
					data: {jsonInfo: _jsonInfo},
					success: function(data, textStatus) {
						
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