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

	public List<GetMyItem> GetMyItem(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("Getmyitem",memberid);
	}


	public List<ItemNotice> notice() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("homeitemnotice");
	}
}
