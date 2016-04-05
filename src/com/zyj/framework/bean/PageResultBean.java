package com.zyj.framework.bean;

import java.util.ArrayList;
import java.util.List;

public class PageResultBean {
	private List resultList;
	private int totalResult;
	private int totalPage;
	private int pageSize;
	private int currentPage;
	private int toPage;
	private int begin;
	private int end;
	private String[] tdContent;
	private int tdLen;

	public PageResultBean() {
		this.resultList = new ArrayList();
	}

	public List getResultList() {
		return this.resultList;
	}

	public void setResultList(List resultList) {
		this.resultList = resultList;
	}

	public int getTotalResult() {
		return this.totalResult;
	}

	public void setTotalResult(int totalResult) {
		this.totalResult = totalResult;
	}

	public int getTotalPage() {
		return this.totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageSize() {
		return this.pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return this.currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getToPage() {
		return this.toPage;
	}

	public void setToPage(int toPage) {
		this.toPage = toPage;
	}

	public int getBegin() {
		return this.begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return this.end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String[] getTdContent() {
		return this.tdContent;
	}

	public void setTdContent(String[] tdContent) {
		this.tdContent = tdContent;
	}

	public int getTdLen() {
		return this.tdLen;
	}

	public void setTdLen(int tdLen) {
		this.tdLen = tdLen;
	}
}