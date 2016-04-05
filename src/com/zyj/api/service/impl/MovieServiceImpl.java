package com.zyj.api.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.zyj.api.model.Movie;
import com.zyj.api.service.MovieService;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.StringUtil;

import net.sf.json.JSONObject;

@Service("MovieService")
public class MovieServiceImpl extends CommonFunction implements MovieService {

	@Override
	public Map<String, Object> getMovie(JSONObject param) {
		// TODO Auto-generated method stub
		String type = StringUtil.ToString(param.getString("type"));
		String number = StringUtil.ToString(param.getString("number"));
		System.out.println("type:"+type);
		Map<String, Object> message = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();
		
		message.put("type", type);
		message.put("number", number);
		System.out.println(message);
		Movie movie = (Movie) this.queryForObject("Movie selectByCondition",message);
		
		
	    result.put("code",ApiResultBean.SUCCESS_CODE);
	
		result.put("data", movie);
		return result;
	}

}
