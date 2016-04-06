package com.zyj.api.service;

import java.util.List;

import net.sf.json.JSONObject;

public interface MovieService {
	
	public List<Object> getMovie(JSONObject param);
	
	public Object getMovieMessage(JSONObject param);
}
