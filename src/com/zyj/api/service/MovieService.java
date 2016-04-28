package com.zyj.api.service;

import java.util.List;
import java.util.Map;

import com.zyj.api.model.Image;
import com.zyj.api.model.Movie;
import com.zyj.api.model.MovieMessage;

import net.sf.json.JSONObject;

public interface MovieService {
	
	public List<Object> getMovie(JSONObject param);
	
	public Object getMovieMessage(JSONObject param);
	
	public List<Object> modifyMovies(JSONObject param);

	public List<Object> modifyByPage(JSONObject params);
	
	public int save(JSONObject param);
	
	public int delete(JSONObject param);

	public int saveImage(Movie movie);
}
