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
public class CJS_MemberController {
	
	@Autowired
	private MemberService memberService;
public CJS_MemberController() {
	// TODO Auto-generated constructor stub
}
	


}
