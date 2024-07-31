package sec05.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1290097600234491526L;

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
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		MemberVO memberVO = new MemberVO();
		memberVO.setId(user_id);
		memberVO.setPwd(user_pwd);
		MemberDAO dao = new MemberDAO();
		boolean result = dao.isExisted(memberVO);
		out.print("<html><body>");
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogin", true);
			session.setAttribute("login.id", user_id);
			session.setAttribute("login.pwd", user_pwd);
			out.print("hi, "+user_id+"<br>");
			out.print("<a href='show'>show member's info</a>");
		}else {
			out.println("<center>it's wrong an account</center>");
			out.println("a href='login3.html'>login again</a>");
		}
		out.print("</body></html>");
	}
}
