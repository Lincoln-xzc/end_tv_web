package com.zyj.filter;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.zyj.api.model.UserInfo;
import com.zyj.api.service.UserCenterService;
import com.zyj.api.util.UserUtils;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.framework.manager.SessionManager;
import com.zyj.global.Constants;
import com.zyj.util.LogUtils;
import com.zyj.util.StringUtil;


public class AuthorityInterceptor extends HandlerInterceptorAdapter {
	protected static Log log = LogFactory
			.getLog(AuthorityInterceptor.class);
	
	public AuthorityInterceptor(){};
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception{
	    if(!(handler instanceof org.springframework.web.method.HandlerMethod)){
			return super.preHandle(request, response, handler);
		}
		HandlerMethod hm = (HandlerMethod)handler;
		if(!hm.getMethod().isAnnotationPresent(ApiLoginRequired.class))
			return super.preHandle(request, response, handler);
		
		/*ApiLoginRequired authAnno = hm.getMethod().getAnnotation(ApiLoginRequired.class);
		boolean allowNick = authAnno.allowNick();
		
		Map pathParamMap = (Map) request.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);
		String token = (String) pathParamMap.get("token");
		if(token.equals("token")){
			//是否允许匿名登陆
			if(allowNick)
				return super.preHandle(request, response, handler);
			else{
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("code", ApiResultBean.TOKEN_ERROR_CODE);
				this.writeJsResponse(response, map,null);
				return false;
			}
		}
		
		String callback = request.getParameter("jsoncallback");
		
		UserInfo user = UserUtils.getByToken(token);//(UserInfo) userCenterService.getUserByToken(token);
		request.getSession().setAttribute(Constants.USER_SESSION, user);
		if(user==null){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("code", ApiResultBean.TOKEN_ERROR_CODE);
			this.writeJsResponse(response, map,callback);
			return false;
		}*/

		return super.preHandle(request, response, handler);
	}
	
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, 
			Object handler, Exception ex)throws Exception {
		HttpSession session = request.getSession(false);
		if(session!=null){
			Boolean notClear = (Boolean) session.getAttribute(Constants.NOT_CLEAR);
			if(notClear==null || !notClear)
				session.invalidate();
		}
    }
	
	
	private void writeJsResponse(HttpServletResponse response, Map<String,Object> map, 
			String callback){
		try{
			response.setCharacterEncoding("utf-8");
			String json = JSONObject.fromObject(map).toString();
			if(StringUtils.isNotEmpty(callback))
				json =  callback+"("+json+")";
			response.getWriter().write(json);
		}catch(Exception e){
			
		}
	}

}
