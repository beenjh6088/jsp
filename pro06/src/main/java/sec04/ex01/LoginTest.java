package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginTest")
public class LoginTest extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3660827930953305908L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		if(id != null && id.length() != 0) {
			out.print("<html>");
			out.print("	<body>");
			out.print("id : "+id+", welcome to out site");
			out.print("	</body>");
			out.print("</html>");
		}else {
			out.print("<html>");
			out.print("	<body>");
			out.print("<span style='color:red;'>enter your ID</span>");
			out.print("");
			out.print("	</body>");
			out.print("</html>");
		}
	}
}
