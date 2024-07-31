package sec05.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cget")
public class GetServletContext extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 992328069980935225L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		ServletContext context = getServletContext();
		List<String> member = (ArrayList)context.getAttribute("member");
		out.print("<html><body>");
		for(int i = 0; i < member.size(); i++) {
			String element = member.get(i);
			out.print(element);
			out.print("<br>");
		}
		out.print("</body></html>");
	}
}
