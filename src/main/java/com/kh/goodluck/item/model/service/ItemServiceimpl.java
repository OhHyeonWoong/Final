package com.kh.goodluck.item.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.item.model.dao.Itemdao;
import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;

@Service("ItemService")
public class ItemServiceimpl implements ItemService{
public ItemServiceimpl() {
	// TODO Auto-generated constructor stub
}

@Autowired
private Itemdao itemlistDao;

@Override
public List<ITEMLIST> homenewlitm() {
	return itemlistDao.homenewitem();
}

@Override
public ITEMLIST itemdetail(int itemno) {
	
	return itemlistDao.itemdetail(itemno);
}

@Override
public List<ITEMLIST> homepopularlitm() {

	return itemlistDao.homepopularlitm();
}

@Override
public List<GetMyItem> GetMyItem(String memberid) {
	
	return itemlistDao.GetMyItem(memberid);
}

@Override
public List<ItemNotice> notice() {
	
	return itemlistDao.notice();
}


}
