package com.zyj.framework.bean;

import java.util.List;

public class ResultBean {
	private String msg;
	private boolean success;
	private List resultList;
	private Object resultObject;
	private int totalCount;

	public ResultBean() {
	}

	public int getTotalCount() {
		return this.totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public ResultBean(String msg, boolean success) {
		this.msg = msg;
		this.success = success;
	}

	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public boolean isSuccess() {
		return this.success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public List getResultList() {
		return this.resultList;
	}

	public void setResultList(List resultList) {
		this.resultList = resultList;
	}

	public Object getResultObject() {
		return this.resultObject;
	}

	public void setResultObject(Object resultObject) {
		this.resultObject = resultObject;
	}
}