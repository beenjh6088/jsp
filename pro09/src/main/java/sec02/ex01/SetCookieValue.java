package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/set")
public class SetCookieValue extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7133312130581491986L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Date d = new Date();
		Cookie c = new Cookie("cookieTest", URLEncoder.encode("JSP Programing", "utf-8"));
//		c.setMaxAge(24*60*60);
		c.setMaxAge(-1);
		response.addCookie(c);
		out.print("now : "+d+"<br>");
		out.print("save textes on Cookie");
	}
}
