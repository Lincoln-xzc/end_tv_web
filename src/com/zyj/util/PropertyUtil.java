package com.zyj.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.cxf.common.util.StringUtils;

/**
 * PropertyUtil.java
 * 
 */

public class PropertyUtil {

	private static String serverPort = null;
	private static String localPort = null;
	
	private static Properties p=null;
	
	public static Properties getProperties() {
		if(p!=null)
			return p;
		p = new Properties();

		try {
			InputStream inputStream = PropertyUtil.class.getClassLoader().getResourceAsStream(
					"config.properties");

			p.load(inputStream);

		} catch (IOException e1) {
			e1.printStackTrace();
		}

		return p;
	}
	
	public static Object getOjbectVlaue(String key){
		return getProperties().get(key);
	}
	
	public static String getStringVlaue(String key){
		if(StringUtils.isEmpty(key))
			return "";
		return getProperties().getProperty(key);
	}
	
	public static String getServerPort(){
		if(serverPort==null){
			serverPort = getProperties().getProperty("server.serverPort");
		}
		
		return serverPort;
	}
	
	// 本地地址，方便调试
	public static String getLocalPort(){
		if(localPort==null){
			localPort = getProperties().getProperty("server.localPort");
		}
		
		return localPort;
	}
	
	public static void main(String[] r){
		System.out.println(getStringVlaue("alipay.account"));
	}
}
