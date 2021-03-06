package com.kh.goodluck.item.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.vo.Member;


public class UkjaeController {
	
	
	
	@RequestMapping("ukWookTest.go")  //(욱재작업) 메인화면에서 작업 드롭박스 욱재영역으로 이동하기 
	public String ukjaeworkingpageMove(){
		return "A2.JUJ/Allworking";
	}
	
	@RequestMapping("Eventpopup1.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기1 Window.open
	public String event1Popup1() {

		return "A2.JUJ/Event1";
	}

	@RequestMapping("Eventpopup2.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기2 Window.open
	public String event1Popup2() {
		return "A2.JUJ/Event2";
	}
	
	@RequestMapping("Eventpopup3.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기3 Window.open
	public String event1Popup3() {
		return "A2.JUJ/Event3";
	}
	 
	@RequestMapping("Chatting.go")  //(욱재작업) 채팅창페이지로 이동하기
	public String chartPageMove(){
		return "A2.JUJ/Chatting";
	}
	
	@RequestMapping("Ukcarousel.go")  //(욱재작업) 채팅창페이지로 이동하기
	public String carouselTestPageMove(){
		return "A2.JUJ/Carousel_test";
	}


}
