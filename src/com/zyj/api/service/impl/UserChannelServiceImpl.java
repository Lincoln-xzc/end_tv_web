package com.zyj.api.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.zyj.api.service.UserChannelService;
import com.zyj.framework.service.impl.CommonFunction;

/**
 * UserChangeServiceImpl.java
 * 
 */
@Service("userChannelService")
public class UserChannelServiceImpl extends CommonFunction implements
		UserChannelService {

	@Override
	public List<Map<String, Object>> getUserChannelIdList(Long userId) {
		Map<String,Object> prmMap = new HashMap<>();
		prmMap.put("userId", userId);
		List<Map<String,Object>> channelList = 
				this.queryForList("UserChannel.getUserChannelIdList",prmMap);
		return channelList;
	}
}
