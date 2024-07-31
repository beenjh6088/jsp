package sec03.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login5")
public class LoginServlet5 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2247521115314199810L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String address = request.getParameter("user_address");
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		String data = "<html>";
		data += "<body>";
		data += "id : "+id;
		data += "<br>";
		data += "pw : "+pw;
		data += "<br>";
		data += "addr : "+address;
		data += "</body>";
		data += "</html>";
		out.print(data);
	}
}
