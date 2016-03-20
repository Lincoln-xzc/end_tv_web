package com.zyj.framework.manager;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.zyj.global.Constants;

public class SessionManager {
	private static Log logger = LogFactory.getLog(SessionManager.class);
	
	private static final ThreadLocal httpSession = new ThreadLocal();

	public static void setSession(HttpSession session) {
		httpSession.set(session);
	}

	public static HttpSession getSession() {
		return (HttpSession) httpSession.get();
	}

	public static void setAttribute(String var, Object value) {
		HttpSession session = (HttpSession) httpSession.get();
		if (session != null) {
			session.setAttribute(var, value);
		} else if (logger.isDebugEnabled()){
			logger.debug("session not exist can not set attribute with key = '"
					+ var + "' value = [" + value + "]");
		}
	}

	public static Object getAttribute(String var) {
		HttpSession session = (HttpSession) httpSession.get();
		if (session != null) {
			return session.getAttribute(var);
		}
		if (logger.isDebugEnabled()){
			logger.debug("session not exist could not get attribute '" + var
					+ "'");
		}
		return null;
	}

	public static void clearUserInfo() {
		logger.info(" 清除登录用户信息");
		HttpSession session = (HttpSession) httpSession.get();
		if (session != null){
			session.removeAttribute(Constants.LOGIN_INFO_SESSION);
		}else{
			logger.warn("没有session");
		}
	}

	public static void removeAttribute(String key) {
		logger.info(" 清除session的Attribute ：" + key.trim());
		HttpSession session = (HttpSession) httpSession.get();
		if (session != null){
			session.removeAttribute(key);
		}else{
			logger.warn("清除不了attribute中key为" + key
					+ ",因为没有session");
		}
	}

	public static void clean() {
		if (httpSession.get() != null) {
			((HttpSession) httpSession.get()).invalidate();
			httpSession.set(null);
		}
	}

	public static void logout() {
		HttpSession session = (HttpSession) httpSession.get();
		if (session != null) {
			if (httpSession.get() != null) {
				httpSession.set(null);
			}
			session.invalidate();
			if (logger.isDebugEnabled())
				logger.debug("用户注销");
		}
	}
}