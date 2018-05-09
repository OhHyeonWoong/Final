package com.kh.goodluck.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	//병준 마이페이지 테스트용 메소드
	@RequestMapping("mypage.go")
	public String mypageGo() {
		return "A6.LBJ/myPage";
	}
}
