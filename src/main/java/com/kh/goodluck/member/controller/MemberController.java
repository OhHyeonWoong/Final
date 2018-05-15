package com.kh.goodluck.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
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

import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	public String homeGo() {
		return "home";
	}
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
	@RequestMapping("lbjmoveLostFwdView.go")
	public String lostFwdViewGo() {
		return "A6.LBJ/member/lostFwdView";
	}
	@RequestMapping("lbjmoveResetFwdView.go")
	public ModelAndView resetFwdViewGo(HttpServletRequest request,ModelAndView mv) {
		mv.addObject("member_id", request.getParameter("member_id"));
		mv.setViewName("A6.LBJ/member/resetFwdView");
		return mv;
	}
	
	@RequestMapping(value="lbjlogin.go",method=RequestMethod.POST)
	public void loginCheck(Member member,Model model,HttpServletResponse response,HttpSession session) throws IOException{
		System.out.println("member : " + member);
		
		//로그인 작업을 합니다 세션에 넣어요
		Member m = memberService.loginCheck(member);
		System.out.println("m : " + m);
		PrintWriter out = response.getWriter();
		if(m != null) {
			out.write("로그인 성공");
			model.addAttribute("loginUser", m);
			System.out.println("session id = " + session.getId());
			System.out.println("session = " + session.getServletContext());
		}else {
			out.write("로그인 실패");
		}
		///////
		out.flush();
		out.close();
	}
	@RequestMapping(value="lbjlogout1.go",method=RequestMethod.GET)
	public void logoutMethod(SessionStatus status,HttpServletResponse response) throws IOException{
		//status.setComplete();
		System.out.println("로그아웃 ㅡ,ㅡ");
		//session.invalidate();
		status.setComplete();
		//this.homeGo();
		PrintWriter out = response.getWriter();
		out.write("로그아웃 성공!");
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjfindpwd.go",method=RequestMethod.POST)
	public String findPwdMethod(Member member) {
		System.out.println("findPwdMethod member 정보");
		System.out.println(member.getMember_id());
		System.out.println(member.getMember_pw());
		
		//member service를 부르고, 아이디를 이용해 저 비밀번호로 비밀번호 체인지
		int result = memberService.findPwdMethod(member);
		if(result > 0) {
			System.out.println("비밀번호 변경 성공");
		}else {
			System.out.println("비밀번호 변경 실패");
		}
		////////////////////////
		return "home";
	}
	
	
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
}
