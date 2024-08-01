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

@WebServlet("/set")
public class SetAttribute extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7268993363758793786L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String ctxMesg = "binding to context";
		String sesMesg = "binding to session";
		String reqMesg = "binding to request";
		
		ServletContext ctx = getServletContext();
		HttpSession session = request.getSession();
		ctx.setAttribute("ctxMesg", ctxMesg);
		session.setAttribute("sesMesg", sesMesg);
		request.setAttribute("reqMesg", reqMesg);
		out.print("proceed to bind..");
	}

}
