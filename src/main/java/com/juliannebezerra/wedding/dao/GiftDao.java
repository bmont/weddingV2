package com.juliannebezerra.wedding.dao;

import java.util.List;

import com.juliannebezerra.wedding.model.Gift;

public interface GiftDao {

	void add(Gift gift);
	void update(Gift gift);
	List<Gift> listGifts();
	Gift findGift (Long id);
}
