package com.kh.goodluck.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.goodluck.member.model.service.MemberService;

@Controller
@SessionAttributes("loginUser")
public class JDK_MemberController {
	@Autowired
	private MemberService memberService;
	
	//회원 가입 버튼 누를 시 회원 가입 창으로 보내는 메소드
		@RequestMapping(value="jdkregistration.go", method=RequestMethod.GET)
		public String signIn() {
			return "A3.JDK/registration";
		}
		
		//약관 링크 버튼 누를 시 링크모달 띄우는 메소드
		@RequestMapping(value="jdktermsofservice.go", method=RequestMethod.GET)
		public String serviceTerms() {
			return "A3.JDK/termsOfService";
		}
		
		//어드민 페이지 이동용 메소드
		@RequestMapping(value="jdkadminpage.go", method=RequestMethod.GET)
		public String adminpage() {
			return "A3.JDK/admin_listofmembers";
		}
		
		//어드민 페이지 회원관리 창 이동용 메소드
		@RequestMapping(value="", method=RequestMethod.GET)
		public String adminMemberManagement() {
			return "A3.JDK/admin_main";
		}
		
	
}
