package com.kh.goodluck.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("boarddao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BoardDao() {
		
	}
	
	public List<Object> selectCategory(String smallcategory) {
		
		return sqlSession.selectList("selectCategory", smallcategory);
	}
	
	
}
