package com.kh.goodluck.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.MyPageApplyBoard;
import com.kh.goodluck.board.model.vo.MyPageBoard;
import com.kh.goodluck.board.model.vo.MyPageBoardHistory;

@Controller
public class LBJ_BoardController {
	
	@Autowired
	private BoardService boardService;
	
	public LBJ_BoardController() {
		
	}
	
	@RequestMapping(value="lbjMyBoard.go",method=RequestMethod.POST)
	public void lbjMyBoardSelectMethod(HttpServletRequest request,HttpServletResponse response) 
													throws IOException{
		String member_id = request.getParameter("member_id");
		
		int myBoardCurrentPage = 1;
		if(request.getParameter("page") != null) {
			myBoardCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("myBoardCurrentPage = " + myBoardCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int myBoardLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int myBoardStartPage = (((int) ((double) myBoardCurrentPage / myBoardLimit + 0.9)) - 1) * myBoardLimit + 1;
		int myBoardStartRow = (myBoardCurrentPage-1)*myBoardLimit+1; 
		int myBoardListCount = boardService.selectMyBoardListCount(member_id);
		int myBoardMaxPage = (int)((double)myBoardListCount / myBoardLimit + 0.9);
		int myBoardEndRow = myBoardStartRow + myBoardLimit - 1;
		int myBoardEndFor = (((int) ((double) myBoardCurrentPage / myBoardLimit + 0.9)) - 1) * myBoardLimit + 6;
		if(myBoardEndFor > myBoardMaxPage) {
			myBoardEndFor = myBoardMaxPage;
		}
		/*
		 * 4. dao로 보낼 hashmap 생성
		 */
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", myBoardStartRow);
	    map.put("endRow", myBoardEndRow);
	    map.put("member_id", member_id);
		ArrayList<MyPageBoard> myBoard = (ArrayList<MyPageBoard>)boardService.selectMyBoard(map);
		
		if (myBoardMaxPage < myBoardEndRow)
		  myBoardEndRow = myBoardMaxPage;
		
		System.out.println("lbjMyBoardSelectMethod myBoardListcount = " + myBoardListCount);
	    System.out.println("lbjMyBoardSelectMethod myBoardStartRow = " + myBoardStartRow);
	    System.out.println("lbjMyBoardSelectMethod myBoardEndRow = " + myBoardEndRow);
	    System.out.println("lbjMyBoardSelectMethod myBoardMaxPage = " + myBoardMaxPage);
	    
	    ////myBoard 처리용 오브젝트
		//보내기용 arraylist생성
		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myBoard.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("agency_no", myBoard.get(i).getAgency_no());
			job2.put("agency_writer", myBoard.get(i).getAgency_writer());
			job2.put("agency_title", myBoard.get(i).getAgency_title());
			job2.put("link2_no", myBoard.get(i).getLink2_no());
			job2.put("agency_type", myBoard.get(i).getAgency_type());
			job2.put("agency_loc", myBoard.get(i).getAgency_loc());
			job2.put("agency_startdate", myBoard.get(i).getAgency_startdate().toString());
			job2.put("agency_enddate", myBoard.get(i).getAgency_enddate().toString());
			job2.put("agency_enrolldate", myBoard.get(i).getAgency_enrolldate().toString());
			job2.put("agency_paytype", myBoard.get(i).getAgency_paytype());
			job2.put("agency_pay", myBoard.get(i).getAgency_pay());
			job2.put("agency_status", myBoard.get(i).getAgency_status());			
			job2.put("agency_content", myBoard.get(i).getAgency_content());
			job2.put("agency_views", myBoard.get(i).getAgency_views());
			job2.put("agency_keyword", myBoard.get(i).getAgency_keyword());
			job2.put("agency_option", myBoard.get(i).getAgency_option());
			job2.put("category_small_name", myBoard.get(i).getCategory_small_name());
			if(i == 0) {
				job2.put("myBoardMaxPage", myBoardMaxPage);
				job2.put("myBoardStartPage", myBoardStartPage);
				job2.put("myBoardEndRow", myBoardEndRow);
				job2.put("myBoardCurrentPage", myBoardCurrentPage);
				job2.put("myBoardListCount", myBoardListCount);
				job2.put("myBoardEndFor", myBoardEndFor);
			}
			jarr.add(job2);
		}
		
		jobj.put("myBoard", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjMyApplyBoard.go",method=RequestMethod.POST)
	public void lbjMyApplyBoardSelectMethod(HttpServletRequest request,HttpServletResponse response) 
													throws IOException{
		String member_id = request.getParameter("member_id");
		
		int myApplyBoardCurrentPage = 1;
		if(request.getParameter("page") != null) {
			myApplyBoardCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("myApplyBoardCurrentPage = " + myApplyBoardCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int myApplyBoardLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int myApplyBoardStartPage = (((int) ((double) myApplyBoardCurrentPage / myApplyBoardLimit + 0.9)) - 1) * myApplyBoardLimit + 1;
		int myApplyBoardStartRow = (myApplyBoardCurrentPage-1)*myApplyBoardLimit+1; 
		int myApplyBoardListCount = boardService.selectMyApplyBoardListCount(member_id);
		int myApplyBoardMaxPage = (int)((double)myApplyBoardListCount / myApplyBoardLimit + 0.9);
		int myApplyBoardEndRow = myApplyBoardStartRow + myApplyBoardLimit - 1;
		int myApplyBoardEndFor = (((int) ((double) myApplyBoardCurrentPage / myApplyBoardLimit + 0.9)) - 1) * myApplyBoardLimit + 6;
		if(myApplyBoardEndFor > myApplyBoardMaxPage) {
			myApplyBoardEndFor = myApplyBoardMaxPage;
		}
		/*
		 * 4. dao로 보낼 hashmap 생성
		 */
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", myApplyBoardStartRow);
	    map.put("endRow", myApplyBoardEndRow);
	    map.put("member_id", member_id);
		ArrayList<MyPageApplyBoard> myApplyBoard = (ArrayList<MyPageApplyBoard>)boardService.selectMyApplyBoard(map);
		
		if (myApplyBoardMaxPage < myApplyBoardEndRow)
		  myApplyBoardEndRow = myApplyBoardMaxPage;
		
		System.out.println("lbjMyApplyBoardSelectMethod myApplyBoardListcount = " + myApplyBoardListCount);
	    System.out.println("lbjMyApplyBoardSelectMethod myApplyBoardStartRow = " + myApplyBoardStartRow);
	    System.out.println("lbjMyApplyBoardSelectMethod myApplyBoardEndRow = " + myApplyBoardEndRow);
	    System.out.println("lbjMyApplyBoardSelectMethod myApplyBoardMaxPage = " + myApplyBoardMaxPage);
	    ////myBoard 처리용 오브젝트
		//보내기용 arraylist생성
		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myApplyBoard.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("agency_no", myApplyBoard.get(i).getAgency_no());
			job2.put("agency_writer", myApplyBoard.get(i).getAgency_writer());
			job2.put("agency_title", myApplyBoard.get(i).getAgency_title());
			job2.put("link2_no", myApplyBoard.get(i).getLink2_no());
			job2.put("agency_type", myApplyBoard.get(i).getAgency_type());
			job2.put("agency_loc", myApplyBoard.get(i).getAgency_loc());
			job2.put("agency_startdate", myApplyBoard.get(i).getAgency_startdate().toString());
			job2.put("agency_enddate", myApplyBoard.get(i).getAgency_enddate().toString());
			job2.put("agency_enrolldate", myApplyBoard.get(i).getAgency_enrolldate().toString());
			job2.put("agency_paytype", myApplyBoard.get(i).getAgency_paytype());
			job2.put("agency_pay", myApplyBoard.get(i).getAgency_pay());
			job2.put("agency_status", myApplyBoard.get(i).getAgency_status());			
			job2.put("agency_content", myApplyBoard.get(i).getAgency_content());
			job2.put("agency_views", myApplyBoard.get(i).getAgency_views());
			job2.put("agency_keyword", myApplyBoard.get(i).getAgency_keyword());
			job2.put("agency_option", myApplyBoard.get(i).getAgency_option());
			job2.put("category_small_name", myApplyBoard.get(i).getCategory_small_name());
			job2.put("trade_applicant", myApplyBoard.get(i).getTrade_applicant());
			job2.put("trade_date", myApplyBoard.get(i).getTrade_date().toString());
			job2.put("trade_reservation", myApplyBoard.get(i).getTrade_reservation());
			job2.put("trade_reservation_date", myApplyBoard.get(i).getTrade_reservation_date());
			
			if(i == 0) {
				job2.put("myApplyBoardMaxPage", myApplyBoardMaxPage);
				job2.put("myApplyBoardStartPage", myApplyBoardStartPage);
				job2.put("myApplyBoardEndRow", myApplyBoardEndRow);
				job2.put("myApplyBoardCurrentPage", myApplyBoardCurrentPage);
				job2.put("myApplyBoardListCount", myApplyBoardListCount);
				job2.put("myApplyBoardEndFor", myApplyBoardEndFor);
			}
			jarr.add(job2);
		}
		
		jobj.put("myApplyBoard", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjMyBoardHistory.go",method=RequestMethod.POST)
	public void lbjMyBoardHistorySelectMethod(HttpServletRequest request,HttpServletResponse response) 
														throws IOException{
		String member_id = request.getParameter("member_id");
		int myBoardHistoryCurrentPage = 1;
		if(request.getParameter("page") != null) {
			myBoardHistoryCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("myBoardHistoryCurrentPage = " + myBoardHistoryCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int myBoardHistoryLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int myBoardHistoryStartRow = (myBoardHistoryCurrentPage-1)*myBoardHistoryLimit+1; 
		int myBoardHistoryStartPage = (((int) ((double) myBoardHistoryCurrentPage / myBoardHistoryLimit + 0.9)) - 1) * myBoardHistoryLimit + 1;
		int myBoardHistoryListCount = boardService.selectMyBoardHistoryListCount(member_id);
		int myBoardHistoryMaxPage = (int)((double)myBoardHistoryListCount / myBoardHistoryLimit + 0.9);
		int myBoardHistoryEndRow = myBoardHistoryStartRow + myBoardHistoryLimit - 1;	
		int myBoardHistoryEndFor = (((int) ((double) myBoardHistoryCurrentPage / myBoardHistoryLimit + 0.9)) - 1) * myBoardHistoryLimit + 6;
		if(myBoardHistoryEndFor > myBoardHistoryMaxPage) {
			myBoardHistoryEndFor = myBoardHistoryMaxPage;
		}
		/*
		 * 4. dao로 보낼 hashmap 생성
		 */
		HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", myBoardHistoryStartRow);
	    map.put("endRow", myBoardHistoryEndRow);
	    map.put("member_id", member_id);
	    ArrayList<MyPageBoardHistory> myBoardHistory = (ArrayList<MyPageBoardHistory>)boardService.selectMyBoardHistory(map);
		
		if (myBoardHistoryMaxPage < myBoardHistoryEndRow)
			myBoardHistoryEndRow = myBoardHistoryMaxPage;
		
		System.out.println("lbjMyBoardHistorySelectMethod myBoardHistoryListcount = " + myBoardHistoryListCount);
	    System.out.println("lbjMyBoardHistorySelectMethod myBoardHistoryStartRow = " + myBoardHistoryStartRow);
	    System.out.println("lbjMyBoardHistorySelectMethod myBoardHistoryEndRow = " + myBoardHistoryEndRow);
	    System.out.println("lbjMyBoardHistorySelectMethod myBoardHistoryMaxPage = " + myBoardHistoryMaxPage);

		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0;i<myBoardHistory.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("agencylog_finalstatus", myBoardHistory.get(i).getAgencylog_finalstatus());
			job2.put("agency_type", myBoardHistory.get(i).getAgency_type());
			job2.put("agency_title", myBoardHistory.get(i).getAgency_title());
			job2.put("trade_applicant", myBoardHistory.get(i).getTrade_applicant());
			job2.put("agencylog_date", myBoardHistory.get(i).getAgencylog_date());
			job2.put("agency_pay", myBoardHistory.get(i).getAgency_pay());
			job2.put("agency_paytype", myBoardHistory.get(i).getAgency_paytype());
			if(i == 0) {
				job2.put("myBoardHistoryMaxPage", myBoardHistoryMaxPage);
				job2.put("myBoardHistoryStartPage", myBoardHistoryStartPage);
				job2.put("myBoardHistoryEndRow", myBoardHistoryEndRow);
				job2.put("myBoardHistoryCurrentPage", myBoardHistoryCurrentPage);
				job2.put("myBoardHistoryListCount", myBoardHistoryListCount);
				job2.put("myBoardHistoryEndFor", myBoardHistoryEndFor);
			}
			jarr.add(job2);
		}
		
		jobj.put("myBoardHistory", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();

	}
	
	@RequestMapping(value="lbjWriteCandidate.go")
	public void lbjWriteCandidateMethod(HttpServletRequest request,HttpServletResponse response,
							HttpSession session) throws IOException{
		String member_id = request.getParameter("member_id");
		
		int myWriteCandidateCurrentPage = 1;
		if(request.getParameter("page") != null) {
			myWriteCandidateCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("myWriteCandidateCurrentPage = " + myWriteCandidateCurrentPage);

		int myWriteCandidateLimit = 6;

		int myWriteCandidateStartPage = (((int) ((double) myWriteCandidateCurrentPage / myWriteCandidateLimit + 0.9)) - 1) * myWriteCandidateLimit + 1;
		int myWriteCandidateStartRow = (myWriteCandidateCurrentPage-1)*myWriteCandidateLimit+1; 
		int myWriteCandidateListCount = boardService.selectMyWriteCandidateListCount(member_id);
		int myWriteCandidateMaxPage = (int)((double)myWriteCandidateListCount / myWriteCandidateLimit + 0.9);
		int myWriteCandidateEndRow = myWriteCandidateStartRow + myWriteCandidateLimit - 1;
		int myWriteCandidateEndFor = (((int) ((double) myWriteCandidateCurrentPage / myWriteCandidateLimit + 0.9)) - 1) * myWriteCandidateLimit + 6;
		if(myWriteCandidateEndFor > myWriteCandidateMaxPage) {
			myWriteCandidateEndFor = myWriteCandidateMaxPage;
		}
		 
		HashMap<Object,Object> map6 = new HashMap<Object,Object>();
	    map6.put("startRow", myWriteCandidateStartRow);
	    map6.put("endRow", myWriteCandidateEndRow);
	    map6.put("member_id", member_id);
	    ArrayList<MyPageApplyBoard> myWriteCandidate = (ArrayList<MyPageApplyBoard>)boardService.selectMyWriteCandidate(map6);
		
		if (myWriteCandidateMaxPage < myWriteCandidateEndRow)
		  myWriteCandidateEndRow = myWriteCandidateMaxPage;
		
		System.out.println("lbjWriteCandidateMethod myWriteCandidateListcount = " + myWriteCandidateListCount);
	    System.out.println("lbjWriteCandidateMethod myWriteCandidateStartRow = " + myWriteCandidateStartRow);
	    System.out.println("lbjWriteCandidateMethod myWriteCandidateEndRow = " + myWriteCandidateEndRow);
	    System.out.println("lbjWriteCandidateMethod myWriteCandidateMaxPage = " + myWriteCandidateMaxPage);
	    ////myBoard 처리용 오브젝트
		//보내기용 arraylist생성
		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myWriteCandidate.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("agency_no", myWriteCandidate.get(i).getAgency_no());
			job2.put("agency_writer", myWriteCandidate.get(i).getAgency_writer());
			job2.put("agency_title", myWriteCandidate.get(i).getAgency_title());
			job2.put("link2_no", myWriteCandidate.get(i).getLink2_no());
			job2.put("agency_type", myWriteCandidate.get(i).getAgency_type());
			job2.put("agency_loc", myWriteCandidate.get(i).getAgency_loc());
			job2.put("agency_startdate", myWriteCandidate.get(i).getAgency_startdate().toString());
			job2.put("agency_enddate", myWriteCandidate.get(i).getAgency_enddate().toString());
			job2.put("agency_enrolldate", myWriteCandidate.get(i).getAgency_enrolldate().toString());
			job2.put("agency_paytype", myWriteCandidate.get(i).getAgency_paytype());
			job2.put("agency_pay", myWriteCandidate.get(i).getAgency_pay());
			job2.put("agency_status", myWriteCandidate.get(i).getAgency_status());			
			job2.put("agency_content", myWriteCandidate.get(i).getAgency_content());
			job2.put("agency_views", myWriteCandidate.get(i).getAgency_views());
			job2.put("agency_keyword", myWriteCandidate.get(i).getAgency_keyword());
			job2.put("agency_option", myWriteCandidate.get(i).getAgency_option());
			job2.put("category_small_name", myWriteCandidate.get(i).getCategory_small_name());
			job2.put("trade_applicant", myWriteCandidate.get(i).getTrade_applicant());
			job2.put("trade_date", myWriteCandidate.get(i).getTrade_date().toString());
			job2.put("trade_reservation", myWriteCandidate.get(i).getTrade_reservation());
			job2.put("trade_reservation_date", myWriteCandidate.get(i).getTrade_reservation_date());
			
			if(i == 0) {
				job2.put("myWriteCandidateMaxPage", myWriteCandidateMaxPage);
				job2.put("myWriteCandidateStartPage", myWriteCandidateStartPage);
				job2.put("myWriteCandidateEndRow", myWriteCandidateEndRow);
				job2.put("myWriteCandidateCurrentPage", myWriteCandidateCurrentPage);
				job2.put("myWriteCandidateListCount", myWriteCandidateListCount);
				job2.put("myWriteCandidateEndFor", myWriteCandidateEndFor);
			}
			jarr.add(job2);
		}
		
		jobj.put("myWriteCandidate", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
}
