package sec06.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadAppConfig
 */
@WebServlet(name = "loadConfig", urlPatterns = { "/loadConfig" }, loadOnStartup = 1)
public class LoadAppConfig extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext context;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadAppConfig() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("LoadAppConfig init method");
		context = config.getServletContext();
		String menu_member = context.getInitParameter("menu_member");
		String menu_order = context.getInitParameter("menu_order");
		String menu_goods = context.getInitParameter("menu_goods");
		context.setAttribute("menu_member", menu_member);
		context.setAttribute("menu_order", menu_order);
		context.setAttribute("menu_goods", menu_goods);
		System.out.println("LoadAppConfig init menu_member : "+menu_member);
		System.out.println("LoadAppConfig init menu_order : "+menu_order);
		System.out.println("LoadAppConfig init menu_goods : "+menu_goods);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String menu_member = (String)context.getAttribute("menu_member");
		String menu_order = (String)context.getAttribute("menu_order");
		String menu_goods = (String)context.getAttribute("menu_goods");
		System.out.println("doGet menu_member : "+menu_member);
		System.out.println("doGet menu_order : "+menu_order);
		System.out.println("doGet menu_goods : "+menu_goods);
		
		out.print("<html><body>");
		out.print("<table border=1 cellspacing=0><tr>menu</tr>");
		out.print("<tr><td>"+menu_member+"</td></tr>");
		out.print("<tr><td>"+menu_order+"</td></tr>");
		out.print("<tr><td>"+menu_goods+"</td></tr>");
		out.print("</table>");
		out.print("</body></html>");
	}

}
