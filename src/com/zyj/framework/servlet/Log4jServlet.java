package com.zyj.framework.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import org.apache.log4j.PropertyConfigurator;

public class Log4jServlet extends HttpServlet {
	public void init() throws ServletException {
		String path = getServletContext().getRealPath("/");
		String filename = path + "WEB-INF/classes/log4j.properties";
		PropertyConfigurator.configure(filename);
	}
}