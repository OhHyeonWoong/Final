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
	
}
