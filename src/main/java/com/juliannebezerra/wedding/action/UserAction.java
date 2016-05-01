package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.UserBo;
import com.juliannebezerra.wedding.model.User;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction implements ModelDriven<User>{
	
	User user = new User();
	List<User> userList = new ArrayList<User>();

	UserBo userBo;
	
	public UserBo getUserBo() {
		return userBo;
	}

	public void setUserBo(UserBo userBo) {
		this.userBo = userBo;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public String addUser() throws Exception{
		
		//save it
		user.setMail(user.getMail().toLowerCase());
		userBo.addUser(user);
	 
		//reload the user list
		userList = null;
		userList = userBo.listUsers();
		
		return "success";
	}
	
	public String home() {
		return "success";
	}
	
	public String login() throws Exception {
		if(user.getMail() != null){
			User logged = userBo.getFromMail(user.getMail());
			if(logged != null && logged.getPassword().equals(user.getPassword()))
				return "success";
		}
		return "failed";
		
	}
	
	//list all users
	public String listUser() throws Exception{
		
		userList = userBo.listUsers();
		
		return "success";
	
	}

	@Override
	public User getModel() {
		return user;
	}

}
