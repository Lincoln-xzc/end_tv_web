package com.zyj.framework.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ResourceBundleMessageSource;

import com.zyj.framework.bean.PageResultBean;
import com.zyj.util.NumberUtil;
import com.zyj.util.PagingBean;
import com.zyj.util.StringUtil;

public class BaseAction {

	@Autowired
	private ResourceBundleMessageSource messageSource;

	protected Logger logger = Logger.getLogger(getClass());
	
	protected PagingBean pagingBean;

	protected String getMessage(String code, Object[] args,
			HttpServletRequest request) {
		return this.messageSource.getMessage(code, args, request.getLocale());
	}

	protected void bindObjectFromExt(HttpServletRequest request, Object obj) {
		Enumeration names = request.getParameterNames();

		Map map = new HashMap();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			map.put(name, request.getParameter(name).trim());
		}
		try {
			BeanUtils.copyProperties(obj, map);
		} catch (Exception e) {
			this.logger.error(e.getMessage(), e);
		}
	}
	
	/**
	 * 获取json
	 * @param request
	 * @return
	 */
	protected String getJson(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");  
		BufferedReader buff = null;
		StringBuffer str = null;
		str = new StringBuffer();
		String s = null;
		buff = new BufferedReader(new InputStreamReader(request.getInputStream(),"UTF-8"));
		while ((s = buff.readLine()) != null){
			str.append(s);
		}
		String p = str.toString();
		if(StringUtil.isEmpty(p)){
			p = "{}";
		}
		return p;
	}
	
	/**
	 * 获取参数
	 * @param request
	 * @return
	 */
	protected JSONObject getParameter(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");  
		BufferedReader buff = null;
		StringBuffer str = null;
		str = new StringBuffer();
		String s = null;
		buff = new BufferedReader(new InputStreamReader(request.getInputStream(),"UTF-8"));
		while ((s = buff.readLine()) != null){
			str.append(s);
		}
		String p = str.toString();
		if(StringUtil.isEmpty(p)){
			p = "{}";
		}
		JSONObject param = JSONObject.fromObject(p);
		return param;
	}

	/**
	 * 绑定参数成map
	 * @param request
	 * @return
	 */
	protected Map getParameterMapFromExt(HttpServletRequest request) {
		Enumeration names = request.getParameterNames();

		Map map = new HashMap();
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			map.put(name, request.getParameter(name).trim());
		}
		return map;
	}

	public PageResultBean getPageInfo(HttpServletRequest request) {
		PageResultBean prb = new PageResultBean();
		prb.setBegin(0);
		String topage = request.getParameter("toPage");
		prb.setToPage(NumberUtil.parseInt(topage));
		int pageSize = NumberUtil.parseInt(request.getParameter("pageSize"));
		prb.setPageSize(pageSize <= 0 ? 20 : pageSize);
		return prb;
	}

	public PagingBean getPagingBean() {
		return pagingBean;
	}

	public void setPagingBean(PagingBean pagingBean) {
		this.pagingBean = pagingBean;
	}
	
	
}