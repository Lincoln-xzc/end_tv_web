package com.zyj.api.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.zyj.api.model.User;
import com.zyj.api.service.UserService;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

import net.sf.json.JSONObject;

@Controller 
@RequestMapping("userAction")
public class UserAction extends BaseAction {
	
	@Autowired
	private UserService userService ;
	
	@RequestMapping(value="/insertUser",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertUser(HttpServletRequest request, HttpServletResponse response,@RequestBody User user){
		Map<String, Object> result = new HashMap<String, Object>(); 
		try {
		/*	JSONObject params = this.getParameter(request);
			System.out.println(params);*/
			int number = userService.addUser(user);
			result.put("data", number);
			result.put("code", ApiResultBean.SUCCESS_CODE);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("code", ApiResultBean.ERROR_CODE);
		}
		
		return result;
		
	}
	
	@RequestMapping(value="/loginFront", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> loginFront(HttpServletRequest request, HttpServletResponse response, @RequestBody User user){
		Map<String, Object> result = new HashMap<String, Object>();
		User reUser = userService.modifyUser(user);
		result.put("data", reUser);
		result.put("code", ApiResultBean.SUCCESS_CODE);
		return result;
	}
	
	@RequestMapping(value="/findAll", method = RequestMethod.POST)
	@ResponseBody
	public List<Object> findAll(HttpServletRequest request, HttpServletResponse response){
		List<Object> result = new ArrayList<Object>();
		result = userService.find();
		result.add(ApiResultBean.SUCCESS_CODE);
		return result;
	}	
}
