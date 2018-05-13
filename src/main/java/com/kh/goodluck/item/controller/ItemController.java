package com.kh.goodluck.item.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

@Controller
public class ItemController {
	
//	@Autowired
//	private MemberService memberService;
//	
	public ItemController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("myitem.go")
	public String myitem() {
		System.out.println("마이아이템");
		return "A5.CJS/itemframe";
	}
	
	
	
}
