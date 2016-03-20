package com.zyj.api.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.zyj.api.model.HosWebUser;
import com.zyj.api.service.TestService;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.FieldsUtil;

@Service("testService")
public class TestServiceImpl extends CommonFunction implements TestService {

	@Override
	public Map<String, Object> getUserInfo() {
		Map<String, Object> pm = new HashMap<String, Object>();
		pm.put("id", "test");
		List<HosWebUser> list = this.queryForList("HosWebUser.selectById", pm);
		List<Map<String, Object>> rmlist = FieldsUtil.getData(new String[]{"id"}, list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("map", rmlist);
		return map;
	}

}
