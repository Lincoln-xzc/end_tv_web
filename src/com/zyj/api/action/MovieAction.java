package com.zyj.api.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.service.MovieService;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("movieAction")
public class MovieAction extends BaseAction {
	
	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value="/getMovies",method= RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getMovies(HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> movies = new HashMap<String, Object>();
		
		//获取前台传过来的参数
		try {
		
			JSONObject params = this.getParameter(request);
			System.out.println(params);
			movies = movieService.getMovie(params);
	
			movies.put("code", ApiResultBean.SUCCESS_CODE);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			movies.put("code", ApiResultBean.ERROR_CODE);
		}
		
		return movies;
		
	}

}
