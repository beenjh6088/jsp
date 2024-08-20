<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="sec02.ex01.MemberDAO"%>
<%@page import="sec02.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		h1 {
			text-align : center;
		}
	</style>
</head>
<body>
	<h1>Display Member Information</h1>
	<% 
		request.setCharacterEncoding("utf-8");
		String _name = request.getParameter("name");
		MemberVO memberVO = new MemberVO();
		memberVO.setName(_name);
		MemberDAO dao = new MemberDAO();
		List<MemberVO> membersList = dao.listMembers(memberVO);
	%>
	
	<table border=1 width='800' align=center>
		<tr align=center bgcolor="#ffff66">
			<td>ID</td>
			<td>PWD</td>
			<td>Name</td>
			<td>Email</td>
			<td>JoinDate</td>			
		</tr>
		<%
			for(int i = 0; i < membersList.size(); i++) {
				MemberVO vo = (MemberVO)membersList.get(i);
				String id = vo.getId();
				String pwd = vo.getPwd();
				String name = vo.getName();
				String email = vo.getEmail();
				Date joinDate = vo.getJoinDate();
		%>
			<tr align=center>
				<td><%= id %></td>
				<td><%= pwd %></td>
				<td><%=name %></td>
				<td><%=email %></td>
				<td><%=joinDate %></td>
			</tr>
		<%
			}
		%>
	</table>
	
</body>
</html>