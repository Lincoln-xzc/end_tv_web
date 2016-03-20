package com.zyj.api.service;

import java.util.Map;

import net.sf.json.JSONObject;

public interface HosWebUserService {
	
	public Map<String, Object> doLogin(JSONObject params);

}
