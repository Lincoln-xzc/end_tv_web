package com.zyj.framework.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.zyj.framework.bean.JsonResultBean;
import com.zyj.framework.bean.PageResultBean;
import com.zyj.framework.bean.ResultBean;
import com.zyj.framework.dao.CommonHibernateDao;
import com.zyj.framework.dao.CommonMybatisDao;
import com.zyj.framework.service.CommonService;
import com.zyj.util.NumberUtil;

public class CommonFunction extends CommonMybatisDao implements CommonService {

	@Autowired
	private CommonHibernateDao commonHibernateDao;

	public Serializable saveEntityBYH(Object obj) throws Exception {
		return this.commonHibernateDao.saveEntity(obj);
	}

	public void updateEntityBYH(Object obj) throws Exception {
		this.commonHibernateDao.updateEntity(obj);
	}

	public void deleteEntityBYH(Object obj) throws Exception {
		this.commonHibernateDao.deleteEntity(obj);
	}

	public Object loadEntityBYH(Class clazz, Object idValue) throws Exception {
		return this.commonHibernateDao.loadEntityById(clazz, idValue);
	}

	public Object findEntityBYH(Class clazz, Object id) throws Exception {
		return this.commonHibernateDao.findEntityById(clazz, id);
	}

	public Object insertBYI(String statementName, Object parameter)
			throws Exception {
		if (parameter == null)
			return insert(statementName);
		return insert(statementName, parameter);
	}

	public int updateBYI(String statementName, Object parameter)
			throws Exception {
		if (parameter == null)
			return update(statementName);
		return update(statementName, parameter);
	}

	public int deleteBYI(String statementName, Object parameter)
			throws Exception {
		if (parameter == null)
			return delete(statementName);
		return delete(statementName, parameter);
	}

	public List queryListBYI(String statementName, Object parameter)
			throws Exception {
		if (parameter == null)
			return queryForList(statementName);
		return queryForList(statementName, parameter);
	}

	public List queryLimitListBYI(String statementName, Map parameter)
			throws Exception {
		return queryForLimitList(statementName, parameter);
	}

	public Object queryObjectBYI(String statementName, Object parameter)
			throws Exception {
		if (parameter == null)
			return queryForObject(statementName);
		return queryForObject(statementName, parameter);
	}

	public PageResultBean queryForPageBYI(PageResultBean prb, String querySql,
			String countSql, Object parameter, String orderBy) throws Exception {
		return queryForPage(prb, querySql, countSql, parameter, orderBy);
	}

	public JsonResultBean queryForJsonBYI(String querySql, String countSql,
			Map prmMap) throws Exception {
		int page = NumberUtil.parseInt(prmMap.get("page"));
		int rows = NumberUtil.parseInt(prmMap.get("rows"));
		return queryForJson(querySql, countSql, prmMap, rows * (page - 1), page
				* rows);
	}

	public ResultBean getResultBeanOfSuccess(String msg) {
		return new ResultBean(msg, true);
	}

	public ResultBean getResultBeanOfFailure(String msg) {
		return new ResultBean(msg, false);
	}
}