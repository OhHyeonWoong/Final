package com.kh.goodluck.item.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.goodluck.item.model.vo.ITEMLIST;

public interface ItemService {
	public abstract List<ITEMLIST> homenewlitm();
	public abstract List<ITEMLIST> homepopularlitm();
	public abstract ITEMLIST itemdetail(int itemno);
}
