package com.zyj.framework.bean;

import java.util.Map;


public class ApiResultBean {
	public final static String STATUS_SUCCESS = "ok";
	public final static String STATUS_FAIL = "error";
	public final static Integer SUCCESS_CODE = 0;
	
	/**
	 * 系统错误
	 */
	public final static Integer ERROR_CODE = 1;
	
	/**
	 * token失效
	 */
	public final static Integer TOKEN_ERROR_CODE = 2;
	
	/**
	 * 用户不存在
	 */
	public final static Integer NO_USER_CODE = 3;
	
	/**
	 * 参数不全或参数有误
	 */
	public final static Integer PARAM_ERROR_CODE = 4;
	
	/**
	 * 用户名或密码错误
	 */
	public final static Integer USER_NAME_PWD_ERROR_CODE = 5;
	/**
	 * 用户被禁用
	 */
	public final static Integer USER_FORBIDDEN_CODE = 6;
	/**
	 * 用户已经存在
	 */
	public final static Integer USER_EXIT_CDOE = 7;
	
	/**
	 * 验证码失效或错误
	 */
	public final static Integer VERIFY_ERROR_CODE = 8;
	
	/**
	 * 登陆超时
	 */
	public final static Integer RELOGIN_CODE = 9;
	

	/**
	 * 用户已经创建微家
	 */
	public final static Integer HOME_EXIST = 100;
	
	/**
	 * 家庭身份已经存在
	 */
	public final static Integer HOME_USER_IDENTITY_EXIT = 101;
	
	/**
	 * 用户已经存在
	 */
	public final static Integer HOME_USER_ALLREADY_IN = 102;

	/**
	 * 微家不存在
	 */
	public final static Integer HOME_NOT_EXIST = 103;
	/**
	 * 微家不存在
	 */
	public final static Integer USER_HAS_APPLY = 104;
	
	/**
	 * 用户已经关注微家
	 */
	public final static Integer ATTENTION_HOME_EXIST = 110;
	
	/**
	 * 用户和被操作人不属于同一家庭
	 */
	public final static Integer HOME_DIFFERENT = 120;
	
	/**
	 * 用户标签已存在
	 */
	public final static Integer USER_TAG_EXIST = 130;
	
	/**
	 * 二维码过期 
	 */
	public final static Integer QCODE_NOT_EXIST = 140;
	
	/**
	 * 商品不存在
	 */
	public final static Integer GOODS_NOT_EXIST = 201;
	
	private String status;
	private Map<String,Object> data;
	private String error;

	public ApiResultBean() {
	}

	public ApiResultBean(String status, Map<String,Object> data,String error) {
		this.status = status;
		this.data = data;
		this.error = error;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Map<String,Object> getData() {
		return data;
	}

	public void setData(Map<String,Object> data) {
		this.data = data;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}
}