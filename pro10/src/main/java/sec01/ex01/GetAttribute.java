package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/get")
public class GetAttribute extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7268993363758793786L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext ctx = getServletContext();
		HttpSession session = request.getSession();
		
		String ctxMesg = (String) ctx.getAttribute("ctxMesg");
		String sesMesg = (String) session.getAttribute("sesMesg");
		String reqMesg = (String) request.getAttribute("reqMesg");
		
		out.println("context : "+ctxMesg+"<br>");
		out.println("session : "+sesMesg+"<br>");
		out.println("request : "+reqMesg+"<br>");
	}

}
