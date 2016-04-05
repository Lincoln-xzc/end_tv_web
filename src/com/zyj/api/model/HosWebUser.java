package com.zyj.api.model;

import java.util.Date;

public class HosWebUser {
    public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	private String id;

    private String userName;

    private String password;

    private String name;

  
    private String token;

   
    private Date loginTime;
    
   
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}