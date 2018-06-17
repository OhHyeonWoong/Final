package com.kh.goodluck.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.MyPageApplyBoard;
import com.kh.goodluck.board.model.vo.MyPageBoard;

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
			}
			jarr.add(job2);
		}
		
		jobj.put("myApplyBoard", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
}
