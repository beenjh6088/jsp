package sec01.ex01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class InputServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7912859215560632913L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("user_id : "+user_id);
		System.out.println("user_pw : "+user_pw);
		String[] subject = request.getParameterValues("subject");
		if(subject != null) {
			for(var sub : subject) {
				System.out.println("subject : "+sub);
			}
		}
	}
	
}
