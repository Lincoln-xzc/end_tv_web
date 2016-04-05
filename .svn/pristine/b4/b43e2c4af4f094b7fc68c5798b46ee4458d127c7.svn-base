package com.zyj.filter;


import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.lf5.util.StreamUtils;

/**
 * MyRequestWrapper.
 * 
 * @author havery
 */
public class JsonRequestWrapper extends HttpServletRequestWrapper {
	
	private final byte[] body; // 报文
	
	private String json;

	public JsonRequestWrapper(HttpServletRequest request) throws IOException {
		super(request);
		String contentType = request.getContentType();
		if(StringUtils.isEmpty(contentType) 
				|| contentType.indexOf("application/x-www-form-urlencoded")<0)
			body=StreamUtils.getBytes(request.getInputStream());
		else
			body= null;
		if(body!=null)
			json = new String(body, "UTF-8");
		else
			json = "{}";
	}
	
	@Override
	public BufferedReader getReader() throws IOException {
		return new BufferedReader(new InputStreamReader(getInputStream()));
	}
	
	@Override
	public ServletInputStream getInputStream() throws IOException {
		final ByteArrayInputStream bais = new ByteArrayInputStream(body);
		return new ServletInputStream() {
			
			@Override
			public int read() throws IOException {
				return bais.read();
			}
		};
	}
	
	public String getJson(){
		return json;
	}

}