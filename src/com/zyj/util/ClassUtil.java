package com.zyj.util;

import java.io.InputStream;

public class ClassUtil {

	private static ClassUtil instance = new ClassUtil();

	public static InputStream getResourceAsStream(String fileName){
		
		return instance.loadResource(fileName);
	}

	
	
	private InputStream loadResource(String fileName) {
		
		return getClass().getClassLoader().getResourceAsStream(fileName);
	}
	 
}
