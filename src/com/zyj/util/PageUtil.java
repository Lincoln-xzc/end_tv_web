package com.zyj.util;

import net.sf.json.JSONObject;

/**
 * 分页帮助类
 * add fenglij
 * */
public class PageUtil {
	
	/**
	 * 根据页码(page)和每页记录条数(pageSize)
	 * 获得查起始条数(start)
	 * */
	public static Integer getStart(Integer page, Integer pageSize){
		if(page==null || page<1)
			page =1;
		if(pageSize==null || pageSize <1)
			pageSize = 10;
		int start = (page-1)*pageSize;
		
		return start;
	}
	
	/**
	 * 根据总记录条数，获得总页数
	 * */
	public static Integer getTotalPage(int count, Integer pageSize){
		int max_page = 0;
		if (count % pageSize == 0) {
			max_page = count / pageSize;
		} else {
			max_page = count / pageSize + 1;
		}
		
		return max_page;
	}

}
