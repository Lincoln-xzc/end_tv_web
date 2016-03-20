package com.zyj.api.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.service.TestService;
import com.zyj.filter.ApiLoginRequired;
import com.zyj.framework.action.BaseAction;

@Controller
@RequestMapping("/test")
public class TestAction extends BaseAction {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value = "/user")
	@ResponseBody
	public Map<String, Object> getUserInfo(HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> rm = testService.getUserInfo();
		
		return rm;
		
	}

}
