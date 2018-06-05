package com.kh.goodluck.board.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;

@Controller
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
	public String DealingStatemove() {
		return "A2.JUJ/dealingState";
		
	}
}
