package com.kh.goodluck.board.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.Chat;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.Trade_detail;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.Memberandscore;

import oracle.sql.CHAR;

@Controller
@SessionAttributes("loginUser")
public class CJS_BoardController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BoardService boardservice;
	public CJS_BoardController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("BoardDetail.go")
	public ModelAndView boarddetailmove( ModelAndView mv, @RequestParam("BoardNo") int pk) {
		//보드상세설명으로 가는 명령어.
		//1:해당 보드 조회수+1
		int result=boardservice.IncreaseViewCount(pk);
		//2: 해당 보드 객체를 가지고 가기.
		Board bo=boardservice.getBoardInfoByNo(pk);
		System.out.println(bo.toString());
		//2.1 lonk2의pk로 보드의 최하위 스몰카테고리 조회수+1 
		boardservice.IncreasesSMALLCATEGORYCOUNT(Integer.parseInt(bo.getLink2_no()));
		//3: lonk2의pk로 해당 카테고리 상위목록들 가져가기
		GetCategoryForBoardDetail gcfbd=boardservice.gcfbd(Integer.parseInt(bo.getLink2_no()));
		//4: 보드의 키워드를 ,단위로 파싱하고 보낸다.
		String[] mobNum = bo.getAgency_keyword().split(",");
		ArrayList<String> keywords =new  ArrayList<String>();
		for (int i = 0; i < mobNum.length; i++){
		    keywords.add(mobNum[i]);		
		}
		
		/* GetCategoryForBoardDetail 
		 * [CATEGORY_BIG_CODE=A, CATEGORY_MID_CODE=AA, 
		 * CATEGORY_SMALL_CODE=AAA, CATEGORY_BIG_NAME=생활, 
		 * CATEGORY_MID_NAME=홈, CATEGORY_SMALL_NAME=파티, 
		 * LINK1_NO=1, LINK2_NO=1]
		 * */
	
	    mv.addObject("keywords",keywords);
		mv.addObject("Cateinfo",gcfbd);
		mv.addObject("Board",bo);
		mv.setViewName("A5.CJS/boarddetail");
		return mv;
		
	}	
	
///////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping("DealingState.go") //욱재작업 - 신청후 거래중페이지 이동
	public ModelAndView DealingStatemove(ModelAndView mv,@RequestParam("BoardNo") int pk, @RequestParam("memberid") String memberid) {
		//이 메소드는 오직 "신청하기" 버튼을 눌렀을경우에만 발동된다.
		//보드 신청.
		//1. 현재 현 보드의 상태를 가져온다.
		Board bo=boardservice.getBoardInfoByNo(pk);
		int status=bo.getAgency_status();
		//2. 상태별 스위치 기능.
		//3.trade_detail 테이블에 인썰트한다. 현 보드에서 스테이스 별로 스위치를 줘서 다른 메소드를 실행함.
		HashMap<Object,Object>map=new HashMap<Object,Object>();
		map.put("pk", pk);
		Trade_detail td=new Trade_detail();
		td.setAGENCY_NO(pk);
		switch(status){
		case 1: map.put("Status",2);
		boardservice.updateAgencyStatus(map);
		td.setTRADE_APPLICANT(memberid);
		//보드를 최초 신청할경우에, 
		//새롭게 인원이 신청함. 
		int result=boardservice.insertNewTradeDetail(td);
		System.out.println("신규최초 인원으로써 입력완료 result="+result);
		break;
		
		case 2:map.put("Status",3);
		boardservice.updateAgencyStatus(map);
		//예비 인력으로 사람이 추가됨.
    	td.setTRADE_RESERVATION(memberid);
    	//보드에 예비인력으로써 신청됨.
    	int result1=boardservice.UpdateTradeReserVation(td);
    	System.out.println("예비인력으로써 업데이트 >result1="+result1);
		break;
		default: 
		System.out.println("적절하지 않은 접근입니다.");
		mv.setViewName("A5.CJS/ErrorPage");
		return mv;
		}
		//--> 트레이드 디테일 작성완료.
		
		map=new HashMap<Object,Object>();
		map.put("CHATROOM_MEMBER1",bo.getAgency_writer());
		map.put("CHATROOM_MEMBER2",memberid);
		map.put("AGENCY_NO",pk);
		int result2=boardservice.insertchatroom(map);
		System.out.println("(>값이 1이여야 채팅룸 인설트 성공.)result2="+result2);
		//다음방에 채팅이 있으므로, 채팅방을 생성하고 그 채팅방의 번호를 가져온다.
		/*
		CHATROOM
		CHATROOM_NO
		CHATROOM_MEMBER1
		CHATROOM_MEMBER2
		*/
		//여기까지  보드관련 인설트 완료. 
		//이제 해당 매칭룸으로 가져가야할 정보들을 추출 post작업. 채팅정보 ,보드번호.
		//채팅방 정보추출은 board_no와 유저아이디로 추출.
		
		map=new HashMap<Object,Object>();
		map.put("AGENCY_NO",pk);
		map.put("memberid",memberid);
		mv.addObject("BoardNo",pk);
		if((Chat)boardservice.getChatInfoByMap(map) != null)
		mv.addObject("Chat",(Chat)boardservice.getChatInfoByMap(map));
		mv.setViewName("A2.JUJ/dealingState");
		return mv;
		//추후에 카카오톡 알람 설정까지 해야함.
	}
	
	@RequestMapping("chackboardStatusByuser.go")
	public void chackboardStatusByuser(
			@RequestParam("memberid") String pk,
			@RequestParam("BoardNo") int boardpk,
        	HttpServletResponse response)
	{
		HashMap<Object,Object> map =new HashMap<Object,Object>();
		map.put("AGENCY_NO", boardpk);
		map.put("memberid", pk);
		
		
		int result=boardservice.getrelation(map);
		PrintWriter out = null;
 		try {
 				out = response.getWriter();
 			} catch (IOException e) {
 				// TODO Auto-generated catch block
 				e.printStackTrace();
 			}
 			
 		out.print(result);
 		out.flush();
 		out.close();
 	}

	@RequestMapping("DealingState1.go") //욱재작업 - 신청후 거래중페이지 이동
	public ModelAndView DealingStatemove1(
			ModelAndView mv,
			@RequestParam("BoardNo") int pk, 
			HttpSession session
			) 
	{  
		//받는정보. 딱1개 > 보드번호
		Member member=null;
		if(session.getValue("loginUser") != null) {
		//맴버 아이디에 아이콘을 같이 가져가기.
		member=(Member)session.getAttribute("loginUser");
		}else {
		mv.setViewName("A5.CJS/ErrorPage2");
		return mv;
		//추후수정
		//정상적인 경로를 이용해주세요라고 경고띄움.
		}
		//현재 페이지를 보는 사람의 입장을 고려.
		//본인이 글작성자인지, 서비스제공자인제 어떻게 확인할것인가? 
		Board bo=boardservice.getBoardInfoByNo(pk);
		HashMap<Object,Object> map=new HashMap<Object,Object>();
		map.put("AGENCY_NO",pk);
		map.put("memberid",member.getMember_id());
		Memberandscore writer = new Memberandscore();
		
	    //상대방의 정보 가져가야함.
	 	if(boardservice.getrelation(map)==1) {
	    //로그인 유저는 일반지원자  >> 상대방 정보는 작성자의 정보를 가져가야함.
	 	writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 		
		}else if(boardservice.getrelation1(map)==1) {
		//해당인원은 예비 지원자. >> 상대방 정보는 작성자의 정보를 가져가야함.
		writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출
		}else if(boardservice.getrelation2(map)==1){
		//해당인원은 작성자.
		//해당인원이 작성자이므로, 현재 글을 신청한 일반신청자와 예비 신청자의 정보를 가져감.
		//그후 새로 만들어진 페이지로 이동.
		//추후 수정.
		
		}else {
		//로그인후 다른 사람이 직접 주소를 치고 들어온것이므로 팅겨낸다.
		mv.setViewName("A5.CJS/ErrorPage2");
		return mv;
		}
		GetCategoryForBoardDetail gcfbd=boardservice.gcfbd(Integer.parseInt(bo.getLink2_no()));
		mv.addObject("Cateinfo",gcfbd);
		mv.addObject("Board",bo);
		mv.addObject("writer",writer);
		mv.addObject("gender",
    
	String.valueOf(writer.getMember_regident_number())
	.charAt(String.valueOf(writer.getMember_regident_number()).length() - 1)%2
	
				);
		if((Chat)boardservice.getChatInfoByMap(map) != null)
		mv.addObject("Chat",(Chat)boardservice.getChatInfoByMap(map));
		mv.setViewName("A2.JUJ/dealingState");
		return mv;
	}
	
}

		
	
	

