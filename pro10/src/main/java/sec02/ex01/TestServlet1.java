package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first/test")
public class TestServlet1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4905639334364523003L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String context = request.getContextPath();
		String url = request.getRequestURL().toString();
		String mapping = request.getServletPath();
		String uri = request.getRequestURI();
		out.print("<html>");
		out.print("<body bgcolor='green'>");
		out.print("<b>TestServlet1</b><br>");
		out.print("<b>context : "+context+"</b><br>");
		out.print("<b>url : "+url+"</b><br>");
		out.print("<b>mapping : "+mapping+"</b><br>");
		out.print("<b>URI : "+uri+"</b><br>");
		out.print("</body></html>");
		out.close();
	}
}
