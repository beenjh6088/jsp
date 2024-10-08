package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static float USD_RATE = 1124.70F;
	private static float JPY_RATE = 10.113F;
	private static float CNY_RATE = 163.30F;
	private static float GBP_RATE = 1444.35F;
	private static float EUR_RATE = 1295.97F;

	/**
	 * 
	 */
	private static final long serialVersionUID = 4043705934734077735L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter pw = response.getWriter();
		String command = request.getParameter("command");
		String won = request.getParameter("won");
		String operator = request.getParameter("operator");
		
		if(command != null && command.equals("calculate")) {
			String result = calculate(Float.parseFloat(won), operator);
			pw.print("<html><font size=10>Result</font><br>");
			pw.print("<font size=10>"+result+"</font>");
			pw.print("<a href='/pro06/calc'>Calculator</a>");
			return;
		}
		
		pw.print("<html><title>exchange rate</title>");
		pw.print("<font size=5>exchange rate</font><br>");
		pw.print("<form name='frmCalc' method='get' action='/pro06/calc' />");
		pw.print("won : <input type='text' name='won' size=10 />");
		pw.print("<select name='operator'>");
		pw.print("<option value='dollar'>USD</option>");
		pw.print("<option value='en'>JPN</option>");
		pw.print("<option value='wian'>CHY</option>");
		pw.print("<option value='pound'>GBP</option>");
		pw.print("<option value='euro'>EUR</option>");
		pw.print("</select>");
		pw.print("<input type='hidden' name='command' value='calculate' />");
		pw.print("<input type='submit' value='convert' />");
		pw.print("</form>");
		pw.print("</html>");
		pw.close();
	}
	
	private static String calculate(float won, String operator) {
		String result = null;
		if(operator.equals("dollar")) {
			result = String.format("%.6f", won/USD_RATE);
		}else if(operator.equals("en")) {
			result = String.format("%.6f", won/JPY_RATE);
		}else if(operator.equals("wian")) {
			result = String.format("%.6f", won/CNY_RATE);
		}else if(operator.equals("pound")) {
			result = String.format("%.6f", won/GBP_RATE);
		}else if(operator.equals("euro")) {
			result = String.format("%.6f", won/EUR_RATE);
		}
		return result;
	}
}
