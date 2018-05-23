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
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;

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
	public ModelAndView test(Board board, BigCategory bigcategory, ModelAndView mv) {
		
		
		//System.out.println(board);
		List<Board> boardlist = boardservice.selectCategory(board);
		List<BigCategory> bigcategorylist = boardservice.selectBigCategoryAll();
		List<MidCategory> midcategorylist = boardservice.selectMidCategoryAll();
		List<SmallCategory> smallcategorylist = boardservice.selectSmallCategoryAll();
		List<CategoryLink1> categorylink1list = boardservice.selectCategoryLink1();
		List<CategoryLink2> categorylink2list = boardservice.selectCategoryLink2();
		
		//System.out.println(boardlist);
		
		/*for(Board b:boardlist) {
			System.out.println("글번호:"+b.getAgency_no());
		}*/
		mv.setViewName("A4.BSH/Board");
		mv.addObject("bigcategorylist",bigcategorylist);
		mv.addObject("midcategorylist",midcategorylist);
		mv.addObject("smallcategorylist",smallcategorylist);
		mv.addObject("boardlist", boardlist);
		mv.addObject("categorylink1list",categorylink1list);
		mv.addObject("categorylink2list",categorylink2list);
		
		//System.out.println(categorylink1list);
		//System.out.println(categorylink2list);
		
		
		//A4.BSH/Board
		return mv;
	}
	
	
	
	
}
