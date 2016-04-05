package com.zyj.framework.bean;

import java.util.HashMap;
import java.util.Map;

public class SessionBean {
	private Map sessionProperties = new HashMap();

	private Object sessionMapLock = new Object();
	protected String loginName;

	public void setProperty(String name, Object property) {
		synchronized (this.sessionMapLock) {
			this.sessionProperties.put(name, property);
		}
	}

	public Object getProperty(String name) {
		return this.sessionProperties.get(name);
	}
}