package com.zyj.global;

public class ApplicationProperties {
	private static ApplicationProperties appProperties = null;
	
	private boolean checkSession;//系统中是否自定义检查session过期
	private String userKeyCodeInSession;//session中attribute的key

	public String getUserKeyCodeInSession() {
		return userKeyCodeInSession;
	}

	public void setUserKeyCodeInSession(String userKeyCodeInSession) {
		this.userKeyCodeInSession = userKeyCodeInSession;
	}

	private ApplicationProperties() {
	}
	
	public static ApplicationProperties getInstance() {
		if(appProperties == null)
			appProperties = new ApplicationProperties();
		return appProperties;
	}


	public boolean isCheckSession() {
		return checkSession;
	}

	public void setCheckSession(boolean checkSession) {
		this.checkSession = checkSession;
	}
}
