package com.zyj.util;

/**
 * 分页类
 */
public class PagingBean {

	public static final String PAGING_BEAN = "_paging_bean";

	/**20*/
	public static Integer DEFAULT_PAGE_SIZE = 20;

	/**
	 * 最多显示页码数
	 */
	public static final int SHOW_PAGES = 6;

	/**
	 * 每页开始的索引号
	 */
	public Integer start;
	/**
	 * 页码大小
	 */
	private Integer pageSize;

	/**
	 * 总记录数
	 */
	private Integer totalItems;
	/**
	 * 当前页数
	 */
	private Integer pageNo;

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public PagingBean(int start, int limit) {
		this.pageSize = limit;
		this.start = start;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalItems() {
		return totalItems;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public void setTotalItems(Integer totalItems) {
		this.totalItems = totalItems;
	}

	public void setTotalItems(int totalItems) {
		this.totalItems = totalItems;

	}

	public int getFirstResult() {
		return start;
	}

}
