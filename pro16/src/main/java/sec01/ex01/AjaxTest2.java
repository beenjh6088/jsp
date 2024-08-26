package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxTest2")
public class AjaxTest2 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(req, resp);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String result = "";
		PrintWriter writer = response.getWriter();
		result ="<main><book>"+
				"<title><![CDATA[Beginer for JAVA]]></title>"+
				"<writer><![CDATA[infobooks by byeong]]></writer>"+
				"<image><![CDATA[http://localhost:8090/pro16/image/image1.jpg]]></image>"+
				"</book>"+
				"<book>"+
				"<title><![CDATA[Python for Everyone]]></title>"+
				"<writer><![CDATA[gilbut by sueng]]></writer>"+
				"<image><![CDATA[http://localhost:8090/pro16/image/image2.jpg]]></image>"+
				"</book></main>";
		writer.print(result);
	}
}
