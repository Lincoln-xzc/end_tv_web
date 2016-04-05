package com.zyj.api.service;

import java.util.Map;

import net.sf.json.JSONObject;

public interface MovieService {
	
	public Map<String, Object> getMovie(JSONObject param);
}
