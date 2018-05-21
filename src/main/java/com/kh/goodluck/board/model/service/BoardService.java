package com.kh.goodluck.board.model.service;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.goodluck.board.model.dao.BoardDao;
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;

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
	
	public List<BigCategory> selectMidCategoryAll(){
		
		return boardDao.selectMidCategoryAll();
	}
	
	public List<BigCategory> selectSmallCategoryAll(){
		
		return boardDao.selectSmallCategoryAll();
	}
	

	
	
}
