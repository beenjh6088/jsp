package sec04.ex03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewMembers")
public class ViewServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2307555432813718590L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		List<MemberVO> membersList = (List<MemberVO>)request.getAttribute("membersList");
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>ID</td><td>Password</td><td>Name</td><td>Email</td><td>JoinDate</td><td>Delete</td></tr>");
		
		for(int i = 0; i < membersList.size(); i++) {
			MemberVO memberVO = (MemberVO)membersList.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			out.print("<tr><td>"+id+"</td><td>"+pwd+"</td><td>"+name+"</td><td>"+email+"</td><td>"+joinDate+"</td><td><a href='/pro08/member?command=delMember&id="+id+"'>delete</a></td></tr>");
		}
		out.print("</table></body></html>");
		out.print("<a href='/pro08/memberForm.html'>join</a>");
	}
}
