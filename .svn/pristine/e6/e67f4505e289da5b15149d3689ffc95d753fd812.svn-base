package com.zyj.api.service.impl;

import java.util.HashMap;
import java.util.Map;


import org.springframework.stereotype.Service;

import com.zyj.api.model.UserInfo;
import com.zyj.api.service.UserCenterService;

import com.zyj.framework.service.impl.CommonFunction;


/**
 * UserCenterServiceImpl.java
 * 
 */
@Service("userCenterService")
public class UserCenterServiceImpl extends CommonFunction implements
		UserCenterService {
	
	@Override
	public UserInfo getUserByToken(String token) {
		Map<String, Object> prmMap = new HashMap<String, Object>();
		prmMap.put("token", token);
		UserInfo user = (UserInfo) this.queryForObject("UserInfo.getUserByCondition", prmMap);
		return user;
	}

	@Override
	public UserInfo getUserById(Long id) {
		Map<String, Object> prmMap = new HashMap<String, Object>();
		prmMap.put("id", id);
		UserInfo user = (UserInfo) this.queryForObject("UserInfo.getUserByCondition", prmMap);
		return user;
	}
	
}
