package com.kh.goodluck.item.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.item.model.vo.UsingItem;
import com.kh.goodluck.member.model.vo.Member;

@Repository("itemlistDao")
public class Itemdao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Itemdao() {}

	
	public List<ITEMLIST> homenewitem() {
	return sqlSession.selectList("homenewltem");
	}


	public ITEMLIST itemdetail(int itemno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectitemdetail",itemno);
	}


	public List<ITEMLIST> homepopularlitm() {
		// TODO Auto-generated method stub
	 return sqlSession.selectList("homepopularlitm");
	}

	public List<GetMyItem> GetMyItem(com.kh.goodluck.item.model.vo.GetMyItem gmi) {
		// TODO Auto-generated method stub
	
		
		return sqlSession.selectList("Getmyitem",gmi);
	}


	public List<ItemNotice> notice() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("homeitemnotice");
	}


	public int gethavingListCount(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("gethavingListCount",memberid);
	}


	
	public int gethavingListCount1(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("gethavingListCount1",memberid);
	}

	public List<GetMyItem> GetMyItem1(com.kh.goodluck.item.model.vo.GetMyItem gmi) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Getmyitem1",gmi);
	}


	public List<UsingItem> getUsingItem(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getUsingItem",memberid);
	}


	public int getmyimticon(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getmyimticon",memberid);
	}


	public int turnitemstatus(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.update("turnitemstatus",useritempk);
	}


	public int insertusingitem(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertusingitem",useritempk);
	}


	public int checkitemusing(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("checkitemusing",useritempk);
	}


	public int Insertitemlog(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Insertitemlog", useritempk);
	}


	public int insertusingitem1(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertusingitem1", useritempk);
	}


	public int Insertitemlog1(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("Insertitemlog1", useritempk);
	}


	public int insertimticon(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertimticon", useritempk);
	}

	public int getmyimticon1(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getmyimticon1",memberid);
	}


	public int updateimticon(HashMap<String,Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.update("updateimticon",map);
	}


	public int upgradeboardcount(String memberid) {
		return sqlSession.update("upgradeboardcount",memberid);
	}
	public int upgradekeywordcount(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.update("upgradekeywordcount",memberid);
	}
	public int getitemlistno(int useritempk) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getitemlistno",useritempk);
	}
	public List<ITEMLIST> allitemlist(HashMap<Object,Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("allitemlist",map);
	}
	public int countitem() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("countitem");
	}
	public int countitem(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("countitem1",map);
	}
	public List<ITEMLIST> allitemlist1(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("allitemlist1",map);
	}


	public List<ITEMLIST> allitemlist2(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("allitemlist2",map);
	}

	//made by byung jun
	public int selectMyPageItemListCount(String member_id) {
		//내 아이템 리스트 갯수 구해오는 메소드
		return sqlSession.selectOne("selectMyPageItemListCount",member_id);
	}
	public List<MyPageItem> selectMyPageItem(HashMap<Object, Object> map) {
		//마이페이지 아이템 가져오는 메소드
		return sqlSession.selectList("selectMyPageItem", map);
	}


	public ITEMLIST newitemthismonth() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("newitemthismonth");
	}


	public ITEMLIST popitemthismonth() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("popitemthismonth");
	}




	public ItemPackage getitempackage() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getitempackage");
	}


	public ITEMLIST getpackitemsinfo(int a) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getpackitemsinfo",a);
	}


	public ITEMLIST randomitem() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("randomitem");
	}
	
}
