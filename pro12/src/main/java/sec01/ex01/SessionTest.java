package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sess")
public class SessionTest extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("name", "lee");
		pw.print("<html><body>");
		pw.print("<h1>bind name to session</h1>");
		pw.print("<a href='/pro12/test01/session1.jsp'>move to first page</a>");
		pw.print("</body></html>");
	}
}
