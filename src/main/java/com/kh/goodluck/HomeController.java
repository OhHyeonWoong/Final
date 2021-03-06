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
import com.kh.goodluck.outside_li.model.service.Outside_LifeService;
import com.kh.goodluck.outside_li.model.vo.Outside_Life;
import com.kh.goodluck.outside_m.model.service.Outside_MainService;
import com.kh.goodluck.outside_m.model.vo.Outside_Main;
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
	
	@Autowired
	private Outside_MainService outside_MainService;
	
	@Autowired
	private Outside_LifeService outside_LifeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	@RequestMapping(value="home.go")
	public ModelAndView home(ModelAndView mv) { 	//메인화면 이동용 메소드
		logger.info("HomeController Run");
		
		Outside_Main uk_m1 = outside_MainService.ukjaeBasicMainPageCarouseldata();
		Outside_Main uk_m2 = outside_MainService.ukjaeBasicMainPageYoutubedata();
		Outside_Life uk_li1 = outside_LifeService.ukjaeBasicLifePageCarouseldata();
		Outside_Life uk_li2 = outside_LifeService.ukjaeBasicLifePageRepresentdata();
		
		mv.addObject("ukjaemainCarousel", uk_m1);
		mv.addObject("ukjaemainYoutube", uk_m2);
		mv.addObject("ukjaelifeCarousel", uk_li1);
		mv.addObject("ukjaerepresentlifeimage", uk_li2);
		
		mv.setViewName("home");
		return mv;
	}		
		
	@RequestMapping("outsideInfo.go")
	public String outsideInformationShow() {
		
		return "A2.JUJ/OutSideInFormation";
	}
	//////////////////////////////////////////////////
	@RequestMapping(value="adminViewManagement.go",method=RequestMethod.GET)
	public ModelAndView managementpage(HttpServletRequest request,HttpServletRequest response,ModelAndView mv) {
		
		System.out.println("관리자 메인화면 변경페이지로 이동합니다. 그전에..");
		System.out.println("다른페이지의 화면을 체크합니다.");
		
		String life1 = request.getParameter("lifeCarouselImage");
		String life2 = request.getParameter("representlifeimage");
		
		Outside_Life life_object1 = outside_LifeService.ukjaeGetlifecontents(life1);
		Outside_Life life_object2 = outside_LifeService.ukjaeGetlifecontents(life2);
		
		mv.addObject("current_life_carousel", life_object1);
		mv.addObject("current_life_image", life_object2);
		mv.setViewName("A2.JUJ/AdaminViewManagement");
		
		return mv;
	}
	
	@RequestMapping("adminViewManagement_life.go") //생활View 관리영역으로 이동하는 메소드
	public ModelAndView managementpage2(HttpServletRequest request,HttpServletResponse response,ModelAndView mv) {
		
		String main1 = request.getParameter("mainCarouselImage");
		String main2 = request.getParameter("mainyoutube");
		
		Outside_Main m1 = outside_MainService.ukjaeCheckDataValue(main1);
		Outside_Main m2 = outside_MainService.ukjaeCheckDataValue(main2);
		
		mv.addObject("maincarousel", m1);
		mv.addObject("mainYoutube", m2);
		mv.setViewName("A2.JUJ/AdaminViewManagement_life");
		return mv;
	}
	//////////////////////////////////////////////////
	
	@RequestMapping(value="ukjaemainviewcontrol.go", method=RequestMethod.POST) 
	public ModelAndView ukjaeMaincontrol(@RequestParam("radio_carousel")String carouselcheck,@RequestParam("radio_youtube")String youtubecheck,HttpServletRequest request,HttpServletResponse response,ModelAndView mv) {
		String life1 = request.getParameter("life1");
		String life2 = request.getParameter("life2");
			
		//메인화면 카로셀/유투브영상 바꿔치기하기
		Outside_Main uk_m1 = outside_MainService.ukjaeCheckingCarousel(carouselcheck);
		Outside_Main uk_m2 = outside_MainService.ukjaeCheckingYoutube(youtubecheck);
		Outside_Life uk_li1 = outside_LifeService.ukjaeCheckingLifeCarousel(life1);
		Outside_Life uk_li2 = outside_LifeService.ukjaeCheckingLifePresentImage(life2);

		
		mv.addObject("ukjaemainCarousel", uk_m1);
		mv.addObject("ukjaemainYoutube", uk_m2);
		mv.addObject("ukjaelifeCarousel", uk_li1);
		mv.addObject("ukjaerepresentlifeimage", uk_li2);
		mv.setViewName("home");
		
		return mv;
	}
	
	@RequestMapping(value="ukjaemainviewcontrol_life.go", method=RequestMethod.POST)
	public ModelAndView ukjaeMaincontrol_life(@RequestParam("radio_carousel")String carouselcheck,@RequestParam("radio_representimage")String representimagecheck,HttpServletRequest request,HttpServletResponse response, ModelAndView mv) {
		//생활화면 카로셀/유투브영상 바꿔치기하기
		
		/*System.out.println("선택한 카로셀이미지 : "+carouselcheck);
		System.out.println("선택한 대표이미지 : "+representimagecheck);*/
		String carouselcheck_m = request.getParameter("main1");
		String youtubecheck = request.getParameter("main2");
		
		Outside_Life uk_li1 = outside_LifeService.ukjaeCheckingLifeCarousel(carouselcheck);
		Outside_Life uk_li2 = outside_LifeService.ukjaeCheckingLifePresentImage(representimagecheck);
		Outside_Main uk_m1 = outside_MainService.ukjaeCheckingCarousel(carouselcheck_m);
		Outside_Main uk_m2 = outside_MainService.ukjaeCheckingYoutube(youtubecheck);
		
		mv.addObject("ukjaemainCarousel", uk_m1);
		mv.addObject("ukjaemainYoutube", uk_m2);
		mv.addObject("ukjaelifeCarousel", uk_li1);
		mv.addObject("ukjaerepresentlifeimage", uk_li2);
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(value="noticetop5.go", method=RequestMethod.GET)
	public void CatchNoticeData(HttpServletRequest request , HttpServletResponse response) throws IOException {
		//System.out.println("notice Top5 Ajax실행 준비..");
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

	@RequestMapping(value="lifeareamainsample.go", method=RequestMethod.GET)
	public void CatchLifeData(HttpServletRequest request , HttpServletResponse response) throws IOException{
	
		ArrayList<Board> lifesupply = (ArrayList<Board>) boardService.mainShowLifeListPickUp();		
		
		//System.out.println("메인에 보여질 생활영역 제공해요 목록 : "+lifesupply.toString());
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		for(int i=0; i<lifesupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", lifesupply.get(i).getAgency_no());
			js.put("agency_writer", lifesupply.get(i).getAgency_writer());
			js.put("agency_title", lifesupply.get(i).getAgency_title());
			js.put("link2_no", lifesupply.get(i).getLink2_no());
			js.put("agency_type", lifesupply.get(i).getAgency_type());
			js.put("agency_loc", lifesupply.get(i).getAgency_loc());
			js.put("agency_startdate", lifesupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", lifesupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", lifesupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", lifesupply.get(i).getAgency_paytype());
			js.put("agency_pay", lifesupply.get(i).getAgency_pay());	
			js.put("agency_status", lifesupply.get(i).getAgency_status());
			js.put("agency_content", lifesupply.get(i).getAgency_content());
			js.put("agency_veiws", lifesupply.get(i).getAgency_views());
			js.put("agency_keyword", lifesupply.get(i).getAgency_keyword());
			js.put("agency_option", lifesupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("lifearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();

	}  
	
	/////////////////////////여기까지 생활영역화면//////////////////////////////
	
	@RequestMapping(value="petareasample.go", method=RequestMethod.GET)
	public void CatchPetData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//반려동물 서비스 제공해요
		ArrayList<Board> petSupply =  (ArrayList<Board>) boardService.mainShowPetListPickUp();
		
		//System.out.println("메인에 보여질 반려동물영역 제공해요 목록 : "+ petSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		  
		for(int i=0; i<petSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", petSupply.get(i).getAgency_no());
			js.put("agency_writer", petSupply.get(i).getAgency_writer());
			js.put("agency_title", petSupply.get(i).getAgency_title());
			js.put("link2_no", petSupply.get(i).getLink2_no());
			js.put("agency_type", petSupply.get(i).getAgency_type());
			js.put("agency_loc", petSupply.get(i).getAgency_loc());
			js.put("agency_startdate", petSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", petSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", petSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", petSupply.get(i).getAgency_paytype());
			js.put("agency_pay", petSupply.get(i).getAgency_pay());	
			js.put("agency_status", petSupply.get(i).getAgency_status());
			js.put("agency_content", petSupply.get(i).getAgency_content());
			js.put("agency_veiws", petSupply.get(i).getAgency_views());
			js.put("agency_keyword", petSupply.get(i).getAgency_keyword());
			js.put("agency_option", petSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("petarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
	}
	
	////////////////////////여기까지 반려동물화면//////////////////////////////
	
	@RequestMapping(value="gameareasample.go", method=RequestMethod.GET)
	public void CatchGameData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		 //게임영역 서비스 제공해요	
		 ArrayList<Board> gameSupply = (ArrayList<Board>) boardService.mainShowGameListPickUp();
		 
		//System.out.println("메인에 보여질 게임영역 제공해요 목록 : "+ gameSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		  
		for(int i=0; i<gameSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", gameSupply.get(i).getAgency_no());
			js.put("agency_writer", gameSupply.get(i).getAgency_writer());
			js.put("agency_title", gameSupply.get(i).getAgency_title());
			js.put("link2_no", gameSupply.get(i).getLink2_no());
			js.put("agency_type", gameSupply.get(i).getAgency_type());
			js.put("agency_loc", gameSupply.get(i).getAgency_loc());
			js.put("agency_startdate", gameSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", gameSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", gameSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", gameSupply.get(i).getAgency_paytype());
			js.put("agency_pay", gameSupply.get(i).getAgency_pay());	
			js.put("agency_status", gameSupply.get(i).getAgency_status());
			js.put("agency_content", gameSupply.get(i).getAgency_content());
			js.put("agency_veiws", gameSupply.get(i).getAgency_views());
			js.put("agency_keyword", gameSupply.get(i).getAgency_keyword());
			js.put("agency_option", gameSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("gamearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
		
	}
	
	/////////////////////////여기까지 게임영역화면//////////////////////////////
	
	@RequestMapping(value="musicsample.go", method=RequestMethod.GET)
	public void CatchMusicData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//음악영역 서비스 제공해요	(DATA5)	
		ArrayList<Board> musicSupply = (ArrayList<Board>) boardService.mainShowMusicListPickUp();		
		//System.out.println("메인에 보여질 음악영역 제공해요 목록 : "+ musicSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<musicSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", musicSupply.get(i).getAgency_no());
			js.put("agency_writer", musicSupply.get(i).getAgency_writer());
			js.put("agency_title", musicSupply.get(i).getAgency_title());
			js.put("link2_no", musicSupply.get(i).getLink2_no());
			js.put("agency_type", musicSupply.get(i).getAgency_type());
			js.put("agency_loc", musicSupply.get(i).getAgency_loc());
			js.put("agency_startdate", musicSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", musicSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", musicSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", musicSupply.get(i).getAgency_paytype());
			js.put("agency_pay", musicSupply.get(i).getAgency_pay());	
			js.put("agency_status", musicSupply.get(i).getAgency_status());
			js.put("agency_content", musicSupply.get(i).getAgency_content());
			js.put("agency_veiws", musicSupply.get(i).getAgency_views());
			js.put("agency_keyword", musicSupply.get(i).getAgency_keyword());
			js.put("agency_option", musicSupply.get(i).getAgency_option());
			jarr.add(js);
		}

		json.put("musicarea_mainshowlist1", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	@RequestMapping(value="musicsample2.go", method=RequestMethod.GET)
	public void CatchMusicData2(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//음악영역 서비스 제공해요2	(DATA4)
		ArrayList<Board> musicSupply2 = (ArrayList<Board>) boardService.mainShowMusicListPickUp2();
		//System.out.println("메인에 보여질 음악영역 제공해요 목록 : "+ musicSupply2.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<musicSupply2.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", musicSupply2.get(i).getAgency_no());
			js.put("agency_writer", musicSupply2.get(i).getAgency_writer());
			js.put("agency_title", musicSupply2.get(i).getAgency_title());
			js.put("link2_no", musicSupply2.get(i).getLink2_no());
			js.put("agency_type", musicSupply2.get(i).getAgency_type());
			js.put("agency_loc", musicSupply2.get(i).getAgency_loc());
			js.put("agency_startdate", musicSupply2.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", musicSupply2.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", musicSupply2.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", musicSupply2.get(i).getAgency_paytype());
			js.put("agency_pay", musicSupply2.get(i).getAgency_pay());	
			js.put("agency_status", musicSupply2.get(i).getAgency_status());
			js.put("agency_content", musicSupply2.get(i).getAgency_content());
			js.put("agency_veiws", musicSupply2.get(i).getAgency_views());
			js.put("agency_keyword", musicSupply2.get(i).getAgency_keyword());
			js.put("agency_option", musicSupply2.get(i).getAgency_option());
			jarr.add(js);
		}	
		
		json.put("musicarea_mainshowlist2", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	
	
	/////////////////////////여기까지 음악영역화면//////////////////////////////
	
	@RequestMapping(value="rentalsample.go", method=RequestMethod.GET)
	public void CatchRentalData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//렌탈영역 서비스 제공해요	
		ArrayList<Board> rentSupply = (ArrayList<Board>) boardService.mainShowRentListPickUp();
		
		//System.out.println("메인에 보여질 렌탈영역 제공해요 목록 : "+ rentSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<rentSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", rentSupply.get(i).getAgency_no());
			js.put("agency_writer", rentSupply.get(i).getAgency_writer());
			js.put("agency_title", rentSupply.get(i).getAgency_title());
			js.put("link2_no", rentSupply.get(i).getLink2_no());
			js.put("agency_type", rentSupply.get(i).getAgency_type());
			js.put("agency_loc", rentSupply.get(i).getAgency_loc());
			js.put("agency_startdate", rentSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", rentSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", rentSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", rentSupply.get(i).getAgency_paytype());
			js.put("agency_pay", rentSupply.get(i).getAgency_pay());	
			js.put("agency_status", rentSupply.get(i).getAgency_status());
			js.put("agency_content", rentSupply.get(i).getAgency_content());
			js.put("agency_veiws", rentSupply.get(i).getAgency_views());
			js.put("agency_keyword", rentSupply.get(i).getAgency_keyword());
			js.put("agency_option", rentSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("rentarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	/////////////////////////여기까지 렌탈영역화면//////////////////////////////
	
	@RequestMapping(value="travelsample.go", method=RequestMethod.GET)
	public void CatchTravelData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//여행영역 서비스 제공해요			
		ArrayList<Board> travelSupply = (ArrayList<Board>) boardService.mainShowTravelListPickUp();
		//System.out.println("메인에 보여질 여행영역 제공해요 목록 : "+ travelSupply.toString());

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<travelSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", travelSupply.get(i).getAgency_no());
			js.put("agency_writer", travelSupply.get(i).getAgency_writer());
			js.put("agency_title", travelSupply.get(i).getAgency_title());
			js.put("link2_no", travelSupply.get(i).getLink2_no());
			js.put("agency_type", travelSupply.get(i).getAgency_type());
			js.put("agency_loc", travelSupply.get(i).getAgency_loc());
			js.put("agency_startdate", travelSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", travelSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", travelSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", travelSupply.get(i).getAgency_paytype());
			js.put("agency_pay", travelSupply.get(i).getAgency_pay());	
			js.put("agency_status", travelSupply.get(i).getAgency_status());
			js.put("agency_content", travelSupply.get(i).getAgency_content());
			js.put("agency_veiws", travelSupply.get(i).getAgency_views());
			js.put("agency_keyword", travelSupply.get(i).getAgency_keyword());
			js.put("agency_option", travelSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("travelarea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();	
	}
	 
	/////////////////////////여기까지 여행영역화면//////////////////////////////	
	
	@RequestMapping(value="freesample.go", method=RequestMethod.GET)
	public void CatchFreeData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//프리랜서 서비스 제공해요
		ArrayList<Board> freeSupply = (ArrayList<Board>) boardService.mainShowFreeListPickUp();
		//System.out.println("메인에 보여질 프리랜서영역 제공해요 목록 : "+ freeSupply.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<freeSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", freeSupply.get(i).getAgency_no());
			js.put("agency_writer", freeSupply.get(i).getAgency_writer());
			js.put("agency_title", freeSupply.get(i).getAgency_title());
			js.put("link2_no", freeSupply.get(i).getLink2_no());
			js.put("agency_type", freeSupply.get(i).getAgency_type());
			js.put("agency_loc", freeSupply.get(i).getAgency_loc());
			js.put("agency_startdate", freeSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", freeSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", freeSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", freeSupply.get(i).getAgency_paytype());
			js.put("agency_pay", freeSupply.get(i).getAgency_pay());	
			js.put("agency_status", freeSupply.get(i).getAgency_status());
			js.put("agency_content", freeSupply.get(i).getAgency_content());
			js.put("agency_veiws", freeSupply.get(i).getAgency_views());
			js.put("agency_keyword", freeSupply.get(i).getAgency_keyword());
			js.put("agency_option", freeSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		
		json.put("freearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();	
	} 
	
	/////////////////////////여기까지 프리랜서영역화면//////////////////////////////
	
	@RequestMapping(value="requiresample.go", method=RequestMethod.GET)
	public void CatchRequireData(HttpServletRequest request , HttpServletResponse response) throws IOException{
		
		//구인영역 서비스 제공해요
		ArrayList<Board> requireSupply = (ArrayList<Board>) boardService.mainShowRequireListPickUp();
		//System.out.println("메인에 보여질 구인영역 제공해요 목록 : "+ requireSupply.toString());


		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<requireSupply.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("agency_no", requireSupply.get(i).getAgency_no());
			js.put("agency_writer", requireSupply.get(i).getAgency_writer());
			js.put("agency_title", requireSupply.get(i).getAgency_title());
			js.put("link2_no", requireSupply.get(i).getLink2_no());
			js.put("agency_type", requireSupply.get(i).getAgency_type());
			js.put("agency_loc", requireSupply.get(i).getAgency_loc());
			js.put("agency_startdate", requireSupply.get(i).getAgency_startdate().toString());
			js.put("agency_enddate", requireSupply.get(i).getAgency_enddate().toString());
			js.put("agency_enrolldate", requireSupply.get(i).getAgency_enrolldate().toString());
			js.put("agency_paytype", requireSupply.get(i).getAgency_paytype());
			js.put("agency_pay", requireSupply.get(i).getAgency_pay());	
			js.put("agency_status", requireSupply.get(i).getAgency_status());
			js.put("agency_content", requireSupply.get(i).getAgency_content());
			js.put("agency_veiws", requireSupply.get(i).getAgency_views());
			js.put("agency_keyword", requireSupply.get(i).getAgency_keyword());
			js.put("agency_option", requireSupply.get(i).getAgency_option());
			jarr.add(js);
		}
		json.put("requirearea_mainshowlist", jarr);
		response.setContentType("application/json; charset=utf-8"); 
		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();		
	}
	/////////////////////////여기까지 구인영역화면//////////////////////////////
}
