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

import javafx.scene.control.Pagination;



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

		//System.out.println(mainnoticesample.toString()+"\n");
		
		
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
		//System.out.println("jsonToString 출력시도..");
		//System.out.println("json : "+json.toJSONString());
		
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
			//js.put(	, value);
			
			jarr.add(js);
		}
		json.put("lifearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
	}  
	
	/////////////////////////여기까지 생활영역화면//////////////////////////////
	
	@RequestMapping(value="petareasample.go", method=RequestMethod.POST)
	public void CatchPetData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//반려동물 서비스 제공해요
		ArrayList<Board> petSupply =  (ArrayList<Board>) boardService.mainShowPetListPickUp();
		
		System.out.println("메인에 보여질 반려동물영역 제공해요 목록 : "+ petSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		  
		for(Board b :  petSupply) {
			JSONObject js = new JSONObject();
			//js.put(	, value);
			
			jarr.add(js);
		}
		json.put("petarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
		
	}
	
	////////////////////////여기까지 반려동물화면//////////////////////////////
	
	@RequestMapping(value="gameareasample.go", method=RequestMethod.POST)
	public void CatchGameData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		 //게임영역 서비스 제공해요	
		 ArrayList<Board> gameSupply = (ArrayList<Board>) boardService.mainShowGameListPickUp();
		 
		System.out.println("메인에 보여질 게임영역 제공해요 목록 : "+ gameSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		  
		for(Board b :  gameSupply) {
			JSONObject js = new JSONObject();
			//js.put(	, value);
			
			jarr.add(js);
		}
		json.put("gamearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
		
		
	}
	
	/////////////////////////여기까지 게임영역화면//////////////////////////////
	
	@RequestMapping(value="musicsample.go", method=RequestMethod.POST)
	public void CatchMusicData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//음악영역 서비스 제공해요	
		ArrayList<Board> musicSupply = (ArrayList<Board>) boardService.mainShowMusicListPickUp();
		
		System.out.println("메인에 보여질 음악영역 제공해요 목록 : "+ musicSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Board b : musicSupply) {
			JSONObject js = new JSONObject();
			//js.put("", value);
			
			jarr.add(js);
		}
		json.put("musicarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
	}
	
	/////////////////////////여기까지 음악영역화면//////////////////////////////
	
	@RequestMapping(value="rentalsample.go", method=RequestMethod.POST)
	public void CatchRentalData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//렌탈영역 서비스 제공해요	
		ArrayList<Board> rentSupply = (ArrayList<Board>) boardService.mainShowRentListPickUp();
		
		System.out.println("메인에 보여질 렌탈영역 제공해요 목록 : "+ rentSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Board b : rentSupply) {
			JSONObject js = new JSONObject();
			
			jarr.add(js);
		}
		json.put("rentarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();
		
	}
	
	/////////////////////////여기까지 렌탈영역화면//////////////////////////////
	
	@RequestMapping(value="travelsample.go", method=RequestMethod.POST)
	public void CatchTravelData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//여행영역 서비스 제공해요			
		ArrayList<Board> travelSupply = (ArrayList<Board>) boardService.mainShowTravelListPickUp();
		System.out.println("메인에 보여질 여행영역 제공해요 목록 : "+ travelSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Board b : travelSupply) {
			JSONObject js = new JSONObject();
			
			jarr.add(js);
		}
		json.put("travelarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();		
		
		
	}
	 
	/////////////////////////여기까지 여행영역화면//////////////////////////////	
	
	@RequestMapping(value="freesample.go", method=RequestMethod.POST)
	public void CatchFreeData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//프리랜서 서비스 제공해요
		ArrayList<Board> freeSupply = (ArrayList<Board>) boardService.mainShowFreeListPickUp();
		System.out.println("메인에 보여질 프리랜서영역 제공해요 목록 : "+ freeSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Board b : freeSupply) {
			JSONObject js = new JSONObject();
			
			jarr.add(js);
		}
		json.put("freearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();		
				
		
	}
	
	/////////////////////////여기까지 프리랜서영역화면//////////////////////////////
	
	@RequestMapping(value="requiresample.go", method=RequestMethod.POST)
	public void CatchRequireData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//구인영역 서비스 제공해요
		ArrayList<Board> requireSupply = (ArrayList<Board>) boardService.mainShowRequireListPickUp();
		System.out.println("메인에 보여질 여행영역 제공해요 목록 : "+ requireSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Board b : requireSupply) {
			JSONObject js = new JSONObject();
			
			jarr.add(js);
		}
		json.put("requirearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toString());
		out.flush();
		out.close();		
	}
	/////////////////////////여기까지 구인영역화면//////////////////////////////
}
