package com.zyj.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * FileUtil.java
 * 
 */

public class FileUtil {
	
	private static String baseFileUrl=null;
	
	/**
	 * @Description: 获取文件的绝对url
	 * @param path
	 * @return
	 */
	public static String getFileFullUrl(Object obj){
		if(obj==null)
			return "";
		String path = obj.toString().trim();
		if(StringUtils.isEmpty(path))
			return "";
		
		return getBaseFileUrl()+path;
	}
	
	/**
	 * @Description: 获取文件的基础url路径
	 * @return
	 */
	public static String getBaseFileUrl(){
		if(baseFileUrl==null)
			baseFileUrl = PropertyUtil.getStringVlaue("server.file_base_url");
		
		return baseFileUrl;
	}

	/**
	 * @Descrption: 获取文件存储的根路径，在项目存放路径的同级目录
	 * @return
	 */
	public static String getBaseFilePath(){
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		String basePath = request.getSession().getServletContext().getRealPath("");
		return FileUtils.getFile(basePath).getParent();
	}
}
