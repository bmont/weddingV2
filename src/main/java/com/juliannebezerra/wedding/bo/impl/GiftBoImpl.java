package com.juliannebezerra.wedding.bo.impl;

import java.util.List;

import com.juliannebezerra.wedding.bo.GiftBo;
import com.juliannebezerra.wedding.dao.GiftDao;
import com.juliannebezerra.wedding.model.Gift;

public class GiftBoImpl implements GiftBo{

	GiftDao giftDao;
	
	public void setGiftDao(GiftDao giftDao)
	{
		this.giftDao = giftDao;
	}
	
	@Override
	public void add(Gift gift) {
		giftDao.add(gift);
	}

	@Override
	public void update(Gift gift) {
		giftDao.update(gift);
	}

	@Override
	public List<Gift> listGifts() {
		return giftDao.listGifts();
	}

	@Override
	public Gift findGift(Long id) {
		return giftDao.findGift(id);
	}

}
