package com.kh.goodluck;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.faq.model.service.FaqService;
import com.kh.goodluck.faq.model.vo.Faq;
import com.kh.goodluck.notice.model.service.NoticeService;
import com.kh.goodluck.notice.model.vo.Notice;
import com.sun.mail.iap.Response;



@Controller
public class HomeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private FaqService faqService;
	
	@Autowired
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	@RequestMapping(value = "home.go", method = RequestMethod.GET)
	public String home() { 	//메인화면 이동용 메소드
		logger.info("HomeController Run");		
		return "home";
	}		

	@RequestMapping(value="noticetop5.go", method=RequestMethod.GET)
	public void CatchNoticeData(HttpServletRequest request , HttpServletResponse response) throws IOException {
		System.out.println("notice Top5 Ajax실행 준비..");
		ArrayList<Notice> mainnoticesample = (ArrayList<Notice>) noticeService.noticeTop5(); 
		//첫페이지 공지5개 글 가져오기

		System.out.println(mainnoticesample.toString()+"\n");
		
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Notice n : mainnoticesample) {
			JSONObject js = new JSONObject();
			js.put("notice_no", n.getNotice_no());
			/*js.put("notice_title", URLEncoder.encode(n.getNotice_title(),"UTF-8"));
			js.put("notice_content", URLEncoder.encode(n.getNotice_content(),"UTF-8"));*/
			js.put("notice_title", n.getNotice_title());
			js.put("notice_content", n.getNotice_content());
			js.put("notice_writer", n.getNotice_writer());
			js.put("notice_date", n.getNotice_date().toString());
			jarr.add(js);
		}
	
		json.put("noticeTop5list", jarr);
		System.out.println("jsonToString 출력시도..");
		System.out.println("json : "+json.toJSONString());
		
		response.setContentType("application/json; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="faqtop5.go", method=RequestMethod.GET)
	public void CatchFaqData(HttpServletRequest request , HttpServletResponse response) throws IOException {
		
		ArrayList<Faq> mainfaqsample = (ArrayList<Faq>)faqService.faqTop5();
		//Faq글 5개 가져오기
		
		/*System.out.println("faq Top5 json이전 출력테스트");
		System.out.println(mainfaqsample.toString()+"/n");*/
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Faq f : mainfaqsample) {
			JSONObject js = new JSONObject();
			js.put("faq_no", f.getFaq_no());
			js.put("faq_category", f.getFaq_category());
			js.put("faq_title", f.getFaq_title());
			js.put("faq_content", f.getFaq_content());
			jarr.add(js);
		}
		json.put("faqTop5list", jarr);
		
		/*System.out.println("faq Top5 jsonToString");
		System.out.println("json : "+json.toJSONString());*/
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
	}
	
	/////////////////////////여기까지 메인화면//////////////////////////////

	@RequestMapping(value="lifeareasample.go", method=RequestMethod.POST)
	public void CatchLifeData(HttpServletRequest request , HttpServletResponse response) throws IOException{
	
		ArrayList<Board> lifesupply = (ArrayList<Board>) boardService.mainShowLifeListPickUp();		
		
		System.out.println("메인에 보여질 생활영역 제공해요 목록 : "+lifesupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		  
		for(Board b : lifesupply) {
			JSONObject js = new JSONObject();
			
			jarr.add(js);
		}
		json.put("lifearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toString());
		out.flush();
		out.close();
	}  
	
	/////////////////////////여기까지 생활영역화면//////////////////////////////
	
	@RequestMapping(value="petareasample.go", method=RequestMethod.POST)
	public void CatchPetData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//반려동물 서비스 제공해요
		ArrayList<Board> petSupply =  (ArrayList<Board>) boardService.mainShowPetListPickUp();
	}
	
	////////////////////////여기까지 반려동물화면//////////////////////////////
	
	@RequestMapping(value="gameareasample.go", method=RequestMethod.POST)
	public void CatchGameData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		 //게임영역 서비스 제공해요	
		
		
	}
	
	/////////////////////////여기까지 게임영역화면//////////////////////////////
	
	@RequestMapping(value="musicsample.go", method=RequestMethod.POST)
	public void CatchMusicData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//음악영역 서비스 제공해요			
		
		
	}
	
	/////////////////////////여기까지 음악영역화면//////////////////////////////
	
	@RequestMapping(value="rentalsample.go", method=RequestMethod.POST)
	public void CatchRentalData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//렌탈영역 서비스 제공해요			
		
		
	}
	
	/////////////////////////여기까지 렌탈영역화면//////////////////////////////
	
	@RequestMapping(value="travelsample.go", method=RequestMethod.POST)
	public void CatchTravelData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//여행영역 서비스 제공해요			
		
		
	}
	
	/////////////////////////여기까지 여행영역화면//////////////////////////////	
	
	@RequestMapping(value="freesample.go", method=RequestMethod.POST)
	public void CatchFreeData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//프리랜서 서비스 제공해요
		
	}
	
	/////////////////////////여기까지 프리랜서영역화면//////////////////////////////
	
	@RequestMapping(value="requiresample.go", method=RequestMethod.POST)
	public void CatchRequireData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//구인영역 서비스 제공해요		
		
		
	}
	
	/////////////////////////여기까지 구인영역화면//////////////////////////////

	

	
	/*@RequestMapping(value="maindata.go", method=RequestMethod.POST) 지우지 말아주세염~~~
	public ModelAndView throwsBigData(ModelAndView mv) { //메인화면에 Ajax를 활용하여 모든 페이지에데이타를 뿌려주는 메소드


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
		return mv;
	}*/	

}
