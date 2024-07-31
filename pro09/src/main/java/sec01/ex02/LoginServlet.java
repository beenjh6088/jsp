package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void init() throws ServletException {
		System.out.println("init");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_address = request.getParameter("user_address");
		String user_email = request.getParameter("user_email");
		String user_hp= request.getParameter("user_hp");
		out.print("<html></body>");
		out.print("user_id : "+user_id+"<br>");
		out.print("user_pw : "+user_pw+"<br>");
		out.print("user_address : "+user_address+"<br>");
		out.print("user_email : "+user_email+"<br>");
		out.print("user_hp : "+user_hp+"<br>");
		
		user_address = URLEncoder.encode(user_address, "utf-8");
		out.print("<a href='/pro09/second?user_id="+user_id+"&user_pw="+user_pw+"&user_address="+user_address+"'>send to SecondServlet</a>");
		
		out.print("</body></html>");
	}
	
	public void destroy() {
		System.out.println("destroy");
	}
}
