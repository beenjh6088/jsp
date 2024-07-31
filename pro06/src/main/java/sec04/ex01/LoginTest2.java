package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginTest2")
public class LoginTest2 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7717338390783670079L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		out.print("<html>");
		out.print("<body>");
		if(id != null && id.length() != 0) {
			if(id.equals("admin")) {;
				out.print("<font size='12'>login with the admin account</font>");
				out.print("<br>");
				out.print("<input type='button' value='UPDATE'>");
				out.print("<input type='button' value='DELETE'>");
			}else {
				out.print("<font>"+id+", welcome to our shop</font>");
			}
		}else {
			out.print("<font color='red'>Enter your ID and Password</font>");
			out.print("<br>");
			out.print("<a href='http://localhost:8090/pro06/test01/login.html'>go to the login page</a>");
		}
		out.print("</html>");
		out.print("</body>");
	}
}
