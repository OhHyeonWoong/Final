package com.kh.goodluck.faq.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.goodluck.faq.model.service.FAQServiceImpl;
import com.kh.goodluck.faq.model.vo.FAQ;


@Controller
public class FAQController {

	public FAQController() {
		
	}
	
	@RequestMapping("FAQ.go") 
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		//FAQ로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.
		         
		List<FAQ> alllist = new ArrayList<FAQ>(); //전체목록 리스트
		List<FAQ> paymentlist = new ArrayList<FAQ>(); //결제관련 리스트
		List<FAQ> reportlist = new ArrayList<FAQ>(); //신고관련 리스트
		List<FAQ> useinglist = new ArrayList<FAQ>(); //이용관련 리스트
		List<FAQ> loginlist = new ArrayList<FAQ>(); //로그인관련 리스트
		
		alllist = new FAQServiceImpl().selectAll();
		
		
		
		return "A4.BSH/FAQ";	
	}
	

	
}
