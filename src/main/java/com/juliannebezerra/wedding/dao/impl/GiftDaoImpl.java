package com.juliannebezerra.wedding.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.juliannebezerra.wedding.dao.GiftDao;
import com.juliannebezerra.wedding.model.Gift;

public class GiftDaoImpl extends HibernateDaoSupport implements GiftDao{

	@Override
	public void add(Gift gift) {
		getHibernateTemplate().save(gift);
	}

	@Override
	public void update(Gift gift) {
		getHibernateTemplate().update(gift);
	}

	@Override
	public List<Gift> listGifts() {
		return getHibernateTemplate().find("from Gift");
	}

	@Override
	public Gift findGift(Long id) {
		List<Gift> gList = getHibernateTemplate().find("from Gift where id = ?", id);
		if(gList != null && !gList.isEmpty())
			return gList.get(0);
		else
			return null;
	}

}
