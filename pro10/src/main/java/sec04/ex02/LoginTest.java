package sec04.ex02;

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
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginTest extends HttpServlet {
	ServletContext context = null;
	List<String> user_list = new ArrayList();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		context = getServletContext();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		LoginImpl loginUser = new LoginImpl(user_id, user_pw);
		
		if(session.isNew()) {
			session.setAttribute("loginUser", loginUser);
			user_list.add(user_id);
			context.setAttribute("user_list", user_list);
		}
		
		out.print("<head>");
		out.print("<script type='text/javascript'>");
		out.print("setTimeout('history.go(0);', 4000)");
		out.print("</script>");
		out.print("</head>");
		
		out.print("<html><body>");
		out.print("id : "+loginUser.user_id+"<br>");
		out.print("total users : "+LoginImpl.total_user+"<br><br>");
		out.print("id access to  : <br>");
		
		List<String> list = (ArrayList) context.getAttribute("user_list");
//		List<String> list = user_list;
		for(int i = 0; i < list.size(); i++) {
			out.print(list.get(i)+"<br>");
		}
		out.print("<a href='logout?user_id="+user_id+"'>logout</a>");
		out.print("</body></html>");
	}
}
