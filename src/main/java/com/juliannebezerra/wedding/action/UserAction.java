package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.juliannebezerra.wedding.bo.GiftBo;
import com.juliannebezerra.wedding.bo.UserBo;
import com.juliannebezerra.wedding.model.Gift;
import com.juliannebezerra.wedding.model.User;

public class UserAction implements SessionAware{
	
	private static final String SUCCESS = "success";
	User user;
	List<User> userList = new ArrayList<User>();
	String msg;
	UserBo userBo;
	GiftBo giftBo;
	
	private SessionMap<String,Object> sessionMap;
	
	Gift gift = new Gift();
	List<Gift> giftList = new ArrayList<Gift>();
	
	public String success() {
		return SUCCESS;
	}

	public String addUser() throws Exception{
		user.setMail(user.getMail().toLowerCase());
		if(isValidEmail(user.getMail())){
			userBo.addUser(user);
			return SUCCESS;
		}else {
			return "login";
		}
	}

	public String login() throws Exception {
		if(user != null && user.getMail() != null){
			User userReal = userBo.getFromMail(user.getMail());
			if(userReal != null && user.getPassword().equals(userReal.getPassword())){
				sessionMap.put("login","true");  
			    sessionMap.put("name",userReal.getName());  
			    sessionMap.put("userId",userReal.getUserId());  
				return SUCCESS;
			}
		}
		return "login";
		
	}
	
	public String logout() {
		 if(sessionMap!=null){  
		        sessionMap.invalidate();  
		  }  
		return SUCCESS;
	}

	private boolean isSessionLost(){
		HttpSession session = ServletActionContext.getRequest().getSession(false);  
		return (session==null || session.getAttribute("login")==null);
	}
	
	public String home() {
        if(isSessionLost()){  
            return "login";  
        }  
        else{  
        	return SUCCESS;        	
        }
	}

	public String excluir() throws Exception {
		if(user.getUserId() != null){
			user = userBo.getUser((Long) sessionMap.get("userId"));
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
		return SUCCESS;
		
	}

	public String listUser() throws Exception{
		userList = userBo.listUsers();
		return SUCCESS;
	
	}
	
	public String updateGift(){
		if(!isSessionLost()){
			try{
				User user = userBo.getUser((Long) sessionMap.get("userId"));
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
				
				return SUCCESS;
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return "login";
	}

//	@Override
//	public User getModel() {
//		return user;
//	}

	public SessionMap<String, Object> getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(SessionMap<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	@Override
	public void setSession(Map<String, Object> map) {
		 sessionMap=(SessionMap)map;  
	}
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
	public Long getUserId() {
		return user.getUserId();
	}

	public String getUserName() {
		return user.getName();
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
	private boolean isValidEmail(String mail){
		User u = userBo.getFromMail(mail);
		return (u == null);
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
