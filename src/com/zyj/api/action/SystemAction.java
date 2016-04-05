package com.zyj.api.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.service.HosWebUserService;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

@Controller
@RequestMapping("systemAction")
public class SystemAction extends BaseAction {
	
	@Autowired
	private HosWebUserService hosWebUserService;
	
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> login(HttpServletRequest request, HttpServletResponse response){
		Map<String, Object> rm = new HashMap<>();
		try{
			// 获取参数
			JSONObject params = this.getParameter(request);
			rm = hosWebUserService.doLogin(params);
		}catch(Exception e){
			e.printStackTrace();
			rm.put("code", ApiResultBean.ERROR_CODE);
		}
		
		return rm;
	}
	
}
