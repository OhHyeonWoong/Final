package com.kh.goodluck.board.model.service;

import java.util.ArrayList;
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
	
	public List<Board> selectCategoryBig(Board board) {
		
		return boardDao.selectCategoryBig(board);
	}

	public List<Board> mainShowLifeListPickUp() { 
		//메인페이지에 보여질 생활영역_제공해요 리스트추출
		
		return boardDao.mainShowLifeListPickUp();
	}
  
	public List<Board> mainShowPetListPickUp() {
		//메인페이지에 보여질 반려동물영역_제공해요 리스트추출
		return boardDao.mainShowPetListPickUp();
	}


}