package com.kh.goodluck.qna.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QNAController {

	public QNAController() {
		
	}
	
	@RequestMapping("bsh-QNA.go")
	public String report(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/QNA";
	}
	
	/*public String moveMyPageQnA() {
		return "";
	}*/
	
}
