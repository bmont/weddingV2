package com.juliannebezerra.wedding.bo;

import java.util.List;

import com.juliannebezerra.wedding.model.Gift;

public interface GiftBo {

	void add(Gift gift);
	void update(Gift gift);
	List<Gift> listGifts();
	Gift findGift (Long id);
}
