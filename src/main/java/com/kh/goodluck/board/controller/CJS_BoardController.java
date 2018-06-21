package com.kh.goodluck.board.controller;
import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Allance;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.KaKaoMessage;
import com.kh.goodluck.board.model.vo.Review;
import com.kh.goodluck.board.model.vo.ReviewForBoard;
import com.kh.goodluck.board.model.vo.Trade_detail;
import com.kh.goodluck.chat.model.Chat;
import com.kh.goodluck.chat.model.ChatDetail;
import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.kakaoAPI.KakaoMessageAPI;
import com.kh.goodluck.kakaoAPI.renew;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.Memberandscore;
import com.kh.goodluck.kakaoAPI.KakaoMessageAPI;
import oracle.sql.CHAR;

@Controller
@SessionAttributes("loginUser")
public class CJS_BoardController {

	private KakaoMessageAPI thread;
	
	private renew Retoken = new renew();
	
	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BoardService boardservice;
	
	public CJS_BoardController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("BoardDetail.go")
	public ModelAndView boarddetailmove(ModelAndView mv,HttpSession session,@RequestParam("BoardNo") int pk) {
		//보드상세설명으로 가는 명령어.
		//1:해당 보드 조회수+1
		
		/*if(session.getValue("loginUser") == null) {
			//맴버 아이디에 아이콘을 같이 가져가기.
		mv.setViewName("A5.CJS/login2");
		return mv;	
		}else{*/
			
			
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
				if(bo.getAgency_type()==2) {
				List<ReviewForBoard> review=boardservice.getreviewforboard(bo.getAgency_writer());
				mv.addObject("review",review);
				}
				/* GetCategoryForBoardDetail 
				 * [CATEGORY_BIG_CODE=A, CATEGORY_MID_CODE=AA, 
				 * CATEGORY_SMALL_CODE=AAA, CATEGORY_BIG_NAME=생활, 
				 * CATEGORY_MID_NAME=홈, CATEGORY_SMALL_NAME=파티, 
				 * LINK1_NO=1, LINK2_NO=1]
				 * */	
				mv.addObject("Cateinfo",gcfbd);
				List<Allance> allance=boardservice.getallancelist();
				mv.addObject("allance",allance);
			    mv.addObject("keywords",keywords);
				mv.addObject("Board",bo);
				mv.setViewName("A5.CJS/boarddetail");
				return mv;	
			//}
	  }		

	
///////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping("DealingState.go") //욱재작업 - 신청후 거래중페이지 이동
	public void DealingStatemove(ModelAndView mv, KaKaoMessage KaKaoMessage,
			@RequestParam("BoardNo") int pk, 
			@RequestParam("memberid") String memberid,
			HttpServletResponse response,
			HttpServletRequest request) throws ServletException, IOException 
	{
		//본인의 글은 본인이 신청못하게, 같은사람이 여러번 신청못하게하기.\
		KaKaoMessage=new KaKaoMessage();

		RequestDispatcher view=null;
		response.setContentType("text/html charset=utf-8");
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
		
		if(bo.getAgency_writer().equals(memberid)) {
		//본인 글을 본인이 신청하면 마이페이지로 가게한다.
		response.sendRedirect("lbjmypage.go?member_id="+memberid);
		}else {
		switch(status){
		case 1: map.put("Status",2);
		boardservice.updateAgencyStatus(map);
		td.setTRADE_APPLICANT(memberid);
		//보드를 최초 신청할경우에, 
		//새롭게 인원이 신청함. 아래 인설트라고 되어있지만 사실은 업데이트문임. 
		int result=boardservice.insertNewTradeDetail(td);
		map=new HashMap<Object,Object>();
		map.put("CHATROOM_MEMBER1",bo.getAgency_writer());
		map.put("CHATROOM_MEMBER2",memberid);
		map.put("AGENCY_NO",pk);
		boardservice.insertchatroom(map);
		System.out.println("신규최초 인원으로써 업데이트 result="+result);
		response.sendRedirect("lbjmypage.go?member_id="+memberid);
		Memberandscore writer=new Memberandscore();
		writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
		KaKaoMessage.setBoardtitle("신규 지원자가 나타났습니다.");
		System.out.println(writer);
		try {
			if(writer.getMEMBER_KAKAOIDPK()==0) {
			System.out.println("1.에러가떠서 22로 교체됨.");
			writer.setMember_accesstoken("22");
			writer.setMember_refreshtoken("22");
			}
			} catch (NullPointerException e) {
			System.out.println("2.에러가떠서 22로 교체됨.");
			writer.setMember_accesstoken("22");
			writer.setMember_refreshtoken("22");
	       }
		  KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
			if(!writer.getMember_accesstoken().equals("22")) {
			HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
			map2.put("key",KaKaoMessage.getToken());
			map2.put("memberid",writer.getMember_id());
			memberService.updateaccessToken(map2);
		  }
		
		KaKaoMessage.setMessage(writer.getMember_name()+"님의 게시글 "+bo.getAgency_title()+"에 새로운 지원자가 나타났습니다.");
	    KaKaoMessage.setBoardno(bo.getAgency_no());
	    KaKaoMessage.setMEMBER_PHONE(writer.getMember_phone());
		thread=new KakaoMessageAPI(KaKaoMessage);
		thread.start();
		break;
		////////////////////////////////
		
		case 2:
		//스테이터스가 2일경우 신청후 또 신청할수도있다. 그 걸 방지홰야한다.
		HashMap<Object,Object> map1 =new HashMap<Object,Object>();
		map1.put("AGENCY_NO",pk);
		map1.put("memberid",memberid);
	
		if(boardservice.getrelation(map1)==1) {
	    //로그인 유저는 일반지원자 이므로, 
		response.sendRedirect("lbjmypage.go?member_id="+memberid);
		}
		else
	    {
		map.put("Status",3);
	    boardservice.updateAgencyStatus(map);
		//예비 인력으로 사람이 추가됨.
    	td.setTRADE_RESERVATION(memberid);
    	//보드에 예비인력으로써 신청됨.
    	int result1=boardservice.UpdateTradeReserVation(td);
    	
    	System.out.println("예비인력으로써 업데이트 >result1="+result1);
		}
		response.sendRedirect("lbjmypage.go?member_id="+memberid);
		writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
			KaKaoMessage.setBoardtitle("예비 지원자가 나타났습니다.");
		   try {
			   if(writer.getMember_accesstoken().equals("")) {
					writer.setMember_accesstoken("22");
					writer.setMember_refreshtoken("22");
					}
				} catch (NullPointerException e) {
				writer.setMember_accesstoken("22");
				writer.setMember_refreshtoken("22");
		        }
				KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
				if(!writer.getMember_accesstoken().equals("22")) {
				HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
				map2.put("key",KaKaoMessage.getToken());
				map2.put("memberid",writer.getMember_id());
				memberService.updateaccessToken(map2);
	        }
			
			KaKaoMessage.setMessage(writer.getMember_name()+"님의 게시글 "+bo.getAgency_title()+"에 새로운 예비 지원자가 나타났습니다.");
		    KaKaoMessage.setBoardno(bo.getAgency_no());
		    KaKaoMessage.setMEMBER_PHONE(writer.getMember_phone());
			thread=new KakaoMessageAPI(KaKaoMessage);
			thread.start();
		break;
		
		//////////////////////////////
		default: 
			response.sendRedirect("lbjmypage.go?member_id="+memberid);
			break;
		}
		//--> 트레이드 디테일 작성완료.
		
		
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
		
	    }

	
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
		if(boardservice.getrelation2(map)==1) {
		result=2;
		}
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
			HttpSession session,
			HttpServletResponse response
	) throws IOException  
	    {
		Member member=null;
		Board bo=boardservice.getBoardInfoByNo(pk);
		if(bo.getAgency_status()==4) {
		member=(Member)session.getAttribute("loginUser");
		response.sendRedirect("lbjmypage.go?member_id="+member.getMember_id());
		return null;
		}else {
	    //받는정보. 딱1개 > 보드번호
		if(session.getValue("loginUser") != null) {
		//맴버 아이디에 아이콘을 같이 가져가기.
		member=(Member)session.getAttribute("loginUser");
		}else {
		mv.setViewName("A5.CJS/ErrorPage2");
		return mv;
		}
		//현재 페이지를 보는 사람의 입장을 고려.
		//본인이 글작성자인지, 서비스제공자인제 어떻게 확인할것인가? 
		HashMap<Object,Object> map=new HashMap<Object,Object>();
		map.put("AGENCY_NO",pk);
		map.put("memberid",member.getMember_id());
		Memberandscore writer = new Memberandscore();
		//상대방의 정보 가져가야함.
	 	if(boardservice.getrelation(map)==1) {
	    //로그인 유저는 일반지원자  >> 상대방 정보는 작성자의 정보를 가져가야함.
	 	writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
		mv.setViewName("A2.JUJ/dealingState");
		}else if(boardservice.getrelation1(map)==1) {
		//해당인원은 예비 지원자. >> 상대방 정보는 작성자의 정보를 가져가야함.
		writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출
		mv.setViewName("A2.JUJ/dealingState1");
		}else if(boardservice.getrelation2(map)==1){
		//해당인원은 작성자.
		//해당인원이 작성자이므로, 현재 글을 신청한 일반신청자와 예비 신청자의 정보를 가져감.
		//그후 새로 만들어진 페이지로 이동.
		//추후 수정.
		writer=memberService.searchmemberInfobyBoardNo1(pk);
		mv.setViewName("A2.JUJ/dealingState2");
		}else {
		//로그인후 다른 사람이 직접 주소를 치고 들어온것이므로 팅겨낸다.
		mv.setViewName("A5.CJS/ErrorPage2");
		return mv;
		}
		GetCategoryForBoardDetail gcfbd=boardservice.gcfbd(Integer.parseInt(bo.getLink2_no()));
		mv.addObject("Cateinfo",gcfbd);
		writer.setEmoticonfile(ItemService.getUsingemticonfilename(writer.getMember_id()));
		mv.addObject("Board",bo);
		mv.addObject("writer",writer);
		try {
		mv.addObject("gender",String.valueOf(writer.getMember_regident_number()).charAt(String.valueOf(writer.getMember_regident_number()).length()-1)%2);
		}catch (Exception e) {
		response.sendRedirect("lbjmypage.go?member_id="+member.getMember_id());
		}
		
		Chat ca=(Chat)boardservice.getChatInfoByMap(map);
		mv.addObject("Chat",ca);
		mv.addObject("ChatLog",(List<ChatDetail>)boardservice.getChatLogByroomNo(ca.getCHATROOM_NO()));
		return mv;
	}
}
	@RequestMapping("cancelagency.go")
	public String cancelagency(@RequestParam("BoardNo") int pk, 
			HttpSession session,
			HttpServletResponse response,
			HttpServletRequest request,
			Memberandscore writer,KaKaoMessage KaKaoMessage
			) throws ServletException, IOException {
	    //사용자가 현재 이 게시판에 신청했는지 안했는지 확인. 안했다면 정상적인 경로를 이용하라고 유도
	Member member=null;
	Board bo=boardservice.getBoardInfoByNo(pk);
	KaKaoMessage=new KaKaoMessage();
		if(session.getValue("loginUser") != null) {
		member=(Member)session.getAttribute("loginUser");
		}else {
		//로그인이 되어있지 않은상태에서 이 주소를 친다면 배드리퀘스트를 리턴.
		return "A5.CJS/ErrorPage2";
		}
		//로그인한 사람이 현재 게시판의 일반지원자인지, 예비 지원자인이 확인해야함.
		HashMap<Object,Object> map =new HashMap<Object,Object>();
		map.put("AGENCY_NO",pk);
		map.put("memberid",member.getMember_id());
		RequestDispatcher view=null;
		response.setContentType("text/html charset=utf-8");
		if(boardservice.getrelation(map)==1) {
	    //로그인 유저는 일반지원자 이므로, 
	 		if(boardservice.getAgencyStatus(pk)==2) {
	 		//예비 후보가 없으므로 단순히 본인이 빠지고, 스테이터스를 1로 바꾸면됨.
	 		map=new HashMap<Object,Object>();
			map.put("pk", pk);
			map.put("Status",1);
	 		writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
			KaKaoMessage.setBoardtitle("모든지원자가 사퇴했습니다");
			try 
			{
				if(writer.getMember_accesstoken().equals("")) {
					writer.setMember_accesstoken("22");
					writer.setMember_refreshtoken("22");}
				} catch (Exception e) {
				writer.setMember_accesstoken("22");
				writer.setMember_refreshtoken("22");
		        }
				KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
				if(!writer.getMember_accesstoken().equals("22")) {
				HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
				map2.put("key",KaKaoMessage.getToken());
				map2.put("memberid",writer.getMember_id());
				memberService.updateaccessToken(map2);
			}
			KaKaoMessage.setMessage(writer.getMember_name()+"님의 게시글 "+bo.getAgency_title()+"에 일반 지원자가 자진사퇴하였습니다.");
		    KaKaoMessage.setBoardno(bo.getAgency_no());
		    KaKaoMessage.setMEMBER_PHONE(writer.getMember_phone());
			thread=new KakaoMessageAPI(KaKaoMessage);
			thread.start();
			boardservice.cancelagency1(pk);	
	 		boardservice.updateAgencyStatus(map);
	 		
	 		}else if(boardservice.getAgencyStatus(pk)==3) {
	 		//예비 후보가 있으므로, 본인이 빠지고, 예비 후보자를 일반후보자로 바꾸고 스테이터스를 2로 바꿈.
	 		map=new HashMap<Object,Object>();
			map.put("pk", pk);
			map.put("Status",2);	
			map.put("CHATROOM_MEMBER1",boardservice.getBoardInfoByNo(pk).getAgency_writer());
			map.put("CHATROOM_MEMBER2",boardservice.getAPPLICANT(pk));
			map.put("AGENCY_NO",pk);
			boardservice.insertchatroom(map);
			
			writer=memberService.searchmemberInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
			KaKaoMessage.setBoardtitle("지원자가 교체되었습니다.");
			KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
			try {
				if(writer.getMember_accesstoken().equals("")) {
					writer.setMember_accesstoken("22");
					writer.setMember_refreshtoken("22");}
				} catch (Exception e) {
				writer.setMember_accesstoken("22");
				writer.setMember_refreshtoken("22");
		        }
				KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
				if(!writer.getMember_accesstoken().equals("22")) {
				HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
				map2.put("key",KaKaoMessage.getToken());
				map2.put("memberid",writer.getMember_id());
				memberService.updateaccessToken(map2);
			    }
			KaKaoMessage.setMessage(writer.getMember_name()+"님의 게시글 "+bo.getAgency_title()+"가의 지원자가 예비후보자로 교체됬습니다.");
		    KaKaoMessage.setBoardno(bo.getAgency_no());
		    KaKaoMessage.setMEMBER_PHONE(writer.getMember_phone());
			thread=new KakaoMessageAPI(KaKaoMessage);
			thread.start();
			boardservice.cancelagency2(pk);
			boardservice.updateAgencyStatus(map);
			
	 		}
	 	}else if(boardservice.getrelation1(map)==1) {
		//해당인원은 단순 예비 지원자=> 예비후보자 명단에서 본인이빠지고 스테이터스를 2로 바꿈.
	 		map=new HashMap<Object,Object>();
			map.put("pk", pk);
			map.put("Status",2);	
			boardservice.cancelagency3(pk);
			boardservice.updateAgencyStatus(map);
	 	}else {
		return "A5.CJS/ErrorPage2";
		}
	    view=request.getRequestDispatcher("lbjmypage.go?member_id="+member.getMember_id());
		view.forward(request, response);
		return null;	
		
	}
	@RequestMapping("cancelagency1.go")
	public void cancelagency1(@RequestParam("BoardNo") int pk,
		@RequestParam("memberid") String memberid,Memberandscore APPLICANT,Memberandscore RESERVATION, KaKaoMessage KaKaoMessage, HttpServletResponse response) {
		//이 메소드는 작성자가 지원자를 교체할경우.
		Board bo=boardservice.getBoardInfoByNo(pk);
		HashMap<Object,Object> map =new HashMap<Object,Object>();
		PrintWriter out = null;
		KaKaoMessage=new KaKaoMessage();
 		try {
 				out = response.getWriter();
 		} catch (IOException e) {
 				// TODO Auto-generated catch block
 				e.printStackTrace();
 		}
	    //1. 취소 신청날이 오늘일경우.
		//boardservice.getAgencyDate <= 수행일과 오늘의 차이 구함.
		if(boardservice.getAgencyDate(pk)<0) {
		//이미 수행일이 지났음.
			out.print(0);
	 		out.flush();
	 		out.close();
		}else {
		    //수행일이 이미 지나지않았으므로, 정상적으로 취소신청을한다.	
		    //예비 후보자가 없을경우와 있을경우로 나뉜다.
			if(boardservice.getAgencyStatus(pk)==2) {
		 		//예비 후보가 없으므로  일반지원자를 뺴고, 스테이터스를 1로 바꾸면됨.
		 		map=new HashMap<Object,Object>();
				map.put("pk", pk);
				map.put("Status",1);
		 		
		 		APPLICANT=memberService.searchAPPLICANTInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
			    if(APPLICANT!=null) {
		 		System.out.println(APPLICANT.getMember_id());
		 		KaKaoMessage.setBoardtitle("오너가 님을 탈퇴시켰습니다.");
		 		System.out.println("문제보냄");
				try {
					if(APPLICANT.getMember_accesstoken().equals("")) {
					APPLICANT.setMember_accesstoken("22");
					APPLICANT.setMember_refreshtoken("22");}
		
				} catch (Exception e) {
				APPLICANT.setMember_accesstoken("22");
				APPLICANT.setMember_refreshtoken("22");
		        }
				KaKaoMessage.setToken(Retoken.renewaccessToken(APPLICANT.getMember_refreshtoken()));
				if(!APPLICANT.getMember_accesstoken().equals("22")) {
				HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
				map2.put("key",KaKaoMessage.getToken());
				map2.put("memberid",APPLICANT.getMember_id());
				memberService.updateaccessToken(map2);
				}
				KaKaoMessage.setMessage(APPLICANT.getMember_name()+"님이 신청하신 "+bo.getAgency_title()+"에서 오너가 님을 탈퇴시켰습니다.");
			    KaKaoMessage.setBoardno(bo.getAgency_no());
			    KaKaoMessage.setMEMBER_PHONE(APPLICANT.getMember_phone());
				thread=new KakaoMessageAPI(KaKaoMessage);
				thread.start();
			    }
			    
			    
			    boardservice.cancelagency1(pk);	
		 		boardservice.updateAgencyStatus(map);
				out.print(1);
		 		out.flush();
		 		out.close();	
		 
			}else if(boardservice.getAgencyStatus(pk)==3) {
		 		//예비 후보가 있으므로, 일반지원자를이 빠지고, 예비 후보자를 일반후보자로 바꾸고 스테이터스를 2로 바꿈.
		 		map=new HashMap<Object,Object>();
				map.put("pk", pk);
				map.put("Status",2);	
				map.put("CHATROOM_MEMBER1",boardservice.getBoardInfoByNo(pk).getAgency_writer());
				map.put("CHATROOM_MEMBER2",boardservice.getAPPLICANT(pk));
				map.put("AGENCY_NO",pk);
				boardservice.insertchatroom(map);
				APPLICANT=memberService.searchAPPLICANTInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
				KaKaoMessage.setBoardtitle("오너가 님을 탈퇴시켰습니다.");
				if(APPLICANT!=null) {
				try {
					if(APPLICANT.getMember_accesstoken().equals("")) {
						APPLICANT.setMember_accesstoken("22");
						APPLICANT.setMember_refreshtoken("22");}
				} catch (Exception e) {
					APPLICANT.setMember_accesstoken("22");
					APPLICANT.setMember_refreshtoken("22");
				}
				KaKaoMessage.setToken(Retoken.renewaccessToken(APPLICANT.getMember_refreshtoken()));
				if(!APPLICANT.getMember_accesstoken().equals("22")) {
					HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
					map2.put("key",KaKaoMessage.getToken());
					map2.put("memberid",APPLICANT.getMember_id());
					memberService.updateaccessToken(map2);
					}
				KaKaoMessage.setMessage(APPLICANT.getMember_name()+"님이 신청하신 "+bo.getAgency_title()+"에서 오너가 님을 탈퇴시켰습니다.");
			    KaKaoMessage.setBoardno(bo.getAgency_no());
			    KaKaoMessage.setMEMBER_PHONE(APPLICANT.getMember_phone());
				thread=new KakaoMessageAPI(KaKaoMessage);
				thread.start();
				}
				
				RESERVATION=memberService.searchRESERVATIONInfobyBoardNo(pk);	//<<-게시글의 작성자 정보추출 	
				if(RESERVATION!=null) {
				KaKaoMessage.setBoardtitle("일반지원자가 되었습니다.");
				try {
					if(RESERVATION.getMember_accesstoken().equals("")) {
						RESERVATION.setMember_accesstoken("22");
						RESERVATION.setMember_refreshtoken("22");}
	
				} catch (Exception e) {
				RESERVATION.setMember_accesstoken("22");
				RESERVATION.setMember_refreshtoken("22");
				}
				KaKaoMessage.setToken(Retoken.renewaccessToken(RESERVATION.getMember_refreshtoken()));
				if(!APPLICANT.getMember_accesstoken().equals("22")) {
					HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
					map2.put("key",KaKaoMessage.getToken());
					map2.put("memberid",RESERVATION.getMember_id());
					memberService.updateaccessToken(map2);
				}
				KaKaoMessage.setMessage(RESERVATION.getMember_name()+"님이 신청하신 "+bo.getAgency_title()+"에서 일반지원자가 되었습니다.");
			    KaKaoMessage.setBoardno(bo.getAgency_no());
			    KaKaoMessage.setMEMBER_PHONE(RESERVATION.getMember_phone());
				thread=new KakaoMessageAPI(KaKaoMessage);
				thread.start();
				}
				boardservice.cancelagency2(pk);
				boardservice.updateAgencyStatus(map);
				out.print(2);
		 		out.flush();
		 		out.close();
		 		}
		
		}
	
 		
		
	}
@RequestMapping("finishBoard.go")
public void finishBoard(
		@RequestParam("BoardNo") int pk,
		@RequestParam("rating") int rating,
		@RequestParam("review") String review , 
		@RequestParam("memberid") String memberid,
		HttpServletResponse response,
		HttpSession session ) throws IOException {
	//오너 입장에서만 이 매소드를 누굴수있긴하다.
	//글의 타입에 따라서 오너의 입장이 바끤다.
	//글타입1인 경우 글쓴이가 오너이다.
	//글타입2인 경우 일반지원자가 오너이다.
	response.setContentType("text/html charset=utf-8");
	Member member=null;
	if(session.getValue("loginUser") != null) {
	//맴버 아이디에 아이콘을 같이 가져가기.
	member=(Member)session.getAttribute("loginUser");
	System.out.println("rating="+rating);
	System.out.println("review="+review);
	System.out.println("BoardNo="+pk);
	Board bo=boardservice.getBoardInfoByNo(pk);
//////////////////////////////////////////////////	
	if(bo.getAgency_status()==2 || bo.getAgency_status()==3) {
	if(bo.getAgency_writer().equals(member.getMember_id())) {
	//글쓴이==로그인한사람 == 글의 타입은1.
	//1.보드의 상태를 4로 바꾼다. 
		System.out.println("보드타입이 1인경우.");
	HashMap<Object,Object> map=new HashMap<Object,Object>();
	map.put("pk",pk);
	map.put("Status",4);
	int result1=boardservice.updateAgencyStatus(map);
	//2.보드로그를 새로 인설트한다. 	
	int result2=boardservice.insertBoardlog(pk);
	//3.트레이드디테일의 예비후보자 null로 바꾸기. 
	int result3=boardservice.changeRESERVATION(pk);
	//4.리뷰를 작성한다.
	Review re=new Review();
	re.setREVIEW_CONTENT(review);
	re.setREVIEW_RATE(rating);
	re.setREVIEW_WRITER(memberid);
	re.setAGENCYLOG_NO(pk);
	int result4=boardservice.insertReview(re);
	//5. 점수처리한다
	HashMap<Object,Object> map2=new HashMap<Object,Object>();
	map2.put("order",bo.getAgency_writer());
	map2.put("APPLICANT",boardservice.getAPPLICANT(pk));
	map2.put("rate",bo.getAgency_pay()*rating/10000);
	map2.put("orderrate", bo.getAgency_pay());
	map2.put("payment",bo.getAgency_pay());
	int result5=boardservice.SCOREupdatetype1(map2);
	//6.돈계산+paylog인설트.
	int result6=memberService.paycash(map2);
	int result7=memberService.insertpaylog(map2);
	System.out.println("보드상태 4로 바꾸기="+result1);
	System.out.println("보드로그 인설트="+result2);
	System.out.println("트레이드 예비후보자 지우기="+result3);
	System.out.println("리뷰 작성.="+result4);
	System.out.println("점수 업데이트="+result5);
	System.out.println("돈 전송="+result6);
	System.out.println("페이 인설트="+result7);
	
	}else {
	//이건 긅의 타입이 2인경우이다. 일반 지원자가 오너인 경우임.
		//1.보드의 상태를 4로 바꾼다. 
		System.out.println("보드타입이 2인경우.");
		HashMap<Object,Object> map=new HashMap<Object,Object>();
		map.put("pk",pk);
		map.put("Status",4);
		int result1=boardservice.updateAgencyStatus(map);
		//2.보드로그를 새로 인설트한다. 	
		int result2=boardservice.insertBoardlog(pk);
		//3.트레이드디테일의 예비후보자 null로 바꾸기. 
		int result3=boardservice.changeRESERVATION(pk);
		//4.리뷰를 작성한다. 
		Review re=new Review();
		re.setREVIEW_CONTENT(review);
		re.setREVIEW_RATE(rating);
		re.setREVIEW_WRITER(boardservice.getAPPLICANT(pk));
		re.setAGENCYLOG_NO(pk);
		
		int result4=boardservice.insertReview(re);
		//5. 점수처리한다
		HashMap<Object,Object> map2=new HashMap<Object,Object>();
		map2.put("order",memberid);
		map2.put("APPLICANT",bo.getAgency_writer());
		map2.put("rate",bo.getAgency_pay()*rating/10000);
		map2.put("orderrate", bo.getAgency_pay());
		map2.put("payment",bo.getAgency_pay());
		int result5=boardservice.SCOREupdatetype1(map2);
		int result6=memberService.paycash(map2);
		int result7=memberService.insertpaylog(map2);
		System.out.println("보드상태 4로 바꾸기="+result1);
		System.out.println("보드로그 인설트="+result2);
		System.out.println("트레이드 예비후보자 지우기="+result3);
		System.out.println("리뷰 작성.="+result4);
		System.out.println("점수 업데이트="+result5);
		System.out.println("돈 전송="+result6);
		System.out.println("페이 인설트="+result7);	
	}
	
	
	
	
	
	}else {
	response.sendRedirect("Error500.go");		
	}
	response.sendRedirect("lbjmypage.go?member_id="+member.getMember_id());
	}else {
	response.sendRedirect("Error500.go");	
	}
}
			@RequestMapping("Error404.go")
			public String Error404() {
				return "A5.CJS/ErrorPage";
			}
			@RequestMapping("Error500.go")
			public String Error500() {
				return "A5.CJS/ErrorPage2";
			}
			
}

		
	
	

