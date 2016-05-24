package com.zyj.api.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.zyj.api.model.Role;
import com.zyj.api.service.RoleService;
import com.zyj.framework.service.impl.CommonFunction;

public class RoleServiceImpl extends CommonFunction implements RoleService {

	@Override
	public int save(Role role) {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		String str = uuid.toString();
        String id = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);
		role.setId(id);
		Date date = new Date();
		role.setCreated_date(date);
		int number = this.insert("Role.insert",role);
		return number;
	}

	@Override
	public List<Object> findAll() {
		// TODO Auto-generated method stub
		List<Object> objs = new ArrayList<Object>();
		objs = this.queryForList("Role.findAll");
		return objs;
	}

}
