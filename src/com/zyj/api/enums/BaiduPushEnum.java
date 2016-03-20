package com.zyj.api.enums;
/**
 * BaiduPushEnum.java
 * 
 */

public enum BaiduPushEnum {

	UserAndroid(3),  UserIos(4);
	
	private Integer deviceType;
	
	private BaiduPushEnum(int deviceType){
		this.deviceType = deviceType;
	}

	public Integer getDeviceType() {
		return deviceType;
	}
}
