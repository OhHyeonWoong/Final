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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.member.model.vo.Member;

import jdk.incubator.http.HttpResponse;

@Controller
public class ItemController {
	
//	@Autowired
//	private MemberService memberService;
	
	@Autowired
	private ItemService ItemService;
//	
	public ItemController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("myitem.go")
	public String myitem() {
		System.out.println("마이아이템/스프링이아닌 mv로 아이템목록 가져갸아함 수정후 삭제/");
		
		
		return "A5.CJS/itemframe";
	}

	
	@RequestMapping("cjsitemmellhome.go")
	public ModelAndView itemmallmove(ModelAndView mv) {
		
		//아이템몰 메인	
		
		//8개 뽑기. 최신.
		ArrayList<ITEMLIST> al= (ArrayList<ITEMLIST>)ItemService.homenewlitm();
	
		//4개뽑기 인기
		ArrayList<ITEMLIST> al1= (ArrayList<ITEMLIST>)ItemService.homepopularlitm();
		
		//카로셀에 넣을것.
		
		//공지사항
		
		//할인 목록.
		
		
		mv.addObject("newitem",al);
		mv.addObject("popularlitm",al1);
		mv.setViewName("A5.CJS/itemMall");
		return mv;
	}
	
	@RequestMapping("cjsitemDetail.go")
	public ModelAndView itemDetailmove(@RequestParam("itemno") int itemno , ModelAndView mv) {
		
		ITEMLIST li= ItemService.itemdetail(itemno);
		
		mv.addObject("detail",li);
		mv.setViewName("A5.CJS/itemDetail");
		return mv;
	}

	
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
	
	@RequestMapping("cjsgetmyitem.go")
	public void getmyitem(@RequestParam("member_id") String memberid, HttpServletResponse response) throws IOException {
	
		System.out.println("member : " + memberid);
		//로그인 작업을 합니다 세션에 넣어요
		
		GetMyItem gmi = new GetMyItem();
		
		PrintWriter out = response.getWriter();

		out.flush();
		out.close();
	
	}
	 
	
}


















