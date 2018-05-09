package com.kh.goodluck.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	public BoardController() {
		
	}
	
	@RequestMapping("Board.go")
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Board";	
	}
	

	
}
