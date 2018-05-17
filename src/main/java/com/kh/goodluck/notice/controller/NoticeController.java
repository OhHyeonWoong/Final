package com.kh.goodluck.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	public NoticeController() {
		
	}
	
	@RequestMapping("Notice.go")
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Notice";	
	}
	
	@RequestMapping("Notice2.go")  //욱재작업 - 나의 거래중 테이블View로 이동
	public String notice2(HttpServletRequest request,HttpServletResponse response) {
		
		return "A2.JUJ/Dealing";	
	}
	

	
}
