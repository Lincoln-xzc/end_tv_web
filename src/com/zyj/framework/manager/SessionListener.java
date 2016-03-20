package com.zyj.framework.manager;

import java.util.Hashtable;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
	private static Hashtable hUserName = new Hashtable();

	public void sessionCreated(HttpSessionEvent se) {
	}

	public void sessionDestroyed(HttpSessionEvent se) {
	}

	public static synchronized boolean isLogined(HttpSession session,
			String sUserName) {
		boolean flag = false;
		if (hUserName.containsKey(sUserName)) {
			flag = true;
			HttpSession vsession = (HttpSession) hUserName.get(sUserName);
			try {
				vsession.invalidate();
			} catch (Exception localException) {
			}
		} else {
			flag = false;
		}

		hUserName.remove(sUserName);
		hUserName.put(sUserName, session);

		return flag;
	}
}