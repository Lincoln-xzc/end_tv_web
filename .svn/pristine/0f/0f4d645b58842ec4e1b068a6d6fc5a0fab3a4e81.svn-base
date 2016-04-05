package com.zyj.listener;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import com.zyj.api.model.UserInfo;
import com.zyj.framework.manager.SessionListener;
import com.zyj.global.Constants;
import com.zyj.util.DateUtil;

public class MySessionListener extends SessionListener {
	private static Map<String, HttpSession> loginMap;
	private static Map<String,String> sessionMap;
	static {
		loginMap = Collections.synchronizedMap(new HashMap<String, HttpSession>());
		sessionMap = Collections.synchronizedMap(new HashMap<String, String>());
	}

	/**
	 * 每个浏览器刚访问网站的时候，服务器会新建一个HttpSession对象，
	 * 并触发HttpSession创建事件，如果注册了HttpSessionListener事件监听器，
	 * 则会调用HttpSessionListener事件监听器的sessionCreated方法
	 */
	@Override
	public void sessionCreated(HttpSessionEvent event){
		System.out.println(DateUtil.getCrruentTime()+"create sessionId=="+event.getSession().getId());
	}
	/**
	 * 每个浏览器访问结束超时的时候，服务器会销毁相应的HttpSession对象，
	 * 并触发HttpSession销毁事件，同时调用所注册HttpSessionListener事件监听器的sessionDestroyed方法
	 */
	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		System.out.println(DateUtil.getCrruentTime()+" destroy sessionId=="+event.getSession().getId());
		if (loginMap.containsValue(event.getSession())) {
			UserInfo UserInfoinfo = (UserInfo)event.getSession().getAttribute(Constants.LOGIN_INFO_SESSION);
			loginMap.remove(UserInfoinfo.getId());
			event.getSession().setAttribute(Constants.LOGINOUT_TYPE, 0);//登录超时
		}
		if(sessionMap.containsKey(event.getSession().getId())){
			sessionMap.remove(event.getSession().getId());
		}
	}

	public static boolean isLogin(String UserInfoId) {
		if (loginMap.containsKey(UserInfoId)){
			HttpSession session = (HttpSession)loginMap.get(UserInfoId);
			if(session==null){
				return false;
			}
			UserInfo UserInfoInfo = (UserInfo)session.getAttribute(Constants.LOGIN_INFO_SESSION);
			if(UserInfoInfo!=null){
				return true;
			}
		}
		return false;
	}

	
	/**
	 * 登录保存
	 * 
	 * @param session
	 * @param UserInfoId
	 * @return
	 */
	public static synchronized boolean logon(HttpSession session, String UserInfoId) {
		boolean flag = false;
		if (loginMap.containsKey(UserInfoId)) {
			flag = true;
			HttpSession vsession = (HttpSession) loginMap.get(UserInfoId);
			try {
				if (vsession != null) {
					UserInfo info = (UserInfo) vsession.getAttribute(Constants.LOGIN_INFO_SESSION);
					sessionMap.remove(vsession.getId());
					vsession.removeAttribute(Constants.LOGIN_INFO_SESSION);
					//重新登录     原登录的强制T出
					vsession.setAttribute(Constants.LOGINOUT_TYPE, -1);
					//nologinList.put(UserInfoId, info);
				}
			} catch (Exception localException) {
			}
		} else {
			flag = false;
		}

		
		loginMap.put(UserInfoId, session);
		sessionMap.put(session.getId(), UserInfoId);
		return flag;
	}

	public static UserInfo getNoLoginList(String UserInfoId) {
		if (loginMap.containsKey(UserInfoId)) {
			HttpSession session = (HttpSession)loginMap.get(UserInfoId);
			try{
				return (UserInfo)session.getAttribute(Constants.LOGIN_INFO_SESSION);
			}catch(Exception e){
				loginMap.remove(UserInfoId);
				return null;
			}
		}
		return null;
	}

	public static boolean removeLoginSession(String UserInfoId,Integer logoutType){
		if (loginMap.containsKey(UserInfoId)) {
			HttpSession session = (HttpSession)loginMap.get(UserInfoId);
			try{
				loginMap.remove(UserInfoId);
				session.removeAttribute(Constants.LOGIN_INFO_SESSION);
				session.removeAttribute(Constants.USER_MENU);
				session.removeAttribute(Constants.LEFT_MENU);
				session.setAttribute(Constants.LOGINOUT_TYPE, logoutType);
//				session.invalidate();
			}catch(Exception e){
				loginMap.remove(UserInfoId);
			}
			return true;
		}
		return false;
	}
	
	/**
	 * 取得当前session
	 * @param sessionId
	 * @return
	 */
	public static HttpSession getCurrentSession(String sessionId){
		if(sessionMap.containsKey(sessionId)){
			if (loginMap.containsKey(sessionMap.get(sessionId))){
				return loginMap.get(sessionMap.get(sessionId));
			}
			sessionMap.remove(sessionId);
		}
		return null;
	}
	
	public static boolean isLoginBySessionId(String sessionId){
		HttpSession session = getCurrentSession(sessionId);
		if(session==null){
			return false;
		}
		UserInfo UserInfoInfo = (UserInfo)session.getAttribute(Constants.LOGIN_INFO_SESSION);
		if(UserInfoInfo==null){
			return false;
		}
		return true;
	}
	
	/**
	 * 保存登录信息
	 * @param UserInfoId
	 * @param session
	 */
	public static void saveLogin(String UserInfoId,HttpSession session){
		loginMap.put(UserInfoId, session);
		sessionMap.put(session.getId(), UserInfoId);
	}

	
	public static void removeLoginSession(List<String> UserInfoIds,Integer logoutType){
		if(UserInfoIds==null||UserInfoIds.size()==0){
			return;
		}
		for(int i=0;i<UserInfoIds.size();i++){
			removeLoginSession(UserInfoIds.get(i),logoutType);
		}
	}
}
