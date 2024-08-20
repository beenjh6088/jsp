<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	MemberBean m = new MemberBean(id, pwd, name, email);
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.addMember(m);
	List<MemberBean> membersList = memberDAO.listMembers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align='center' width='100%'>
		<tr align='center' bgcolor='#99ccff'>
			<td width='7%'>ID</td>
			<td width='7%'>PWD</td>
			<td width='5%'>Name</td>
			<td width='11%'>Email</td>
			<td width='5%'>JoinDate</td>
		</tr>
		<%
			if(membersList.size()==0) {
		%>
				<tr>
					<td colspan="5">
						<p align='center'><b><span font-size='9pt'>there are no members</span></b>
				</tr>
		<%
			}else {
				for(int i = 0; i < membersList.size(); i++) {
					MemberBean bean = (MemberBean) membersList.get(i);
		%>
				<tr align='center'>
					<td><%=bean.getId() %>
					<td><%=bean.getPwd() %>
					<td><%=bean.getName() %>
					<td><%=bean.getEmail() %>
					<td><%=bean.getJoinDate() %>
				</tr>
		<%
				}
			}
		%>
			<tr height='1' bgcolor='#99ccff'>
				<td colspan='5'></td>
			</tr>
	</table>
</body>
</html>