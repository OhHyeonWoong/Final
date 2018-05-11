package com.kh.goodluck.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//병준 마이페이지 테스트용 메소드
	@RequestMapping("lbjmypage.go")
	public String mypageGo() {
		return "A6.LBJ/myPage";
	}
	@RequestMapping("lbjqnadetail.go")
	public String qnaDetailGo() {
		return "A6.LBJ/qnaDetail";
	}
	@RequestMapping("lbjqnawrite.go")
	public String qnaWriteGo() {
		return "A6.LBJ/qnaWrite";
	}
	
	@RequestMapping(value="lbjlogin.go",method=RequestMethod.POST)
	public String loginCheck(Member member,Model model) {
		System.out.println("member : " + member);
		
		//로그인 작업을 합니다 세션에 넣어요
		Member m = memberService.loginCheck(member);
		System.out.println("m : " + m);
		if(m != null) {
			System.out.println("로그인 성공");
			model.addAttribute("loginUser", m);
		}else {
			System.out.println("로그인 실패");
		}
		///////
		
		return "home";
	}
}
