package com.kh.goodluck.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
/*import com.sun.tools.sjavac.comp.dependencies.PublicApiCollector;*/
//import com.sun.deploy.net.HttpRequest;
import com.sun.xml.internal.ws.addressing.v200408.MemberSubmissionWsaServerTube;

import jdk.incubator.http.HttpHeaders;

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
	
	@RequestMapping("maptest.go")
	public String maptestgo() {
		
		return "A5.CJS/maptest";
	}
	
	@RequestMapping(value="cjskakaologin.go",method= {RequestMethod.POST,RequestMethod.GET})
	public void loginCheck(Member member,
			Model model,
			HttpServletResponse response,
			HttpSession session,
			HttpServletRequest request) throws IOException{
		System.out.println("member : " + member);
		//로그인 작업을 합니다 세션에 넣어요
		//1. 현재 로그인한 사람들중에 혹시 먼저 카카오 인증을 한사람이 있는지 확인한다.
		if(memberService.getmemberinfobykakaopk(Integer.parseInt(request.getParameter("kakaopk"))) != null)
		 
	{
			//토큰 갱신하기.
			HashMap<Object,Object> map =new HashMap<Object,Object>();
			map.put("refresh_token",request.getParameter("refresh_token"));
			map.put("access_token",request.getParameter("access_token"));
			map.put("kakaopk",Integer.parseInt(request.getParameter("kakaopk")));
			memberService.updatetoken(map);
			//
		 member=memberService.getmemberinfobykakaopk(Integer.parseInt(request.getParameter("kakaopk")));
	    member.setMember_refreshtoken(request.getParameter("refresh_token"));
	    member.setMember_accesstoken(request.getParameter("access_token"));
	    PrintWriter out = response.getWriter();
		 out.write("로그인 성공");
		 model.addAttribute("loginUser", member);
		 out.flush();
		 out.close();
	    
	    
	    
	
	}else {
		 member.setMember_id("guest");
	     member.setMember_name("(카카오로그인)"+request.getParameter("name"));
	     member.setMember_email(request.getParameter("email"));
	     member.setMember_refreshtoken(request.getParameter("refresh_token"));
	     member.setMember_accesstoken(request.getParameter("access_token"));
	     member.setMEMBER_KAKAOIDPK(Integer.parseInt(request.getParameter("kakaopk")));
	     member.setMember_status(1);
		 PrintWriter out = response.getWriter();
		 out.write("로그인 성공");
		 model.addAttribute("loginUser", member);
		 out.flush();
		 out.close();
		}
	} 
	
	@RequestMapping("kakaologinbymy.go")
	public void kakaologinbymy(Member m,Model model,
			HttpServletResponse response,
			HttpSession session,
			HttpServletRequest request) throws IOException 
	{
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
        	if(session.getValue("loginUser") != null) {
		//카카오톡 로그인이후, 독신사로 로그인을 신청한 경우.
				Member member1=(Member)session.getAttribute("loginUser");
				if(memberService.getmemberinfobykakaopk(member1.getMEMBER_KAKAOIDPK())!=null)
				{//이미 일전에 카카오톡으로 로그인을 해본적이 있으므로, 
					
					//토큰 갱신하기.
					HashMap<Object,Object> tokenmap =new HashMap<Object,Object>();
					tokenmap.put("refresh_token",member1.getMember_refreshtoken());
					tokenmap.put("access_token",member1.getMember_accesstoken());
					tokenmap.put("kakaopk",member1.getMEMBER_KAKAOIDPK());
					memberService.updatetoken(tokenmap);
					//
					
					m=memberService.getmemberinfobykakaopk(member1.getMEMBER_KAKAOIDPK());
					m.setMember_refreshtoken(member1.getMember_refreshtoken());
					m.setMember_accesstoken(member1.getMember_accesstoken());
					int result = memberService.updateLastLogin(m.getMember_id());
					out.write("카카오로그인함");
					model.addAttribute("loginUser", m);
				    out.flush();
					out.close();
				System.out.println("sdfsdafsd");
				}else {
				System.out.println("asdfasdfsas");
				out.write("카카오로그인안함");
				 out.flush();
				 out.close();
				}
		
		}else {
			System.out.println("asdfasdfsas");
			out.write(3);
		 out.flush();
		 out.close();
		 }
	}
}
