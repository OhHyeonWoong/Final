package com.kh.goodluck.item.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.item.model.dao.Itemdao;
import com.kh.goodluck.item.model.vo.ITEMLIST;

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


}
