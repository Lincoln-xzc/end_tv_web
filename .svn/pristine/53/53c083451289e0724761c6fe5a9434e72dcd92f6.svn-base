package com.zyj.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.zyj.util.LogUtils;

/**
 * LogServlet.java
 * 
 */

public class LogFilter implements Filter  {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		JsonRequestWrapper requestWrapper = null;     
		 if(request instanceof HttpServletRequest) {
			 HttpServletRequest hsr = (HttpServletRequest) request;
			 requestWrapper = new JsonRequestWrapper(hsr);     
			 String currentURL = hsr.getRequestURI();
			 String queryString = hsr.getQueryString();
			 String body =  null;
			 if(currentURL.indexOf("/uploadTmpImg/")<0)
				body= requestWrapper.getJson();
			 LogUtils.logAccess(currentURL,queryString, body);
		 }     
		 if(requestWrapper == null) {     
			 chain.doFilter(request, response);     
		 } else {     
			 chain.doFilter(requestWrapper, response);     
		 }     

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
