package com.kh.goodluck.item.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.UsingItem;

public interface ItemService {
	public abstract List<ITEMLIST> homenewlitm();
	public abstract List<ITEMLIST> homepopularlitm();
	public abstract ITEMLIST itemdetail(int itemno);
	public abstract List<GetMyItem> GetMyItem(GetMyItem gmi);
	public abstract List<GetMyItem> GetMyItem1(GetMyItem gmi);
	public abstract List<ItemNotice> notice();
	public abstract int gethavingListCount(String memberid);
	public abstract int gethavingListCount1(String memberid);
	public abstract int getmyimticon(String memberid);
	public abstract List<UsingItem> getUsingItem(String memberid);
	
}
