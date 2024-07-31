package sec04.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guguTest3")
public class GuguTest3 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2743641483210223104L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		int dan = Integer.parseInt(request.getParameter("dan"));
		out.print("<table border=1 width=800 align=center;>");
		out.print("<tr align=center bgcolor=#FFFF66>");
		out.print("<td colspan=4>"+dan+" nultiplication table");
		out.print("</tr>");
		for(int i = 1; i <= 9; i++) {
			if(i % 2 == 0) {
				out.print("<tr align=center bgcolor='#acfa58'>");
			}else {
				out.print("<tr align=center bgcolor='#81bef7'>");
			}
			out.print("<td width=200><input type='radio' />"+i+"</td>");
			out.print("<td width=200><input type='checkbox' />"+i+"</td>");
			out.print("<td width=400>"+dan+"*"+i+"</td>");
			out.print("<td width=400>"+(dan*i)+"</td>");
			out.print("</tr>");
		}
		out.print("</table>");
	}
}
