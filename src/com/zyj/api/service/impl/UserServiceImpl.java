package com.zyj.api.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;

import com.zyj.api.model.User;
import com.zyj.api.service.UserService;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.DateUtil;

import net.sf.json.JSONObject;

@Service("UserService")
public class UserServiceImpl extends CommonFunction implements UserService {

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		String str = uuid.toString();
        String id = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);
		System.out.println("id:"+id);
		Date loginTime =new Date();
		Map<String, Object> obj = new HashMap<>();
		user.setId(id);
		user.setLoginTime(loginTime);
		int number = this.insert("User.insert", user);
		
		return number;
	}

	@Override
	public User modifyUser(User user) {
		// TODO Auto-generated method stub
		User reUser = (User) this.queryForObject("User.selectByCondition", user);
		return reUser;
	}

}
