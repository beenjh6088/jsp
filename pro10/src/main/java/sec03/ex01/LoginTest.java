package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginTest extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_name = request.getParameter("user_name");
		String user_pw = request.getParameter("user_pw");
		out.print("<html><body>");
		out.print("name : "+user_name+"<br>");
		out.print("pw : "+user_pw+"<br>");
		out.print("</body></html>");
	}
}
