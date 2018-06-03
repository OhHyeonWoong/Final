package com.kh.goodluck.item.model.service;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.item.model.dao.Itemdao;
import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemDetail;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.item.model.vo.RanDomBoxChance;
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
	
	//made by byung jun
	@Override
	public int selectMyPageItemListCount(String member_id) {
		return itemlistDao.selectMyPageItemListCount(member_id);
	}
	@Override
	public List<MyPageItem> selectMyPageItem(HashMap<Object, Object> map) {
		return itemlistDao.selectMyPageItem(map);
	}

	@Override
	public ITEMLIST newitemthismonth() {
		// TODO Auto-generated method stub
		return itemlistDao.newitemthismonth();
	}

	@Override
	public ITEMLIST popitemthismonth() {
		// TODO Auto-generated method stub
		return itemlistDao.popitemthismonth();
	}


	@Override
	public ItemPackage getitempackage() {
		// TODO Auto-generated method stub
		return itemlistDao.getitempackage();
	}

	@Override
	public ITEMLIST getpackitemsinfo(int a) {
		// TODO Auto-generated method stuba
		return itemlistDao.getpackitemsinfo(a);
	}

	@Override
	public ITEMLIST randomitem() {
		// TODO Auto-generated method stub
		return itemlistDao.randomitem();
	}

	@Override
	public List<ItemPackage> allpackitem() {
		// TODO Auto-generated method stub
		return itemlistDao.allpackitem();
	}

	@Override
	public List<ITEMLIST> allRandomlist() {
		// TODO Auto-generated method stub
		return itemlistDao.allRandomlist();
	}

	@Override
	public List<RanDomBoxChance> getRanDomBoxChance1() {
		// TODO Auto-generated method stub
		return itemlistDao.getRanDomBoxChance1();
	}

	@Override
	public List<RanDomBoxChance> getRanDomBoxChance2() {
		// TODO Auto-generated method stub
		return itemlistDao.getRanDomBoxChance2();
	}

	@Override
	public List<RanDomBoxChance> getRanDomBoxChance3() {
		// TODO Auto-generated method stub
		return itemlistDao.getRanDomBoxChance3();
	}

	@Override
	public ItemPackage getitempackage(int pk) {
		// TODO Auto-generated method stub
		return itemlistDao.getitempackage(pk);
	}

	@Override
	public ItemDetail getitemdetail(int itemtype) {
		// TODO Auto-generated method stub
		return itemlistDao.getitemdetail(itemtype);
	}

	@Override
	public String getUsingemticon(String memberid) {
		// TODO Auto-generated method stub
		return itemlistDao.getUsingemticon(memberid);
	}

	@Override
	public int getitemprice(int pk) {
		// TODO Auto-generated method stub
		return itemlistDao.getitemprice(pk);
	}

	@Override
	public int insertmyitem(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return itemlistDao.insertmyitem(map);
	}

	@Override
	public int updatesellcount(int pk) {
		// TODO Auto-generated method stub
		return itemlistDao.updatesellcount(pk);
	}

	@Override
	public int getitemtype(int itemlistno) {
		// TODO Auto-generated method stub
		return  itemlistDao.getitemtype(itemlistno);
	}

	@Override
	public List<com.kh.goodluck.item.model.vo.GetMyItem> GetMyItem2(com.kh.goodluck.item.model.vo.GetMyItem gmi) {
		// TODO Auto-generated method stub
		return itemlistDao.GetMyItem2(gmi);
	}

	@Override
	public ITEMLIST getmixicon(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return itemlistDao.getmixicon(map);
	}

	
}
