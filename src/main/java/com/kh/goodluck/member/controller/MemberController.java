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
import com.kh.goodluck.report.model.service.ReportService;
import com.kh.goodluck.report.model.vo.Report;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private QNAService qnaService;
	
	@Autowired
	private ReportService reportService;
	
	public String homeGo() {
		return "home";
	}
	//결제 테스트용
	@RequestMapping(value="lbjStatisticsTest.go")
	public String movePayTest() {
		return "A6.LBJ/adminStatistics/admin_loginStatistics";
	}
	////////////////////
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
		
		System.out.println("myQna.size = " + myQna.size());
		
		if (qnaMaxPage < qnaEndRow)
			qnaEndRow = qnaMaxPage;
		
		////qna 처리용 오브젝트
		//보내기용 arraylist생성
		HashMap<String,Integer> qnaPage = new HashMap<String,Integer>();
		qnaPage.put("qnaMaxPage",qnaMaxPage);
		qnaPage.put("qnaStartPage",qnaStartPage);
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
	    map1.put("startRow", qnaStartRow);
	    map1.put("endRow", itemEndRow);
	    map1.put("member_id", member_id);
	    ArrayList<MyPageItem> myItem = (ArrayList<MyPageItem>)ItemService.selectMyPageItem(map1);
	    
	    System.out.println("myItem size = " + myItem.size());
		
		if (itemMaxPage < itemEndRow)
			itemEndRow = itemMaxPage;
		
		HashMap<String,Integer> itemPage = new HashMap<String,Integer>();
		itemPage.put("itemMaxPage",itemMaxPage);
		itemPage.put("itemEndRow",itemEndRow);
		itemPage.put("itemListCount",itemListCount);
		
		System.out.println("itemEndRow = " + itemEndRow);
		System.out.println("itemListCount = " + itemListCount);
		
		mv.addObject("lbjMyItem", myItem);
		mv.addObject("itemPage",itemPage);
		//item 세팅 끝-----------------------------------------------------------
		//Report 세팅 ----------------------------------------------------------
		int reportListCount = reportService.selectMyPageReportListCount(member_id);
		int reportMaxPage = (int)((double)reportListCount / qnaLimit + 0.9);
		int reportEndRow = qnaStartRow + qnaLimit - 1;
		
		System.out.println("myReortListCount = " + reportListCount);
		
		HashMap<Object,Object> map2 = new HashMap<Object,Object>();
	    map2.put("startRow", qnaStartRow);
	    map2.put("endRow", reportEndRow);
	    map2.put("member_id", member_id);
	    ArrayList<Report> myReport = (ArrayList<Report>)reportService.selectMyPageReport(map2);
	    
	    System.out.println("myReport size = " + myReport.size());
		
	    if (reportMaxPage < reportEndRow)
			reportEndRow = reportMaxPage;
		
	    HashMap<String,Integer> reportPage = new HashMap<String,Integer>();
		reportPage.put("reportMaxPage",reportMaxPage);
		reportPage.put("reportEndRow",reportEndRow);
		reportPage.put("reportListCount",reportListCount);
		
		mv.addObject("lbjMyReport", myReport);
		mv.addObject("reportPage",reportPage);
		//Report 세팅 끝---------------------------------------------------------
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
			//lastlogin 갱신
			int result = memberService.updateLastLogin(m.getMember_id());
			if(result > 0 && m.getMember_status() != 2) {
				System.out.println("Update Last Login.. Success.. ");
				out.write("로그인 성공");
				model.addAttribute("loginUser", m);
			}else {
				System.out.println("Update Last Login.. Fail.. ");
				out.write("로그인 제제된 유저입니다.");
			}
			/////////////////////////
			/*System.out.println("session id = " + session.getId());
			System.out.println("session = " + session.getServletContext());*/
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
	
	@RequestMapping(value="lbjUpdateMember.go",method=RequestMethod.POST)
	public void updateMemberInfo(@RequestParam(name="member_profile",required=false) MultipartFile file,
			HttpServletRequest request,HttpServletResponse response,
			Member m,SessionStatus status,HttpSession session) throws IOException {
		//세션 정보 가져오기용 객체
		Member member = null;
		///
		System.out.println("updateMemberInfo 넘어온 멤버정보 : " + m.toString());
		
		String path = request.getSession().getServletContext().getRealPath("resources/uploadProfiles");
		//프로필 수정 전 기록이 있을 경우 가져옴
		String memberProfile = request.getParameter("member_profile1");
		///////////////////////////////////////////////////////
		System.out.println("path : " + path);
		//////////////확장자 체크를 위해 미리 빼놓음////////////////////////
		String fileName = file.getOriginalFilename();
		/////////////////////////////////////////////////////////
		if((fileName != "") && fileName.toLowerCase().endsWith(".jpg") || fileName.toLowerCase().endsWith(".jpeg") || 
				fileName.toLowerCase().endsWith(".png") || fileName.toLowerCase().endsWith(".gif") || 
				fileName.toLowerCase().endsWith(".bmp")) {
			if((fileName != memberProfile)) {
				//수정 된 프로필이 있고, 기존 프로필과 수정된 프로필이 같지 않을 때
				System.out.println("file.getOriginalFilename = " + file.getOriginalFilename());
				//디비에 접근해서 유저 정보 업데이트
				m.setMember_renamephoto(fileName);
				
				try {
					//파일을 해당 디렉토리에 저장
					file.transferTo(new File(path + "\\" + fileName));
				} catch (Exception e) {
					e.printStackTrace();
				}	
			}else {
				System.out.println("기존과 동일한 파일을 보냈거나 아무 파일도 보내지 않았습니다.");
			}
			int result = memberService.updateMemberInfo(m);
			if(result > 0) {
				System.out.println("멤버 정보 수정 성공!");
				//세션 정보 갱신을 해줘야됨
				Member updateMem = memberService.loginCheck(m);
				
				if(session.getValue("loginUser") != null) {
				    //맴버 아이디에 아이콘을 같이 가져가기.
				    member=(Member)session.getAttribute("loginUser");
				    member.setMember_pw(updateMem.getMember_pw());
				    member.setMember_phone(updateMem.getMember_phone());
				    member.setMember_renamephoto(updateMem.getMember_renamephoto());
				}
				/*if(m != null) {
					//기존 세션 없앰
					status.setComplete();
				}*/
				//////////////////
			}else {
				System.out.println("멤버 정보 수정 실패!");
			}
		}else {
			System.out.println("올바른 확장자가 아닙니다.");
		}
		if(member != null) {
			response.sendRedirect("lbjmypage.go?member_id="+member.getMember_id());
		}else {
			response.sendRedirect("lbjmypage.go?member_id="+m.getMember_id());
		}
	}
	
	@RequestMapping(value="lbjMemberOut.go",method=RequestMethod.POST)
	public void memberOutMethod(@RequestParam(name="member_id",required=false) String member_id,
			HttpServletResponse response,SessionStatus status) throws IOException{
		//회원 탈퇴 처리용 메소드
		//System.out.println("deleteMember member_id = " + member_id);
		int result = memberService.deleteMemberOut(member_id);
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.print("회원 탈퇴 성공");
			status.setComplete();
		}else {
			out.print("회원 탈퇴 실패");
		}
		out.flush();
		out.close();
	}
	

	@RequestMapping(value="lbjUpdateMemberCash.go")
	public void updateMemberCashMethod(Member m,HttpServletResponse response,
			  					HttpSession session) throws IOException{
		//멤버 캐시 정보 업데이트
		//세션정보 업데이트용 객체
		Member member = null;
		///////////////////////
		System.out.println("updateMemberCashMethod run...");
		int result = memberService.updateMemberCashMethod(m);
		if(result > 0) {
			//세션 정보 갱신
			System.out.println("결제 성공...");
			if(session.getValue("loginUser") != null) {
				//업데이트된 캐시정보로 정보 바꿔줌
			    member=(Member)session.getAttribute("loginUser");
			    member.setMember_cash(m.getMember_cash());
			}
		}else {
			//결제 실패
			System.out.println("결제 실패...");
		}

		response.sendRedirect("home.go");
	}
	
	@RequestMapping(value = "signIn.go", method = RequestMethod.POST)
	public void signIn() {
		
	}

}
