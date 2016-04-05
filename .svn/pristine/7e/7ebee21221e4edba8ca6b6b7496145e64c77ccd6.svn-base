package com.zyj.framework.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.zyj.framework.bean.JsonResultBean;
import com.zyj.framework.bean.PageResultBean;
import com.zyj.util.NumberUtil;

@Repository("commonMybatisDao")
public class CommonMybatisDao extends SqlSessionDaoSupport {
	private SqlSessionTemplate sqlSessionTemplate;
	
	protected static Logger logger = LoggerFactory
			.getLogger(CommonMybatisDao.class);

	public int insert(String statementName) {
		
		return sqlSessionTemplate.insert(statementName);
	}

	public int insert(String statementName, Object parameter) {
		return sqlSessionTemplate.insert(statementName, parameter);
	}

	public int update(String statementName) {
		return sqlSessionTemplate.update(statementName);
	}

	public int update(String statementName, Object parameter) {
		return sqlSessionTemplate.update(statementName, parameter);
	}

	public int delete(String statementName) {
		return sqlSessionTemplate.delete(statementName);
	}

	public int delete(String statementName, Object parameter) {
		return sqlSessionTemplate.delete(statementName, parameter);
	}

	public List queryForList(String statementName) {
		return sqlSessionTemplate.selectList(statementName);
	}

	public List queryForList(String statementName, Object parameter) {
		return sqlSessionTemplate.selectList(statementName, parameter);
	}

	public List queryForLimitList(String statementName, Map parameter) {
		int page = NumberUtil.parseInt(parameter.get("page"));
		int rows = NumberUtil.parseInt(parameter.get("rows"));
		RowBounds rb = new RowBounds(rows * (page - 1),rows);
		return sqlSessionTemplate.selectList(statementName, parameter,rb);
	}

	public Object queryForObject(String statementName) {
		return sqlSessionTemplate.selectOne(statementName); 
	}

	public Object queryForObject(String statementName, Object parameter) {
		return sqlSessionTemplate.selectOne(statementName,parameter);
	}
	
	public int queryForOne(String statementName) {
		return sqlSessionTemplate.selectOne(statementName); 
	}
	
	public int queryForOne(String statementName, Object parameter) {
		return sqlSessionTemplate.selectOne(statementName,parameter);
	}

	public PageResultBean queryForPage(PageResultBean prb, String querySql,
			String countSql, Object parameter, String orderBy) {
		int count = sqlSessionTemplate.selectOne(countSql, parameter);

		prb.setTotalResult(count);
		int pagesize = prb.getPageSize();
		if (pagesize == 0) {
			pagesize = 20;
			prb.setPageSize(pagesize);
		}

		if (count % pagesize == 0)
			prb.setTotalPage(count / pagesize);
		else {
			prb.setTotalPage(count / pagesize + 1);
		}

		int currentpage = 1;
		if (prb.getCurrentPage() != 0)
			currentpage = prb.getCurrentPage();
		else {
			prb.setCurrentPage(currentpage);
		}

		int currentcount = 0;
		if (prb.getToPage() != 0) {
			int topage = prb.getToPage();
			currentcount = (topage - 1) * pagesize;
			prb.setCurrentPage(topage);
		} else {
			prb.setCurrentPage(currentpage);
		}

		int begin = currentcount;
		int end = begin + pagesize;

		if (end > count) {
			end = count;
		}
		prb.setBegin(count == 0 ? 0 : begin + 1);
		prb.setEnd(end);

		RowBounds rb = new RowBounds(currentcount,pagesize);
		prb.setResultList(sqlSessionTemplate.selectList(querySql,parameter,rb));
		return prb;
	}

	public JsonResultBean queryForJson(String querySql, String countSql,
			Object parameter, int skipResults, int maxResults) {
		JsonResultBean jrb = new JsonResultBean(true);

		int count = sqlSessionTemplate.selectOne(countSql, parameter);
		RowBounds rb = new RowBounds(skipResults,maxResults);
		List list = sqlSessionTemplate.selectList(querySql, parameter,rb);

		jrb.setTotal(count);
		jrb.setRows(list);
		return jrb;
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
}