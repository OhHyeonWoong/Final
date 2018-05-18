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
	public String itemmallmove() {
		return "A5.CJS/itemMall";
	}	

	
	@RequestMapping("cjsitemmellhome.go")
	public ModelAndView itemmallmove(ModelAndView mv) {
	//아이템몰 메인	
		ArrayList<ITEMLIST> al= (ArrayList<ITEMLIST>)ItemService.homenewlitm();
	
		mv.addObject("newitem",al);
		mv.setViewName("A5.CJS/itemMall");
		return mv;
	}
	
	@RequestMapping("cjsitemDetail.go")
	public String itemDetailmove() {
		
		return "A5.CJS/itemDetail";
	}

}


















