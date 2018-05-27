package com.kh.goodluck;

import java.util.ArrayList;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.notice.model.service.NoticeService;
import com.kh.goodluck.notice.model.vo.Notice;

@Controller
public class HomeController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	@RequestMapping(value = "home.go", method = RequestMethod.GET)
	public String home() {
		logger.info("HomeController Run");
		
		//메인페이지 첫번째영역
		ArrayList<Notice> mainnoticesample = new ArrayList<Notice>(); //공지

		
		ArrayList<Board> mainfaqsample = new ArrayList<Board>(); //FAQ

		
		//생활페이지 두번째영역
		ArrayList<Board> lifesupply = new ArrayList<Board>(); //제공해요			
		
		//반려동물페이지 세번째영역
		ArrayList<Board> petsupply = new ArrayList<Board>(); //제공해요	
		ArrayList<Board> petnews = new ArrayList<Board>(); //반려동물 뉴스	
		
		//게임페이지 네번째영역
		ArrayList<Board> gamesupply = new ArrayList<Board>(); //제공해요	
		
		//음악페이지 다섯번째영역
		ArrayList<Board> musicsupply = new ArrayList<Board>(); //제공해요		
		
		//렌탈페이지 여섯번째영역
		ArrayList<Board> rentalsupplyhome = new ArrayList<Board>(); //제공해요(홈)	
		ArrayList<Board> rentalsupplysports = new ArrayList<Board>(); //제공해요(스포츠용품)	
		ArrayList<Board> rentalsupplylife = new ArrayList<Board>(); //제공해요(생활용품)	
		ArrayList<Board> rentalsupplyetc = new ArrayList<Board>(); //제공해요(기타)	
		
		//여행페이지 일곱번째영역
		ArrayList<Board> travelrecommendationguide = new ArrayList<Board>(); //추천여행가이더->5명		
		ArrayList<Board> travelsupply = new ArrayList<Board>(); //제공해요		
		ArrayList<Board> travelcustomertalking = new ArrayList<Board>(); //고객의소리		
		
		//프리랜서페이지 여덟번째영역
		ArrayList<Board> freerecommendationguide = new ArrayList<Board>(); //추천프리랜서->6명
		ArrayList<Board> freesupplyprogrammer = new ArrayList<Board>(); //제공해요(프로그래머)	
		ArrayList<Board> freesupplydesigner = new ArrayList<Board>(); //제공해요(디자이너)	
		ArrayList<Board> freesupplywriter = new ArrayList<Board>(); //제공해요(작가)	
		ArrayList<Board> freesupplytranslator = new ArrayList<Board>(); //제공해요(번역)	
		
		//구인페이지 아홉번째영역
		ArrayList<Board> requiresupplyonlyone = new ArrayList<Board>(); //제공해요(1인)			
		ArrayList<Board> requiresupplymany = new ArrayList<Board>(); //제공해요(다수,2인상)			
		ArrayList<Board> requiresupplyetc = new ArrayList<Board>(); //제공해요(기타)	
		
		return "home";
	}	
}
