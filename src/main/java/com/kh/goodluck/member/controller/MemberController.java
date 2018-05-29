package com.kh.goodluck.member.controller;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private QNAService qnaService;
	
	public String homeGo() {
		return "home";
	}
	//병준 마이페이지 테스트용 메소드
	@RequestMapping(value="lbjmypage.go")
	public ModelAndView mypageGo(ModelAndView mv,HttpServletRequest request) {
		//마이페이지 ㄱㄱ
		//뷰로 이동하기 전에 필요한 모든 정보 셋팅해서 보내기
		String member_id = request.getParameter("member_id");
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
		int qnaCurrentPage = 1;
		if(request.getParameter("page") != null) {
			qnaCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int qnaLimit = 6;
		//QnA------------------------------------------------------------
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int qnaListCount = qnaService.selectMyQnaCount(member_id);
		int qnaMaxPage = (int)((double)qnaListCount / qnaLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int qnaStartPage = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 1;
		int qnaStartRow = (qnaCurrentPage-1)*qnaLimit+1; 
	    int qnaEndRow = qnaStartRow + qnaLimit - 1;
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", qnaEndRow);
	    map.put("member_id", member_id);
		ArrayList<QNA> myQna = (ArrayList<QNA>)qnaService.selectMyQna(map);
		
		if (qnaMaxPage < qnaEndRow)
			qnaEndRow = qnaMaxPage;
		
		////qna 처리용 오브젝트
		//보내기용 arraylist생성
		HashMap<String,Integer> qnaPage = new HashMap<String,Integer>();
		qnaPage.put("qnaMaxPage",qnaMaxPage);
		qnaPage.put("qnaStartPage",qnaStartRow);
		qnaPage.put("qnaEndRow",qnaEndRow);
		qnaPage.put("qnaCurrentPage",qnaCurrentPage);
		qnaPage.put("qnaListCount",qnaListCount);
		
		mv.addObject("lbjMyQna", myQna);
		mv.addObject("qnaPage",qnaPage);
		//QnA 세팅 끝------------------------------------------------------------
		//item 세팅 ------------------------------------------------------------
		int itemListCount = ItemService.selectMyPageItemListCount(member_id);
		int itemMaxPage = (int)((double)itemListCount / qnaLimit + 0.9);
		int itemEndRow = qnaStartRow + qnaLimit - 1;
		
		HashMap<Object,Object> map1 = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", itemEndRow);
	    map.put("member_id", member_id);
	    ArrayList<MyPageItem> myItem = (ArrayList<MyPageItem>)ItemService.selectMyPageItem(map);
	    
	    System.out.println("myItem size = " + myItem.size());
		
		if (qnaMaxPage < itemEndRow)
			itemEndRow = qnaMaxPage;
		
		HashMap<String,Integer> itemPage = new HashMap<String,Integer>();
		itemPage.put("itemMaxPage",itemMaxPage);
		itemPage.put("itemEndRow",itemEndRow);
		itemPage.put("itemListCount",itemListCount);
		
		mv.addObject("lbjMyItem", myItem);
		mv.addObject("itemPage",itemPage);
		//item 세팅 끝-----------------------------------------------------------
		
		mv.setViewName("A6.LBJ/myPage");
		return mv;
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
	
	@RequestMapping(value="lbjfindid.go",method=RequestMethod.POST)
	public void findIdMethod(Member member,HttpServletResponse response) throws IOException{
		System.out.println("findIdMethod run...");
		System.out.println("id = " + member.getMember_id());
		System.out.println("email = " + member.getMember_email());
		System.out.println("name = " + member.getMember_name());
		
		Member me = memberService.findIdMethod(member);
		System.out.println("에미 : " + me);
		
		PrintWriter out = response.getWriter();
		if(me != null) {
			System.out.println("아이디 찾기 성공");
			out.print(me.getMember_id());
		}else {
			out.print("실패 기모띠 실패");
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping(value = "signIn.go", method = RequestMethod.POST)
	public void signIn() {
		
	}
	
}
