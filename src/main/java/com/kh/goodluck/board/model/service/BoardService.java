package com.kh.goodluck.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.board.model.dao.BoardDao;
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;

@Service("boardService")
public class BoardService {


	public BoardService() {
		
	}
	
	@Autowired
	private BoardDao boardDao;
	
	public List<Board> selectCategory(Board board){
		
		return boardDao.selectCategory(board);
	}
	
	public List<BigCategory> selectBigCategoryAll(){
		
		return boardDao.selectBigCategoryAll();
	}
	
	public List<MidCategory> selectMidCategoryAll(){
		
		return boardDao.selectMidCategoryAll();
	}
	
	public List<SmallCategory> selectSmallCategoryAll(){
		
		return boardDao.selectSmallCategoryAll();
	}
	
	public List<CategoryLink1> selectCategoryLink1(){
		
		return boardDao.selectCategoryLink1();
	}
	
	public List<CategoryLink2> selectCategoryLink2(){
		
		return boardDao.selectCategoryLink2();
	}

	public List<Board> selectCategoryMid(Board board) {
		
		return boardDao.selectCategoryMid(board);
	}
}