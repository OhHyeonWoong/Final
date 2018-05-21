package com.kh.goodluck.board.model.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.board.model.dao.BoardDao;
import com.kh.goodluck.board.model.vo.Board;


public interface BoardService {
	public List<Board> selectCategory(Board board);
}
