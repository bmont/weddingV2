package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.GiftBo;
import com.juliannebezerra.wedding.bo.UserBo;
import com.juliannebezerra.wedding.model.Gift;
import com.juliannebezerra.wedding.model.User;
import com.opensymphony.xwork2.ModelDriven;

public class GiftAction implements ModelDriven<Gift>{

	Gift gift = new Gift();
	List<Gift> giftList = new ArrayList<Gift>();
	
	int userId;
	
	GiftBo giftBo;
	UserBo userBo;
	
	public GiftBo getGiftBo() {
		return giftBo;
	}

	public void setGiftBo(GiftBo giftBo) {
		this.giftBo = giftBo;
	}

	public UserBo getUserBo() {
		return userBo;
	}

	public void setUserBo(UserBo userBo) {
		this.userBo = userBo;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public Gift getModel() {
		return gift;
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
}
