package com.juliannebezerra.wedding.bo.impl;

import java.util.Date;
import java.util.List;

import com.juliannebezerra.wedding.bo.UserBo;
import com.juliannebezerra.wedding.dao.UserDao;
import com.juliannebezerra.wedding.model.User;

public class UserBoImpl implements UserBo{
	
	UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void addUser(User user) {
		user.setCreated(new Date());
		
		User created = userDao.getFromMail(user.getMail());
		if(created == null)
		{
			userDao.addUser(user);
		}
	}

	@Override
	public List<User> listUsers() {
		return userDao.listUsers();
	}

	@Override
	public User getFromMail(String mail) {
		return userDao.getFromMail(mail);
	}

	@Override
	public User getUser(Long id) {
		return userDao.getUser(id);
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

}
