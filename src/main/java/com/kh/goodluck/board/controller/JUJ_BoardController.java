package com.kh.goodluck.board.controller;

import java.util.*;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JUJ_BoardController {

	
	public JUJ_BoardController() { //기본생성자 선언
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("RearchResult.go")
	private String moveResearchResultPage() {
		System.out.println("검색후 결과 페이지로 이동합니다. gogo");
		
		
		return "A2.JUJ/SearchResult";
	}
	
	
	
	@RequestMapping(value="animalPageNews_next.do", method=RequestMethod.POST)
	private ModelAndView return_Info(ModelAndView mv) {
		
		System.out.println("동물뉴스 기사변경을 시도하였습니다.");
		
		return mv;
	}
	
	
	
	
}
