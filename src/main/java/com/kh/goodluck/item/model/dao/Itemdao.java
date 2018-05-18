package com.kh.goodluck.item.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.vo.Member;

@Repository("itemlistDao")
public class Itemdao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Itemdao() {}

	
	public List<ITEMLIST> homenewitem() {
	
	return sqlSession.selectList("homenewltem");
	}
}
