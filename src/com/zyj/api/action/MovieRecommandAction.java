package com.zyj.api.action;

import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.model.Movie;
import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.MovieService;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("recommand")
public class MovieRecommandAction extends BaseAction {
	
	@Autowired
	private MovieService movieService;
	

	//添加前端页面数据
	@RequestMapping(value="/save",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> result = new HashMap<String, Object>();
		JSONObject params;
		try {
			params = this.getParameter(request);
			int number = movieService.save(params);
			result.put("code",ApiResultBean.SUCCESS_CODE);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("code", ApiResultBean.ERROR_CODE);
		}
		
		return result;
		
	}
	
	//删除前端数据
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	@ResponseBody
	public JSONObject delete(HttpServletRequest request, HttpServletResponse response,@PathVariable String id){
		JSONObject result = new JSONObject();
		JSONObject params = new JSONObject();
		try {
			System.out.println("id"+id);
			params.put("id", id);
			int number = movieService.delete(params);
			result.put("code", ApiResultBean.SUCCESS_CODE);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("code", ApiResultBean.ERROR_CODE);
		}
		return result;
		
	}
	
}
