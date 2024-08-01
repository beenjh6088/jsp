package sec03.ex01;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class EncoderFilter
 */
//@WebFilter("/*")
public class EncoderFilter extends HttpFilter implements Filter {
       
	/**
   * @see HttpFilter#HttpFilter()
   */
  public EncoderFilter() {
      super();
      // TODO Auto-generated constructor stub
  }

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("encoding with utf-8...");
	}
    
	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		System.out.println("doFilter called...");
		request.setCharacterEncoding("utf-8");
		String context = ((HttpServletRequest) request).getContextPath();
		String pathInfo = ((HttpServletRequest)request).getRequestURI();
		String realPath = request.getRealPath(pathInfo);
		String mesg = "Context : "+context
				+"\n URI : "+pathInfo
				+"\n realPath : "+realPath;
		System.out.println(mesg);
		long begin = System.currentTimeMillis();
		chain.doFilter(request, response);
		long end = System.currentTimeMillis();
		System.out.println("lead time : "+(end-begin)+"ms");
	}

}
