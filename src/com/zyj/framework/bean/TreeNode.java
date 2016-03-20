package com.zyj.framework.bean;

import java.util.ArrayList;
import java.util.List;

public class TreeNode {
	private String text;
	private boolean leaf;
	private boolean checked;
	private String iconCls;
	private String state;
	private String action;
	private Object attributes;
	private List<TreeNode> children = new ArrayList();
	private int menuId;

	public void addChildNode(TreeNode childNode) {
		this.children.add(childNode);
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public boolean isLeaf() {
		return this.leaf;
	}

	public void setLeaf(boolean leaf) {
		this.leaf = leaf;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public List<TreeNode> getChildren() {
		return this.children;
	}

	public void setChildren(List<TreeNode> children) {
		this.children = children;
	}

	public Object getAttributes() {
		return this.attributes;
	}

	public void setAttributes(Object attributes) {
		this.attributes = attributes;
	}

	public String getIconCls() {
		return this.iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public int getMenuId() {
		return this.menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public boolean isChecked() {
		return this.checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}
}