/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/dxt">dxt</a> All rights reserved.
 */
package com.zyj.api.util;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.zyj.api.model.UserInfo;
import com.zyj.api.service.UserCenterService;
import com.zyj.global.Constants;
import com.zyj.util.EhCacheUtils;
import com.zyj.util.SpringContextHolder;

/**
 * 用户工具类
 * @author ThinkGem
 * @version 2013-12-05
 */
public class UserUtils {

	private static UserCenterService userService = SpringContextHolder.getBean(UserCenterService.class);
	
	private static final Logger logger = LoggerFactory.getLogger(UserUtils.class);

	public static final String USER_CACHE = "userCache";
	public static final String USER_CACHE_ID_ = "id_";
	public static final String USER_CACHE_LOGIN_NAME_ = "ln";
	public static final String USER_CACHE_TOKEN_ = "token_";
	
	/**
	 * @Description: 获取保存头像的路径
	 * @param userId
	 * @return
	 */
	public static String getUserPhotoPath(Object userId){
		if(userId==null)
			return "";
		return Constants.FILE_ROOT_NAME+Constants.USERINFO+Constants.PHOTO+"/"+userId;
	}
	
	/**
	 * 根据ID获取用户
	 * @param id
	 * @return 取不到返回null
	 */
	public static UserInfo get(Long id){
		if(id==null || id<1)
			return null;
		UserInfo user = (UserInfo)EhCacheUtils.get(USER_CACHE, USER_CACHE_ID_ + id);
		if (user ==  null){
			user = userService.getUserById(id);
			if (user == null){
				return null;
			}
			EhCacheUtils.put(USER_CACHE, USER_CACHE_ID_ + user.getId(), user);
			EhCacheUtils.put(USER_CACHE, USER_CACHE_TOKEN_ + user.getToken(), user);
		}else
			logger.debug("==> get user from cache by user_id {}", id);
		return user;
	}
	
	/**
	 * 根据token获取用户
	 * @param token
	 * @return 取不到返回null
	 */
	public static UserInfo getByToken(String token){
		if(StringUtils.isEmpty(token) || token.equalsIgnoreCase("token"))
			return null;
		UserInfo user = (UserInfo)EhCacheUtils.get(USER_CACHE, USER_CACHE_TOKEN_ + token);
		if (user == null){
			user = userService.getUserByToken(token);
			if (user == null){
				return null;
			}
			EhCacheUtils.put(USER_CACHE, USER_CACHE_ID_ + user.getId(), user);
			EhCacheUtils.put(USER_CACHE, USER_CACHE_TOKEN_ + user.getToken(), user);
		}else
			logger.debug("==> get user from cache by user token {}", token);
		return user;
	}
	
	/**
	 * 清除指定用户缓存
	 * @param user
	 */
	public static void clearCache(UserInfo user){
		EhCacheUtils.remove(USER_CACHE, USER_CACHE_ID_ + user.getId());
		EhCacheUtils.remove(USER_CACHE, USER_CACHE_TOKEN_ + user.getToken());
	}
	
}
