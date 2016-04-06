package com.zyj.api.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.zyj.api.model.Movie;
import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.MovieService;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.StringUtil;

import net.sf.json.JSONObject;

@Service("MovieService")
public class MovieServiceImpl extends CommonFunction implements MovieService {

	@Override
	public List<Object> getMovie(JSONObject param) {
		// TODO Auto-generated method stub
		String type = StringUtil.ToString(param.getString("type"));
		int number = Integer.parseInt(param.getString("number"));
	
		Map<String, Object> message = new HashMap<String, Object>();
		List<Object> result = new ArrayList<Object>();
		
		message.put("type", type);
		message.put("number", number);
		
		List<Object> movie = (List<Object>) this.queryForList("Movie.selectByCondition",message);
		
		return movie;
	}

	@Override
	public Object getMovieMessage(JSONObject param) {
		// TODO Auto-generated method stub
		String id = StringUtil.ToString(param.getString("imageId"));
		
		Map<String, Object> img = new HashMap<String, Object>();
		
		img.put("id", id);
		
		MovieMessage message = (MovieMessage) this.queryForObject("MovieMessage.selectByCondition", img); 
		
		return message;
	}

}
