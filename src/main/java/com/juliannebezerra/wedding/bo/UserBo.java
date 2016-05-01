package com.juliannebezerra.wedding.bo;

import java.util.List;

import com.juliannebezerra.wedding.model.User;

public interface UserBo {

	void addUser(User user);
	List<User> listUsers();
	User getFromMail(String mail);
}
