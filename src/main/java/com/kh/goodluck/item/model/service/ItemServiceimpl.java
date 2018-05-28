package com.kh.goodluck.item.model.service;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.item.model.dao.Itemdao;
import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.UsingItem;

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

@Override
public List<UsingItem> getUsingItem(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.getUsingItem(memberid);
}

@Override
public int getmyimticon(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.getmyimticon(memberid);
}

@Override
public int turnitemstatus(int useritempk) {
	
	return itemlistDao.turnitemstatus(useritempk);
}

@Override
public int insertusingitem(int useritempk) {
	// TODO Auto-generated method stub
return itemlistDao.insertusingitem(useritempk);
}

@Override
public int checkitemusing(int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.checkitemusing(useritempk);
}

@Override
public int Insertitemlog(int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.Insertitemlog(useritempk);
}

@Override
public int insertusingitem1 (int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.insertusingitem1(useritempk);
}

@Override
public int Insertitemlog1(int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.Insertitemlog1(useritempk);
}

@Override
public int getmyimticon1(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.getmyimticon1(memberid);
}


@Override
public int insertimticon(int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.insertimticon(useritempk);
}

@Override
public int updateimticon(HashMap<String,Object> map) {
	// TODO Auto-generated method stub
	return itemlistDao.updateimticon(map);
}

@Override
public int upgradeboardcount(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.upgradeboardcount(memberid);
}

@Override
public int upgradekeywordcount(String memberid) {
	// TODO Auto-generated method stub
	return itemlistDao.upgradekeywordcount(memberid);
}

@Override
public int getitemlistno(int useritempk) {
	// TODO Auto-generated method stub
	return itemlistDao.getitemlistno(useritempk);
}

@Override
public List<ITEMLIST> allitemlist(HashMap<Object,Object> map) {
	// TODO Auto-generated method stub
	return itemlistDao.allitemlist(map);
}

@Override
public int countitem() {
	// TODO Auto-generated method stub
	return itemlistDao.countitem();
}

@Override
public int countitem(HashMap<Object, Object> map) {
	// TODO Auto-generated method stub
	return  itemlistDao.countitem(map);
}

@Override
public List<ITEMLIST> allitemlist1(HashMap<Object, Object> map) {
	// TODO Auto-generated method stub
	return itemlistDao.allitemlist1(map);
}

@Override
public List<ITEMLIST> allitemlist2(HashMap<Object, Object> map) {
	// TODO Auto-generated method stub
	return  itemlistDao.allitemlist2(map);
}






}
