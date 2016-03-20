package com.zyj.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class SendSms {
	public static final String SMS_URL = "http://api.sojisms.com:8082/sendsms.aspx";
	public static final String SMS_USER = "zmh201405";
	public static final String SMS_PASSWORD = "zmh2014";
	
	private static SendSms instance = null;
	
	private SendSms(){
		
	}
	
	/**
	 * 单例模式   返回操作实例
	 * @return
	 */
	public static SendSms getInstance(){
		if(instance == null){
			instance = new SendSms();
		}
		return instance;
	}
	
	/**
	 * 发送短信
	 * @param mobile
	 * @param content
	 * @return
	 */
	public static int sendSms(String mobile, String content) {
		try {
			Map<String,Object> params = new HashMap<String,Object>();
			params.put("suser", SMS_USER);
			params.put("spass", SMS_PASSWORD);
			params.put("telnum", mobile);
			params.put("nr", content);
//			System.out.println(mobile);
//			System.out.println(content);
			int result = NumberUtil.parseInt(HttpRequestProxy.doPost(SMS_URL, params, "gb2312","UTF-8"));

//			System.out.println("result======" + result);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public static void main(String[] args) {
		sendSms("13774676053","你好，测试【e采购】");
	}
}
