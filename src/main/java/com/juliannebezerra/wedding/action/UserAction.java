package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.GiftBo;
import com.juliannebezerra.wedding.bo.UserBo;
import com.juliannebezerra.wedding.model.Gift;
import com.juliannebezerra.wedding.model.User;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction implements ModelDriven<User>{
	
	User user = new User();
	List<User> userList = new ArrayList<User>();
	int convidado = 0;
	String msg;
	UserBo userBo;
	GiftBo giftBo;
	
	Gift gift = new Gift();
	List<Gift> giftList = new ArrayList<Gift>();
	
	Long userId;
	String userName;
	
	public UserBo getUserBo() {
		return userBo;
	}

	public void setUserBo(UserBo userBo) {
		this.userBo = userBo;
	}

	public GiftBo getGiftBo() {
		return giftBo;
	}

	public void setGiftBo(GiftBo giftBo) {
		this.giftBo = giftBo;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getConvidado() {
		return convidado;
	}

	public void setConvidado(int convidado) {
		this.convidado = convidado;
	}

	public String addUser() throws Exception{
		
		//save it
		user.setMail(user.getMail().toLowerCase());
		userBo.addUser(user);
		setUserId(user.getUserId());
		setUserName(user.getName());
		return "success";
	}
	
	public String home() {
		return "success";
	}
	
	public String preAddUser()
	{
		return "success";
	}
	public String preLogin()
	{
		return "success";
	}
	public String preLoginFailed()
	{
		return "failed";
	}
	
	public String logout() {
		user.setMail("");
		user.setPassword("");
		user.setUserId((long) 0);
		return "success";
	}
	
	public String login() throws Exception {
		if(user.getMail() != null){
			User logged = userBo.getFromMail(user.getMail());
			if(logged != null && logged.getPassword().equals(user.getPassword())){
				setUserId(logged.getUserId());
				setUserName(logged.getName());
				user = logged;
				return "success";
			}
		}
		return "failed";
		
	}
	public String excluir() throws Exception {
		if(user.getUserId() != null){
			user = userBo.getUser(user.getUserId());
			user.setMail(user.getMail()+"brunoJulie2016");
			userBo.update(user);
			if(user.getGiftId()!= null && user.getGiftId() > 0) {
				Gift gift = giftBo.findGift(user.getGiftId());
				gift.setDisp(true);
				giftBo.update(gift);
			}
		}else {
			setMsg("Erro ao tentar excluir a conta");
			return "failed";
		}
		return "success";
		
	}
	
	public Long getUserId() {
		return user.getUserId();
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return user.getName();
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	//list all users
	public String listUser() throws Exception{
		
		userList = userBo.listUsers();
		
		return "success";
	
	}
	
	public Gift getGift() {
		return gift;
	}

	public void setGift(Gift gift) {
		this.gift = gift;
	}

	public List<Gift> getGiftList() {
		return giftList;
	}

	public void setGiftList(List<Gift> giftList) {
		this.giftList = giftList;
	}

	public String listGifts() {
		giftList = giftBo.listGifts();
		return "giftListed";
	}
	public String updateGift(){
		try{
			User user = userBo.getUser((long) getUserId());
			if(user != null){
				
				if(user.getGiftId()!= null && user.getGiftId() >0) {
					Gift aux = giftBo.findGift(user.getGiftId());
					aux.setDisp(true);
					giftBo.update(aux);
				}
				
				user.setGiftId(gift.getId());
				userBo.update(user);
			}
			gift = giftBo.findGift(gift.getId());
			gift.setDisp(false);
			giftBo.update(gift);
			
			return "success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "failed";
		
	}

	@Override
	public User getModel() {
		return user;
	}

}
