package com.kh.goodluck.item.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;
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
}
