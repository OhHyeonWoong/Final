package com.kh.goodluck.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;



@Repository("boardDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BoardDao() {
		
	}
	
	
	
	public List<Board> selectCategory(Board board) {
		
		return sqlSession.selectList("selectCategory", board);
	}



	public List<BigCategory> selectBigCategoryAll() {

		return sqlSession.selectList("selectBigCategoryAll");
	}



	public List<BigCategory> selectMidCategoryAll() {
		
		return sqlSession.selectList("selectMidCategoryAll");
	}



	public List<BigCategory> selectSmallCategoryAll() {
		
		return sqlSession.selectList("selectSmallCategoryAll");
	}
	
	
	
}
