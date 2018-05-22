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
public List<GetMyItem> GetMyItem(GetMyItem gmi) {
	
	return itemlistDao.GetMyItem(gmi);
}

@Override
public List<ItemNotice> notice() {
	
	return itemlistDao.notice();
}

@Override
public int gethavingListCount(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.gethavingListCount(memberid);
}


@Override
public List<GetMyItem> GetMyItem1(com.kh.goodluck.item.model.vo.GetMyItem gmi) {
	// TODO Auto-generated method stub
	return itemlistDao.GetMyItem1(gmi);
}

@Override
public int gethavingListCount1(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.gethavingListCount1(memberid);
}




}
