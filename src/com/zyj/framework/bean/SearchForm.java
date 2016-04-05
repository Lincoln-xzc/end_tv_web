package com.zyj.framework.bean;

import java.io.Serializable;

/**
 * @ClassName: SearchForm
 * @Description:
 */

public class SearchForm implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6097337784119034426L;

	private Integer status;
	
	private String name;
	
	private Integer type;
	
	private Integer verify;
	
	private String parent;
	
	private Integer reply;
	
	private Integer push;
	
	private String classify;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getVerify() {
		return verify;
	}

	public void setVerify(Integer verify) {
		this.verify = verify;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public Integer getReply() {
		return reply;
	}

	public void setReply(Integer reply) {
		this.reply = reply;
	}

	public Integer getPush() {
		return push;
	}

	public void setPush(Integer push) {
		this.push = push;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}
}
