package com.zyj.api.action;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.model.Movie;
import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.MovieService;
import com.zyj.api.util.PhotoUtils;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.util.StringUtil;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("movieAction")
public class MovieAction extends BaseAction {
	
	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value="/getMovies",method= RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getMovies(HttpServletRequest request, HttpServletResponse response){
		List<Object> movies = new ArrayList<>();
		Map<String, Object> movie= new HashMap<String, Object>();
		
		//获取前台传过来的参数
		try {
		
			JSONObject params = this.getParameter(request);
			System.out.println(params);
			movies = movieService.getMovie(params);
			movie.put("data", movies);
			movie.put("code",ApiResultBean.SUCCESS_CODE);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			movie.put("code",ApiResultBean.ERROR_CODE);
		}
		
		return movie;
		
	}
	@RequestMapping(value="/getPath/{imageId}",method=RequestMethod.GET)
	public void getPath(HttpServletRequest request, HttpServletResponse response,@PathVariable String imageId) throws Exception{
	
		JSONObject params = new JSONObject();
		params.put("imageId", imageId);
	
		MovieMessage image = (MovieMessage) movieService.getMovieMessage(params);
		System.out.println(image.getUrl());
		
		FileInputStream is = new FileInputStream(image.getUrl());
		int i = is.available();//获取文件大小
		byte data[] = new byte[i];
		is.read(data);
		is.close();
		response.setContentType("image/*");//设置返回的文件类型
		OutputStream ops = response.getOutputStream();//得到像客户端输出的二进制数据的对象
		ops.write(data);
		ops.close();
		
	}
}
