package com.zyj.api.pushThread;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.zyj.api.enums.BaiduPushEnum;
import com.zyj.api.model.UserInfo;
import com.zyj.api.service.UserChannelService;
import com.zyj.api.util.UserUtils;
import com.zyj.util.BaiduPushUtil;
import com.zyj.util.SpringContextHolder;

/**
 * BaiduPushThread.java
 * 
 */

public class BaiduPushThread extends Thread {
	
	private Long userId;
	
	private String content;
	
	private String title;
	
	private Map<String,Object> prmMap;
	
	private BaiduPushThread(){};
	
	public BaiduPushThread(Long userId,String title, String content, Map<String,Object> prmMap){
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.prmMap = prmMap;
	}
	
	@Override
	public void run(){
		if(userId==null)
			return;
		UserInfo user = UserUtils.get(userId);
		if(user==null || (user.getMsgNotice()!=null &&user.getMsgNotice()==0))
			return;
		UserChannelService service = SpringContextHolder.getBean("userChannelService");
		List<Map<String,Object>> channelList = service.getUserChannelIdList(userId);
		if(channelList==null || channelList.size()<1)
			return;
		List<String> androidList = new ArrayList<>();
		List<String> iosList = new ArrayList<>();
		for(Map<String,Object> map : channelList){
			Integer type = (Integer)map.get("channelType");
			String channelId = (String)map.get("channelId");
			if(type==null || channelId==null)
				continue;
			if(type==1){
				androidList.add(channelId);
			}else if(type==2){
				iosList.add(channelId);
			}
		}


	}
}
