package com.zyj.api.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyj.api.model.Role;
import com.zyj.api.service.RoleService;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

@Controller
@RequestMapping("role")
public class RoleAction extends BaseAction{
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/save")
	@ResponseBody
	public List<Object> saveRole(HttpServletRequest request, HttpServletResponse response,@RequestBody Role role){
		List<Object> result = new ArrayList<Object>();
		int number = roleService.save(role);
		result.add(number);
		result.add(ApiResultBean.SUCCESS_CODE);
		return result;
	}
	
	@RequestMapping("/findAll")
	@ResponseBody
	public List<Object> findAll(HttpServletRequest request, HttpServletResponse reponse){
		List<Object> result = new ArrayList<Object>();
		result = roleService.findAll();
		result.add(ApiResultBean.SUCCESS_CODE);
		return result;
		
	}

}
