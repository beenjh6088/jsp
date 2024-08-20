<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method='post' action='member_action.jsp'>
		<h1 style='text-align:center'>Join</h1>
		<table align='center'>
			<tr>
				<td width='200'><p align='right'>id</p></td>
				<td width='400'><input type='text' name='id'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>pwd</p></td>
				<td width='400'><input type='text' name='pwd'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>name</p></td>
				<td width='400'><input type='text' name='name'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>email</p></td>
				<td width='400'><input type='text' name='email'></td>
			</tr>
			<tr>
				<td width='200'><p align='right'>&nbsp;</p></td>
				<td width='400'>
					<input type='submit' value='join' />
					<input type='reset' value='reset' />
					</td>
			</tr>
		</table>
	</form>
</body>
</html>