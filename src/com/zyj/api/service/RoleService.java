package com.zyj.api.service;

import java.util.List;

import com.zyj.api.model.Role;

public interface RoleService {

	int save(Role role);

	List<Object> findAll();

}
