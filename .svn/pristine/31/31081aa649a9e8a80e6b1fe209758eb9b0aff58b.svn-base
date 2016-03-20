package com.zyj.filter;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**************************************************************************************************************
 * 名称:Url中注入过滤器
 * 
 * 功能:可以过滤,导向到错误页,防止代码泄漏
 * 
 * 需要的设置:Web.Xml文件中需要进行如下设置 <filter> <filter-name>urlfilter</filter-name>
 * <filter-class>com.zmkj.filter.UrlFilter</filter-class> </filter>
 * 
 * <filter-mapping> <filter-name>urlfilter</filter-name>
 * <url-pattern>/*</url-pattern> </filter-mapping>
 * 
 * 编译后的class文件要放在class\bxconn文件夹下,改变Web.xml文件后需要重启Tomcat服务器
 * 
 * 作者:internet
 * 
 * 日期:2006-11-1
 * 
 * 
 ****************************************************************************************************************/

@SuppressWarnings("serial")
public class UrlFilter extends HttpServlet implements Filter {
	@SuppressWarnings("rawtypes")
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws ServletException, IOException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		boolean istrue=true;
		Enumeration en =req.getParameterNames();
		
		while (en!=null&&en.hasMoreElements()) {
			
			String[] values = req.getParameterValues((String)en.nextElement());
			for (String value : values) {
				if (sql_inj(value)) {
					istrue=false;//res.sendRedirect(req.getContextPath() + "/403.jsp");
				}
			}
		}
		if (istrue)
			chain.doFilter(request, response);
		else
			res.sendRedirect(req.getContextPath() + "/403.jsp");
	}

	// 过滤函数

	public static boolean sql_inj(String str) {
		String inj_str = "' * +";
		String inj_stra[] = inj_str.split(" ");

		for (int i = 0; i < inj_stra.length; i++) {
			if (str.indexOf(inj_stra[i]) >= 0) {
				return true;
			}
		}
		return false;
	}

	// 过滤结束
	public void init(FilterConfig config) throws ServletException {
	}

	public void destroy() {
	}
}
