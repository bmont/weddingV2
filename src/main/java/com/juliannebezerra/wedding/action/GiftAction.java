package com.juliannebezerra.wedding.action;

import java.util.ArrayList;
import java.util.List;

import com.juliannebezerra.wedding.bo.GiftBo;
import com.juliannebezerra.wedding.model.Gift;
import com.opensymphony.xwork2.ModelDriven;

public class GiftAction implements ModelDriven<Gift>{

	Gift gift = new Gift();
	List<Gift> giftList = new ArrayList<Gift>();
	
	GiftBo giftBo;
	
	public GiftBo getGiftBo() {
		return giftBo;
	}

	public void setGiftBo(GiftBo giftBo) {
		this.giftBo = giftBo;
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
}
