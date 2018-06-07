package com.kh.goodluck.board.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.Trade_detail;

@Controller
@SessionAttributes("loginUser")
public class CJS_BoardController {

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
	@RequestMapping("cjstest.go")
	public String asfd() {
		return "A5.CJS/test";
		
	}
	
	
///////////////////////////////////////////////////////////////////////////////////	
	
	@RequestMapping("DealingState.go") //욱재작업 - 신청후 거래중페이지 이동
	public String DealingStatemove(@RequestParam("BoardNo") int pk, @RequestParam("memberid") String memberid) {
		//거래신청. 
		//거래신청시?해야할것.
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
		System.out.println("result="+result);
		break;
		case 2:map.put("Status",3);
		boardservice.updateAgencyStatus(map);
		//예비 인력으로 사람이 추가됨.
    	td.setTRADE_RESERVATION(memberid);
    	//보드에 예비인력으로써 신청됨.
    	int result1=boardservice.UpdateTradeReserVation(td);
    	System.out.println("result1="+result1);
		break;
		default: 
		System.out.println("적절하지 않은 접근입니다.");
		return "A5.CJS/ErrorPage";
		}
		//--> 트레이드 디테일 작성완료.
		
		map=new HashMap<Object,Object>();
		map.put("CHATROOM_MEMBER1",bo.getAgency_writer());
		map.put("CHATROOM_MEMBER2",memberid);
		int result2=boardservice.insertchatroom(map);
		//다음방에 채팅이 있으므로, 채팅방을 생성하고 그 채팅방의 번호를 가져온다.
		/*
		CHATROOM
		CHATROOM_NO
		CHATROOM_MEMBER1
		CHATROOM_MEMBER2
		*/
		
		
		return "A2.JUJ/dealingState";
		
	}
}
