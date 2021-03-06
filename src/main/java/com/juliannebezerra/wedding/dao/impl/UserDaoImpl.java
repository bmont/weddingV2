package com.juliannebezerra.wedding.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.juliannebezerra.wedding.dao.UserDao;
import com.juliannebezerra.wedding.model.Gift;
import com.juliannebezerra.wedding.model.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	@Override
	public void addUser(User user) {
		if(user!= null && user.getMail() != null)
		{
			getHibernateTemplate().save(user);
			
		}
	}

	@Override
	public List<User> listUsers() {
		return getHibernateTemplate().find("from User");
	}

	@Override
	public User getFromMail(String mail) {
		List<User> uList = getHibernateTemplate().find("from User where mail = ?", mail.trim().toLowerCase());
		User ret = null;
		if(uList != null && !uList.isEmpty()){
			ret = uList.get(0);
		}
		return ret;
	}

	@Override
	public void update(User user) {
		getHibernateTemplate().update(user);
	}

	@Override
	public User getUser(Long id) {
		List<User> uList = getHibernateTemplate().find("from User where user_id = ?", id);
		if(uList != null && !uList.isEmpty())
			return uList.get(0);
		else
			return null;
	}

}
