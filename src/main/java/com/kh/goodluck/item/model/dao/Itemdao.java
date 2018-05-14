package com.kh.goodluck.item.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.member.model.vo.Member;

@Repository("itemDao")
public class Itemdao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Itemdao() {
		
	}

	
}
