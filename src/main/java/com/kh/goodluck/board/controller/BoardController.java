package com.kh.goodluck.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;

@Controller
public class BoardController {

	public BoardController() {
		
	}
	@Autowired
	private BoardService boardservice;
	
	@RequestMapping("Board.go")
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Board";	
	}
	
	@RequestMapping(value="bshtest.go", method=RequestMethod.GET)
	public void test(Board board) {
		
		
		System.out.println(board);
		List<Board> boardlist = boardservice.selectCategory(board);
		
		System.out.println(boardlist);
		
		for(Board b:boardlist) {
			System.out.println("글번호:"+b.getAgency_no());
		}
		
	}


	
	
	
	
}
