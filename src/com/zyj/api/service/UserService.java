package com.zyj.api.service;

import java.util.List;

import com.zyj.api.model.User;

import net.sf.json.JSONObject;

public interface UserService {
	public int addUser(User user);
	public User modifyUser(User user);
	public List<Object> find();
}
