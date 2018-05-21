package com.kh.goodluck.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;

@Controller
public class CJS_BoardController {

	@Autowired
	private BoardService boardservice;
public CJS_BoardController() {
	// TODO Auto-generated constructor stub
}
	
	@RequestMapping("BoardDetail.go")
	public String boarddetailmove() {
		return "A5.CJS/boarddetail";
		
	}
	
	
///////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping("DealingState.go") //욱재작업 - 신청후 거래중페이지 이동
	public String DealingStatemove() {
		return "A2.JUJ/dealingState";
		
	}
}
