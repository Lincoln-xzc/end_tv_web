package com.zyj.framework.bean;

import java.util.ArrayList;
import java.util.List;

public class JsonResultBean {
	private List rows;
	private int total;
	private boolean isSuccess;

	public JsonResultBean(boolean isSuccess) {
		this.isSuccess = isSuccess;
		if (!isSuccess) {
			this.rows = new ArrayList();
			this.total = 0;
		}
	}

	public boolean isSuccess() {
		return this.isSuccess;
	}

	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

	public List getRows() {
		return this.rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

	public int getTotal() {
		return this.total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
}