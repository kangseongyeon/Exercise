package ch12.com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter {
	
	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		 System.out.println("TestFilter..! 초기화");
	     System.out.println(filterConfig.getInitParameter("param1"));
	     this.filterConfig = filterConfig;
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter 수행");		
		request.setCharacterEncoding("UTF-8");
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		
		if(session == null) {
			resp.sendRedirect("loginForm.jsp");
		}
	}


	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("TestFilter 해제...!");
	}

}
