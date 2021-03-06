package com.kh.goodluck.item.model.service;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemDetail;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.item.model.vo.RanDomBoxChance;
import com.kh.goodluck.item.model.vo.UsingItem;

public interface ItemService {
	public abstract List<ITEMLIST> homenewlitm();
	public abstract List<ITEMLIST> allitemlist(HashMap<Object,Object> map);
	public abstract List<ITEMLIST> allitemlist1(HashMap<Object,Object> map);
	public abstract List<ITEMLIST> homepopularlitm();
	public abstract List<ITEMLIST> allRandomlist();
	public abstract List<RanDomBoxChance> getRanDomBoxChance1();
	public abstract List<RanDomBoxChance> getRanDomBoxChance2();
	public abstract List<RanDomBoxChance> getRanDomBoxChance3();
	public abstract ITEMLIST itemdetail(int itemno);
	public abstract ITEMLIST newitemthismonth();
	public abstract ITEMLIST popitemthismonth();
	public abstract ITEMLIST randomitem();
	public abstract List<GetMyItem> GetMyItem(GetMyItem gmi);
	public abstract List<GetMyItem> GetMyItem1(GetMyItem gmi);
	public abstract List<ItemNotice> notice();
	public abstract int gethavingListCount(String memberid);
	public abstract int gethavingListCount1(String memberid);
	public abstract int upgradeboardcount(String memberid);
	public abstract int upgradekeywordcount(String memberid);
	public abstract int countitem();
	public abstract int countitem(HashMap<Object,Object> map);
	public abstract int getmyimticon(String memberid);
	public abstract int getmyimticon1(String memberid);
	public abstract int turnitemstatus(int useritempk);
	public abstract int getitemlistno(int useritempk);
	public abstract int insertusingitem(int useritempk);
	public abstract int insertusingitem1(int useritempk);
	public abstract int checkitemusing(int useritempk);
	public abstract int Insertitemlog(int useritempk);
	public abstract int Insertitemlog1(int useritempk);
	public abstract int updateimticon(HashMap<String, Object> map);
	public abstract int insertimticon(int useritempk);
	public abstract String getUsingemticon(String memberid);
	public abstract List<UsingItem> getUsingItem(String memberid);
	public abstract List<ITEMLIST> allitemlist2(HashMap<Object, Object> map);
	public abstract List<ItemPackage> allpackitem();
	public abstract ItemPackage getitempackage();
	public abstract ITEMLIST getpackitemsinfo(int a);
	public abstract ItemPackage getitempackage(int pk);
	public abstract ItemDetail getitemdetail(int itemtype);
	public abstract int getitemprice(int pk);
	public abstract int insertmyitem(HashMap<Object, Object> map);
	public abstract int updatesellcount(int pk);
	public abstract int getitemtype(int itemlistno);
	public abstract ITEMLIST getmixicon(HashMap<Object, Object> map);
	public abstract ItemNotice getitemnoticeDetail(int pk);
	public abstract List<com.kh.goodluck.item.model.vo.GetMyItem> GetMyItem2(com.kh.goodluck.item.model.vo.GetMyItem gmi);
	public abstract String getUsingemticonfilename(String member_id);
	//made by byung jun
	public abstract int selectMyPageItemListCount(String member_id);
	public abstract List<MyPageItem> selectMyPageItem(HashMap<Object, Object> map);


	
	
	



	



}
