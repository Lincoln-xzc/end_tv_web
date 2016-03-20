package com.zyj.framework.dao;

import java.io.Serializable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("commonHibernateDao")
public class CommonHibernateDao extends HibernateDaoSupport {
	private static Logger logger = LoggerFactory
			.getLogger(CommonHibernateDao.class);

	public Serializable saveEntity(Object obj) {
		return getHibernateTemplate().save(obj);
	}

	public void updateEntity(Object obj) {
		getHibernateTemplate().update(obj);
	}

	public void deleteEntity(Object obj) {
		getHibernateTemplate().delete(obj);
	}

	public Object findEntityById(Class clazz, Object id) {
		return getHibernateTemplate().get(clazz, (Serializable) id);
	}

	public Object loadEntityById(Class clazz, Object idValue) {
		return getHibernateTemplate().load(clazz, (Serializable) idValue);
	}
}