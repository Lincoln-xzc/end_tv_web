package com.zyj.api.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.zyj.api.model.Movie;
import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.MovieService;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.framework.bean.PageResultBean;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.StringUtil;

import net.sf.json.JSONObject;

@Service("MovieService")
public class MovieServiceImpl extends CommonFunction implements MovieService {

	@Override
	public List<Object> getMovie(JSONObject param) {
		// TODO Auto-generated method stub
		String type = StringUtil.ToString(param.getString("type"));
		String tip = StringUtil.ToString(param.getString("tip"));
		int number = Integer.parseInt(param.getString("number"));
		
		Map<String, Object> message = new HashMap<String, Object>();
		List<Object> result = new ArrayList<Object>();
		
		message.put("recommand", type);
		message.put("number", number);
		if(!tip.equals("")){
		    System.out.println(tip);
			message.put("tip", tip);
		}
		
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

	@Override
	public List<Object> modifyMovies(JSONObject param) {
		// TODO Auto-generated method stub
		String name =StringUtil.ToString(param.getString("movieName"));
		System.out.println(name);
		Map<String, Object> movie = new HashMap<String, Object>();
		movie.put("name", name);
		List<Object> movies = this.queryForList("Movie.selectByName", movie);
		return movies;
	}

	@Override
	public List<Object> modifyByPage(JSONObject params) {
		// TODO Auto-generated method stub
		List<Object> resultData = new ArrayList<Object>();
		String type = StringUtil.ToString(params.getString("type"));
		System.out.println(type);
		int size = Integer.parseInt(params.getString("size"));
		int currentPage = Integer.parseInt(params.getString("currentPage"));
		System.out.println(currentPage);
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("type", type);
		PageResultBean prb = new PageResultBean();
		prb.setPageSize(size);
		prb.setCurrentPage(currentPage);
		prb.setToPage(currentPage);
		PageResultBean resultPrb = new PageResultBean();
		String orderBy = "asc";
		resultPrb = this.queryForPage(prb, "Movie.selectByType", "Movie.selectPage", data, orderBy);
		resultData.add(resultPrb);

		return resultData;
	}

	@Override
	public int save(JSONObject param) {
		// TODO Auto-generated method stub
		Map<String, Object> data = new HashMap<String, Object>();
		String movieId = StringUtil.ToString(param.getString("movieId"));
		System.out.println(movieId);
		String recommand = StringUtil.ToString(param.getString("recommand"));
		String tip = StringUtil.ToString(param.getString("tip"));
		UUID uuid = UUID.randomUUID();
		String str = uuid.toString();
        String id = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);
		data.put("id", id);
		data.put("movieId", movieId);
		data.put("recommand", recommand);
		data.put("tip", tip);
		int number = this.insert("MovieRecommand.insert", data);
		return number;
	}

	@Override
	public int delete(JSONObject param) {
		// TODO Auto-generated method stub
		Map<String, Object> data = new HashMap<String, Object>();
		String movieId = StringUtil.ToString(param.getString("id"));
		data.put("movieId", movieId);
		int number = this.delete("MovieRecommand.deleteById", data);
		return number;
	}

}
