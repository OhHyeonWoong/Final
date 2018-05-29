package com.kh.goodluck.board.model.dao;

import java.util.ArrayList;
import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;



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



	public List<MidCategory> selectMidCategoryAll() {
		
		return sqlSession.selectList("selectMidCategoryAll");
	}



	public List<SmallCategory> selectSmallCategoryAll() {
		
		return sqlSession.selectList("selectSmallCategoryAll");
	}



	public List<CategoryLink1> selectCategoryLink1() {
		
		return sqlSession.selectList("selectCategoryLink1");
		//return null;
	}



	public List<CategoryLink2> selectCategoryLink2() {
		
		return sqlSession.selectList("selectCategoryLink2");
	}



	public List<Board> selectCategoryMid(Board board) {
		
		return sqlSession.selectList("selectCategoryMid", board);
	}



	public List<Board> mainShowLifeListPickUp() {
		//메인페이지에 보여질 생활영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowLifeListPic");
	}



	public List<Board> mainShowPetListPickUp() {
		//메인페이지에 보여질 반려동물영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowPetListPic");
	}
	
	
	
}
