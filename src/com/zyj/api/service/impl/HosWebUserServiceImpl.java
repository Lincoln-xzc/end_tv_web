package com.zyj.api.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.zyj.api.model.HosWebUser;
import com.zyj.api.service.HosWebUserService;
import com.zyj.framework.bean.ApiResultBean;
import com.zyj.framework.service.impl.CommonFunction;
import com.zyj.util.DateUtil;
import com.zyj.util.FieldsUtil;
import com.zyj.util.StringUtil;

@Service("hosWebUserService")
public class HosWebUserServiceImpl extends CommonFunction implements HosWebUserService {

	@Override
	public Map<String, Object> doLogin(JSONObject params) {
		String username = StringUtil.ToString(params.getString("username"));
		String password = StringUtil.ToString(params.getString("username"));
		
		Map<String, Object> rm = new HashMap<>();
		Map<String, Object> pm = new HashMap<>();
		
		Map<String, Object> updateMap = new HashMap<>();
		
		pm.put("username", username);
		pm.put("password", password);
		
		HosWebUser user = (HosWebUser) this.queryForObject("HosWebUser.selectByCondition", pm);
		
		Map<String, Object> map = new HashMap<>();
		
		
		if(user!=null){
			map = FieldsUtil.getObjectFields(new String[]{"id","userName","name","gender","job","dept","avatar","phone","token"}, user);
			String token = DateUtil.getCrruentTime("yyyyMMddHHmmss") + user.getId();
			String userToken = user.getToken();
			if(StringUtils.isEmpty(userToken) || user.getLoginTime()==null
					|| DateUtil.getDayMargin(user.getLoginTime(),new Date())>7){
				//token为空，或者最后登陆时间大于7天，则token失效
				//token = DateUtil.getCrruentTime("yyyyMMddHHmmss") + user.getId();
				map.put("token", token);
			}
			
			updateMap.put("id", user.getId());
			updateMap.put("loginTime", new Date());
			this.update("HosWebUser.updateByIdSelective", updateMap);
		}
		
		
		rm.put("code", ApiResultBean.SUCCESS_CODE);
		rm.put("data", map);
		
		return rm;
	}

}
