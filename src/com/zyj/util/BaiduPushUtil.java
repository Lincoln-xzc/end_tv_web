package com.zyj.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import net.sf.json.JSONObject;
import com.zyj.api.enums.BaiduPushEnum;

/**
 * BaiduPushThread.java
 * 百度推送
 */

public class BaiduPushUtil  {

	//--- ceshi--------
//	private String androidKey = "evNRHqojFlEhGMeCVYxP6oQt";
//	private String androidSecretKey = "IexFupXbLouXeWZ9ruSG64f93HOhF4M7";

	//用户端 - android
	
	private String androidKey = PropertyUtil.getStringVlaue("baidu.androidKey");
	private String androidSecretKey = PropertyUtil.getStringVlaue("baidu.androidSecretKey");
	
	//用户端 - ios
	private String iosKey = PropertyUtil.getStringVlaue("baidu.iosKey");
	private String iosSecretKey = PropertyUtil.getStringVlaue("baidu.iosSecretKey");
	
	private int msgType;  //消息类型  0：消息；1：通知。默认为0
	
	private int deployStatus = 1; //1：开发状态；2：生产状态； 若不指定，则默认设置为生产状态。仅iOS应用推送时使用
	
	private int msgExpires = 604800; //消息过期时间 0~604800(86400*7)，默认为5小时(18000秒)
	
	private BaiduPushEnum pushEnum;
	
	private List<String> channelIdList;
	
	private Object obj;
	
	private BaiduPushUtil(){}
	
	/**
	 * @param pushEnum
	 * @param channelId
	 * @param msgType 消息类型  0：消息；1：通知。默认为0
	 * @param obj
	 */
	public BaiduPushUtil(BaiduPushEnum pushEnum, List<String> channelIdList, int msgType, 
			Object obj){
		this.pushEnum = pushEnum;
		this.channelIdList = channelIdList;
		this.msgType = msgType;
		this.obj = obj;
	}
	
}
