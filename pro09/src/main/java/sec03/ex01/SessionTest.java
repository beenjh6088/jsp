package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sess")
public class SessionTest extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4361260280346450351L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		out.print("id : "+session.getId()+"<br>");
		out.print("first time session generated : "+new Date(session.getCreationTime())+"<br>");
		out.print("recent time sessions accessed to our server : "+new Date(session.getLastAccessedTime())+"<br>");
		out.print("a valid time for session : "+session.getMaxInactiveInterval()+"<br>");
		if(session.isNew()) {
			out.print("new session is generated right now");
		}
	}
}
