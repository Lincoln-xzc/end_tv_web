package com.zyj.framework.service;

import com.zyj.framework.bean.JsonResultBean;
import com.zyj.framework.bean.PageResultBean;
import com.zyj.framework.bean.ResultBean;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public abstract interface CommonService {
	public abstract Serializable saveEntityBYH(Object paramObject)
			throws Exception;

	public abstract void updateEntityBYH(Object paramObject) throws Exception;

	public abstract void deleteEntityBYH(Object paramObject) throws Exception;

	public abstract Object loadEntityBYH(Class paramClass, Object paramObject)
			throws Exception;

	public abstract Object findEntityBYH(Class paramClass, Object paramObject)
			throws Exception;

	public abstract Object insertBYI(String paramString, Object paramObject)
			throws Exception;

	public abstract int updateBYI(String paramString, Object paramObject)
			throws Exception;

	public abstract int deleteBYI(String paramString, Object paramObject)
			throws Exception;

	public abstract List queryListBYI(String paramString, Object paramObject)
			throws Exception;

	public abstract List queryLimitListBYI(String paramString, Map paramMap)
			throws Exception;

	public abstract Object queryObjectBYI(String paramString, Object paramObject)
			throws Exception;

	public abstract PageResultBean queryForPageBYI(
			PageResultBean paramPageResultBean, String paramString1,
			String paramString2, Object paramObject, String paramString3)
			throws Exception;

	public abstract JsonResultBean queryForJsonBYI(String paramString1,
			String paramString2, Map paramMap) throws Exception;

	public abstract ResultBean getResultBeanOfSuccess(String paramString);

	public abstract ResultBean getResultBeanOfFailure(String paramString);
	
}