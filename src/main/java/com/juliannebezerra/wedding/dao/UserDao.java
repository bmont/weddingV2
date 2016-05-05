package com.juliannebezerra.wedding.dao;

import java.util.List;

import com.juliannebezerra.wedding.model.User;

public interface UserDao {
	void addUser(User user);
	List<User> listUsers();
	User getFromMail(String mail);
	User getUser(Long id);
	void update(User user);

}
