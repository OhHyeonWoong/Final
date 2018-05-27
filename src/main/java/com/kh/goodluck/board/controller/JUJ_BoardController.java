package com.kh.goodluck.board.controller;

import java.util.*;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JUJ_BoardController {

	
	
	@RequestMapping("animalPageNews_next.do")
	private ModelAndView return_Info(ModelAndView mv) {
		
		System.out.println("동물뉴스 기사변경을 시도하였습니다.");
		
		return mv;
	}
	
	
	
}
