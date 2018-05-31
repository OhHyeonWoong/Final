package com.kh.goodluck.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
import com.sun.tools.sjavac.comp.dependencies.PublicApiCollector;

@Controller
@SessionAttributes("loginUser")
public class CJSMemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private QNAService qnaService;
	
	@RequestMapping("checkusercash.go")
	public void checkusercash(@RequestParam("memberid") String memberid,HttpServletResponse response) {
	//유저의 id로 해당 유저의 잔액 검색.
	int balunce = memberService.checkusercash(memberid);
	
	PrintWriter out = null;
	try {
		out = response.getWriter();
		out.print(balunce);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		out.print(0);
	}
	out.flush();
	out.close();	
	}
	
}
