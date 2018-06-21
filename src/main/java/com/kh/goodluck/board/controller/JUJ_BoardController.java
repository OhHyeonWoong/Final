package com.kh.goodluck.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.TitlePaneLayout;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.MyPageApplyBoard;
import com.kh.goodluck.board.model.vo.MyPageBoard;
import com.kh.goodluck.board.model.vo.MyPageBoardHistory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.category.model.service.CategoryService;
import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.item.model.vo.UsingItem;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.report.model.service.ReportService;
import com.kh.goodluck.report.model.vo.Report;

@Controller
public class JUJ_BoardController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	ItemService ItemService;
	
	@Autowired
	QNAService qnaService;
	
	@Autowired
	ReportService reportService;
	
	@Autowired
	MemberService memberService;
	
	public JUJ_BoardController() { //기본생성자 선언
		// TODO Auto-generated constructor stub
	}
	
	
	

	@RequestMapping("Notice2.go")  //욱재작업 - 나의 거래중 테이블View로 이동
	public String notice2(HttpServletRequest request,HttpServletResponse response) {
		return "A2.JUJ/Dealing";	
	}
	
	
	@RequestMapping("ukjaeServiceForm.go") //서비스 글 작성 페이지로 이동하는메소드
	public void ServiceForm(@RequestParam("memberid")String memberid,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String userWriteCount = request.getParameter("write_count");
			
		int parsingCount = Integer.parseInt(userWriteCount);
		System.out.println("파싱된 유저의 글쓰기 유효카운트 : "+parsingCount);
		
		//욱재작업 = 현재 유저의 등록된 글의 갯수를 빼오는 메소드(member테이블의 member_write_count)와 비교함.
		int boardWritingCount = boardService.ukjaeCheckUserWritingCount(memberid);
		
		PrintWriter out = response.getWriter();
		
		if(boardWritingCount>=parsingCount) {
			out.append("0");		
		}else if(boardWritingCount<parsingCount) {
			out.append("1");
		/*ArrayList<UsingItem> userItem = (ArrayList<UsingItem>) ItemService.getUsingItem(memberid); 
		//System.out.println("member가 보유한 유효 기간제 아이템 : "+userItem.toString());	
		mv.addObject("userGiveItem", userItem);
		mv.setViewName("A2.JUJ/UkjaeServiceForm");*/
		}
			out.flush();
			out.close();
	}  
	
	@RequestMapping("ukjaeServiceForm2.go") //서비스 글 작성 페이지로 이동하는메소드
	public ModelAndView ServiceForm(@RequestParam("memberid")String memberid,HttpServletRequest request,HttpServletResponse response,ModelAndView mv) throws IOException {
		
		ArrayList<UsingItem> userItem = (ArrayList<UsingItem>) ItemService.getUsingItem(memberid); 
		System.out.println("member가 보유한 유효 기간제 아이템 : "+userItem.toString());	
		mv.addObject("userGiveItem", userItem);
		mv.setViewName("A2.JUJ/UkjaeServiceForm");
		return mv;
	}
	
	@RequestMapping("ukjae_serviceStatus_alter.go")
	public void ukjaeWritingDel(@RequestParam("data_no")String writing_no, HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		int parsing_no = Integer.parseInt(writing_no);
		
		int result = boardService.ukjaeDeleteService(parsing_no);

		System.out.println(result+"개의 서비스글이 변경되었습니다.");
		
		PrintWriter out = response.getWriter();
		out.append("게시글의 상태를 숨김으로 변경하였습니다.");
		out.flush();
		out.close();
	}  
	
	
	
	@RequestMapping("wookServiceAlter.go")
	public ModelAndView ukjaeServicePageAlter(@RequestParam("member_id") String member_id,HttpServletRequest request,ModelAndView mv) {

		String agency_no = request.getParameter("agency_no");
		int Parsing_agency_no = Integer.parseInt(agency_no);
		Board alterready = boardService.ukjaegetServiceWriting(Parsing_agency_no);	
		
		ArrayList<UsingItem> userItem = (ArrayList<UsingItem>) ItemService.getUsingItem(member_id); 
		
		
		System.out.println("member가 보유한 유효 기간제 아이템 : "+userItem.toString());
		mv.addObject("userGiveItem", userItem);	
		mv.addObject("ServiceContents", alterready);	
		mv.setViewName("A2.JUJ/UkjaeServiceAlterForm");
		return mv;
	}
	
	

	@RequestMapping(value="wookServiceAdd.go",method=RequestMethod.POST) //글등록(서비스 제공해요)
	public String ukjaeServiceappend(@RequestParam("servicetitle") String serivcetitle,@RequestParam("loginUserId") String loginUser,@RequestParam("selectCate") String smallcategory
			,@RequestParam("ukwritetype")String userwriteingType,@RequestParam("selectserviceArea") String ServiceArea,@RequestParam("startDate") String startDateString,@RequestParam("endDate") String endDateString,@RequestParam("servicePaytype") String paytype,@RequestParam("userinputPayamount") String payAmount,@RequestParam("writeContents") String serviceContents,HttpServletRequest request,HttpServletResponse response) throws ParseException {
		
		
		/*System.out.println("WirteCount -1");
		int minususerwriteCount = memberService.ukjaeWriteCountOneMinus(loginUser);*/
		
		System.out.println("폼으로부터 입력 받은데이터 전부출력");
		System.out.println("===================================================");
		 
		System.out.println("글번호 : 쿼리문으로 등록");
		System.out.println("글작성자 : "+loginUser);
		
		System.out.println("입력한 제목? "+serivcetitle);
		
		System.out.println("유저가 선택한 소 카테고리? "+smallcategory);
		CategoryLink2 link2 = boardService.pickupSmallCategory(smallcategory); 
		/*int link2_no=Integer.parseInt(link2.getLink2_no());	*/	
		String link2_no = link2.getLink2_no();
		System.out.println("선택된 소 카테고리 번호 "+link2_no);
		
		int agency_type = Integer.parseInt(userwriteingType); 
		//agency_type 1.구해요 2.제공해요
		System.out.println("Agency_type : "+agency_type);
		System.out.println("선택한 서비스 제공지역 : "+ServiceArea);
		
		/*
		미비된 것
		AGENCY_STARTDATE String->Date형으로 형변환
		AGENCY_ENDDATE	 String->Date형으로 형변환
		*/
		/*SimpleDateFormat transFormat = new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");*/
		SimpleDateFormat transFormat = new  SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date toStart = new java.sql.Date(transFormat.parse(startDateString).getTime()); //java.util.Date
		java.sql.Date toEnd = new java.sql.Date(transFormat.parse(endDateString).getTime());

		//yyyy년-mm월-dd일
		    
		System.out.println("서비스 시작날짜 : "+toStart);
		System.out.println("서비스 종료날짜 : "+toEnd);

		
		System.out.println("서비스글 등록일 : sysdate(insert문에서 해결)");
		
		int parseingpaytype = Integer.parseInt(paytype);
		System.out.println("선택한 급여제공 타입 : "+parseingpaytype);
		
		
		int parsepayamount = Integer.parseInt(payAmount);	
		System.out.println("입력한 희망급여 : "+parsepayamount);
		int uk_userCash = memberService.ukjaeuserCashMinusCheck(loginUser);
		int uk_userCashUpdate = uk_userCash-parsepayamount;
		
		Member updatemember = new Member(loginUser, uk_userCashUpdate);
		
		int updateCash = memberService.ukjaeuserCashMinus(updatemember);
		//유저의 캐쉬를 차감시키는 메소드 (인자값 member_id / 입력한 금액)

		
		int agency_status = 1;
		System.out.println("거래상태 : "+agency_status);
		//1: 정상 / 2:거래중(예약가능)/3:거래중(예약불가)/4:숨김
		
		System.out.println("입력한 서비스제공내용 : "+serviceContents);
	
		int agency_views = 0; //Default 0 조회수0부터시작
		System.out.println("해당 게시글 조회수 : "+agency_views);
		
		
		/*AGENCY_KEYWORD 키워드 ,로 구분하며 모든 키워드가 일루 들어감.
		키워드는 조인으로 하여라
		
		AGENCY_OPTION 캐시로 구매한 아이템을 적용하는지.*/
		String keywords[] = request.getParameterValues("keywordinput");
		StringBuilder sb = new StringBuilder();
		for(int i=0; i<keywords.length; i++) {
			if(i<keywords.length-1) {
				sb.append(keywords[i]+", ");
			}else {
				sb.append(keywords[i]);
			}
			sb.toString();
		}

		/*아이템 순서 
		 색상 , 크기 , 굵기 , 프리미엄 
		*/
		
		//들어갈 수 있는 값.
		String title_color  = request.getParameter("title_color"); //DATA값 red, blue, green, yellow, pink, orange
		String title_size  = request.getParameter("title_size"); //DATA값 size='4', size='5', size='6'
		String title_bold  = request.getParameter("title_bold"); //DATA값 (적용안함0, 적용함1)
		String title_premium  = request.getParameter("title_premium"); //DATA값 (적용안함0 적용함1)

		if(title_color==null) { //값이 Null일때는 공백으로 Null값이 아닌 공백으로 셋팅하여 들어간다.
			title_color="";
		}
		if(title_size==null) {
			title_size="";
		}
		if(title_bold==null) {
			title_bold="";
		}
		if(title_premium==null) {
			title_premium="";
		}
		
		
		
		StringBuilder sbl = new StringBuilder();
		sbl.append(title_color+", ");
		sbl.append(title_size+", ");
		sbl.append(title_bold+", ");
		sbl.append(title_premium);
		sbl.toString();
		
		
		
		Board inputBoard = new Board(loginUser, serivcetitle, link2_no, agency_type, ServiceArea, toStart, toEnd, parseingpaytype, parsepayamount, serviceContents, sb.toString(), sbl.toString());
		
		int ServiceRegist = boardService.serviceSupplyRegist(inputBoard);
		//1.제공해요 새로운 글 등록하는 메소드 
		int AgencyBoardNo = boardService.checkBoardNo(inputBoard);
		
		
		System.out.println("새로등록된 게시판 번호 : "+AgencyBoardNo);
		//2.등록된 글의 pk를 가져오는 메소드	
		
		inputBoard.setAgency_no(AgencyBoardNo);
	
		int tradeDetailinput = boardService.registTrade(inputBoard);
		if(tradeDetailinput>0) 
			System.out.println("대행 게시판 글 등록에 성공하였습니다.");
		
		
		return "A4.BSH/Board";
		
	}
	
	@RequestMapping(value="wookServiceAlterConfirm.go",method=RequestMethod.POST) //글등록(서비스 제공해요)
	public ModelAndView ukjaeServiceContentsAlter(@RequestParam("servicetitle")String serivcetitle,@RequestParam("loginUserId")String member_id,@RequestParam("selectCate")String smallcategory
			,@RequestParam("ukwritetype")String userwriteingType,@RequestParam("selectserviceArea")String ServiceArea,@RequestParam("startDate")String startDateString,@RequestParam("endDate")String endDateString,@RequestParam("servicePaytype")String paytype,@RequestParam("userinputPayamount")String payAmount,@RequestParam("writeContents")String serviceContents,HttpServletRequest request,HttpServletResponse response,ModelAndView mv) throws ParseException {

		String writing_No = request.getParameter("servicewriting_no");
		int writing_No_parsing = Integer.parseInt(writing_No);
		
		System.out.println("폼으로부터 입력받은 수정데이터 전부출력");
		System.out.println("===================================================");
		
		System.out.println("글번호 : "+writing_No_parsing);
		System.out.println("글작성자 : "+member_id);
		
		System.out.println("입력한 제목? "+serivcetitle);
		
		System.out.println("유저가 선택한 소 카테고리? "+smallcategory);
		CategoryLink2 link2 = boardService.pickupSmallCategory(smallcategory); //AAB 97
		/*int link2_no=Integer.parseInt(link2.getLink2_no());	*/	
		String link2_no = link2.getLink2_no();
		System.out.println("선택된 소 카테고리 번호 "+link2_no);
		 
		int agency_type = Integer.parseInt(userwriteingType); 
		//agency_type 1.구해요 2.제공해요
		System.out.println("선택한 서비스 제공지역 : "+ServiceArea);
		
		/*  
		미비된 것
		AGENCY_STARTDATE String->Date형으로 형변환
		AGENCY_ENDDATE	 String->Date형으로 형변환
		 */
		/*SimpleDateFormat transFormat = new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");*/
		SimpleDateFormat transFormat = new  SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date toStart = new java.sql.Date(transFormat.parse(startDateString).getTime()); //java.util.Date
		java.sql.Date toEnd = new java.sql.Date(transFormat.parse(endDateString).getTime());
		
		//yyyy년-mm월-dd일
		
		System.out.println("서비스 시작날짜 : "+toStart);
		System.out.println("서비스 종료날짜 : "+toEnd);
		
		
		System.out.println("서비스글 등록일 : sysdate(insert문에서 해결)");
		
		int parseingpaytype = Integer.parseInt(paytype);
		System.out.println("선택한 급여제공 타입 : "+parseingpaytype);
		//급여제공타입 1구해요 2제공해요
		
		int parsepayamount = Integer.parseInt(payAmount);	
		System.out.println("입력한 희망급여 : "+parsepayamount);
		
		int agency_status = 1;
		System.out.println("거래상태 : "+agency_status);
		//1: 정상 / 2:거래중(예약가능)/3:거래중(예약불가)/4:숨김
		
		System.out.println("입력한 서비스제공내용 : "+serviceContents);
		
		int agency_views = 0; //Default 0 조회수0부터시작
		System.out.println("해당 게시글 조회수 : "+agency_views);
		
		
		/*AGENCY_KEYWORD 키워드 ,로 구분하며 모든 키워드가 일루 들어감.
		키워드는 조인으로 하여라
		
		AGENCY_OPTION 캐시로 구매한 아이템을 적용하는지.*/
		String keywords[] = request.getParameterValues("keywordinput");
		StringBuilder sb = new StringBuilder();
		for(int i=0; i<keywords.length; i++) {
			if(i<keywords.length-1) {
				sb.append(keywords[i]+", ");
			}else {
				sb.append(keywords[i]);
			}
			sb.toString();
		}		
		System.out.println("해당글 키워드 : "+sb.toString());
		
		/*아이템 순서 
		 1.색상 2.크기 3.굵기  4.프리미엄 
		 */
		
		//들어갈 수 있는 값.
		String title_color  = request.getParameter("title_color"); //red, blue, green, yellow, pink, orange
		String title_size  = request.getParameter("title_size"); // size='4', size='5', size='6'
		String title_bold  = request.getParameter("title_bold"); // (적용안함0, 적용함1)
		String title_premium  = request.getParameter("title_premium"); // (적용안함0 적용함1)
		
		if(title_color==null) { //값이 Null일때는 공백으로 Null값이 아닌 공백으로 셋팅하여 들어간다.
			title_color="";
		}
		if(title_size==null) {
			title_size="";
		}
		if(title_bold==null) {
			title_bold="";
		}
		if(title_premium==null) {
			title_premium="";
		}
		
		StringBuilder sbl = new StringBuilder();
		sbl.append(title_color+", ");
		sbl.append(title_size+", ");
		sbl.append(title_bold+", ");
		sbl.append(title_premium);
		sbl.toString();
		
		//System.out.println("해당글 적용아이템 : "+sbl.toString());
		
		
		Board alterBoard = new Board(writing_No_parsing,member_id, serivcetitle, link2_no, agency_type, ServiceArea, toStart, toEnd, parseingpaytype, parsepayamount, serviceContents, sb.toString(), sbl.toString());
		
		int ServiceAlter = boardService.writingPage_Update(alterBoard);
		System.out.println("수정이 완료되었습니다.");
		
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
		int qnaCurrentPage = 1;
		if(request.getParameter("page") != null) {
			qnaCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int qnaLimit = 6;
		//QnA------------------------------------------------------------
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int qnaListCount = qnaService.selectMyQnaCount(member_id);
		int qnaMaxPage = (int)((double)qnaListCount / qnaLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int qnaStartPage = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 1;
		int qnaStartRow = (qnaCurrentPage-1)*qnaLimit+1; 
	    int qnaEndRow = qnaStartRow + qnaLimit - 1;
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", qnaEndRow);
	    map.put("member_id", member_id);
		ArrayList<QNA> myQna = (ArrayList<QNA>)qnaService.selectMyQna(map);
		
		System.out.println("myQna.size = " + myQna.size());
		
		if (qnaMaxPage < qnaEndRow)
			qnaEndRow = qnaMaxPage;
		
		////qna 처리용 오브젝트
		//6,12,18,24
		int endFor = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 6;
		/*if(qnaCurrentPage < 7) {
			endFor = 6;
		}else if(qnaCurrentPage >= 7 && qnaCurrentPage <= 12){
			endFor = 12;
		}*/
		//보내기용 arraylist생성
		HashMap<String,Integer> qnaPage = new HashMap<String,Integer>();
		qnaPage.put("qnaMaxPage",qnaMaxPage);
		qnaPage.put("qnaStartPage",qnaStartPage);
		qnaPage.put("qnaEndRow",qnaEndRow);
		qnaPage.put("qnaCurrentPage",qnaCurrentPage);
		qnaPage.put("qnaListCount",qnaListCount);
		qnaPage.put("endFor", endFor);
		
		mv.addObject("lbjMyQna", myQna);
		mv.addObject("qnaPage",qnaPage);
		//QnA 세팅 끝------------------------------------------------------------
		
		//item 세팅 ------------------------------------------------------------
		int itemListCount = ItemService.selectMyPageItemListCount(member_id);
		int itemMaxPage = (int)((double)itemListCount / qnaLimit + 0.9);
		int itemEndRow = qnaStartRow + qnaLimit - 1;
		
		HashMap<Object,Object> map1 = new HashMap<Object,Object>();
	    map1.put("startRow", qnaStartRow);
	    map1.put("endRow", itemEndRow);
	    map1.put("member_id", member_id);
	    ArrayList<MyPageItem> myItem = (ArrayList<MyPageItem>)ItemService.selectMyPageItem(map1);
	    
	    System.out.println("myItem size = " + myItem.size());
		
		if (itemMaxPage < itemEndRow)
			itemEndRow = itemMaxPage;
		
		HashMap<String,Integer> itemPage = new HashMap<String,Integer>();
		itemPage.put("itemMaxPage",itemMaxPage);
		itemPage.put("itemEndRow",itemEndRow);
		itemPage.put("itemListCount",itemListCount);
		
		System.out.println("itemEndRow = " + itemEndRow);
		System.out.println("itemListCount = " + itemListCount);
		
		mv.addObject("lbjMyItem", myItem);
		mv.addObject("itemPage",itemPage);
		//item 세팅 끝-----------------------------------------------------------
		//Report 세팅 ----------------------------------------------------------
		int reportListCount = reportService.selectMyPageReportListCount(member_id);
		int reportMaxPage = (int)((double)reportListCount / qnaLimit + 0.9);
		int reportEndRow = qnaStartRow + qnaLimit - 1;
		
		System.out.println("myReortListCount = " + reportListCount);
		
		HashMap<Object,Object> map2 = new HashMap<Object,Object>();
	    map2.put("startRow", qnaStartRow);
	    map2.put("endRow", reportEndRow);
	    map2.put("member_id", member_id);
	    ArrayList<Report> myReport = (ArrayList<Report>)reportService.selectMyPageReport(map2);
	    
	    System.out.println("myReport size = " + myReport.size());
		
	    if (reportMaxPage < reportEndRow)
			reportEndRow = reportMaxPage;
		
	    HashMap<String,Integer> reportPage = new HashMap<String,Integer>();
		reportPage.put("reportMaxPage",reportMaxPage);
		reportPage.put("reportEndRow",reportEndRow);
		reportPage.put("reportListCount",reportListCount);
		
		mv.addObject("lbjMyReport", myReport);
		mv.addObject("reportPage",reportPage);
		//Report 세팅 끝
		//내가 올린 글 세팅 ----------------------------------------------------------
		int myBoardListCount = boardService.selectMyBoardListCount(member_id);
		int myBoardMaxPage = (int)((double)myBoardListCount / qnaLimit + 0.9);
		int myBoardEndRow = qnaStartRow + qnaLimit - 1;		
		
		System.out.println("myBoardListCount = " + myBoardListCount);
		
		HashMap<Object,Object> map3 = new HashMap<Object,Object>();
	    map3.put("startRow", qnaStartRow);
	    map3.put("endRow", myBoardEndRow);
	    map3.put("member_id", member_id);
	    ArrayList<MyPageBoard> myBoard = (ArrayList<MyPageBoard>)boardService.selectMyBoard(map3);
	    
	    System.out.println("myBoard size = " + myBoard.size());
		
	    if (myBoardMaxPage < myBoardEndRow)
			myBoardEndRow = myBoardMaxPage;
		
	    HashMap<String,Integer> boardPage = new HashMap<String,Integer>();
		boardPage.put("myBoardMaxPage",myBoardMaxPage);
		boardPage.put("myBoardEndRow",myBoardEndRow);
		boardPage.put("myBoardListCount",myBoardListCount);
		
		mv.addObject("lbjMyBoard", myBoard);
		mv.addObject("boardPage",boardPage);
		//내가 올린 글 세팅 끝--------------------------------------------------------
		//내가 신청한 글 세팅 시작-----------------------------------------------------
		int myApplyBoardListCount = boardService.selectMyApplyBoardListCount(member_id);
		int myApplyBoardMaxPage = (int)((double)myApplyBoardListCount / qnaLimit + 0.9);
		int myApplyBoardEndRow = qnaStartRow + qnaLimit - 1;		
		
		System.out.println("myApplyBoardListCount = " + myApplyBoardListCount);
		
		HashMap<Object,Object> map4 = new HashMap<Object,Object>();
	    map4.put("startRow", qnaStartRow);
	    map4.put("endRow", myApplyBoardEndRow);
	    map4.put("member_id", member_id);
	    ArrayList<MyPageApplyBoard> myApplyBoard = (ArrayList<MyPageApplyBoard>)boardService.selectMyApplyBoard(map4);
	    
	    System.out.println("myApplyBoard size = " + myApplyBoard.size());
		
	    if (myApplyBoardMaxPage < myApplyBoardEndRow)
			myApplyBoardEndRow = myApplyBoardMaxPage;
		
	    HashMap<String,Integer> applyBoardPage = new HashMap<String,Integer>();
		applyBoardPage.put("myApplyBoardMaxPage",myApplyBoardMaxPage);
		applyBoardPage.put("myApplyBoardEndRow",myApplyBoardEndRow);
		applyBoardPage.put("myApplyBoardListCount",myApplyBoardListCount);
		
		mv.addObject("lbjMyApplyBoard", myApplyBoard);
		mv.addObject("applyBoardPage",applyBoardPage);
		//내가 신청한 글 세팅 끝------------------------------------------------------
		//내가 이용한 History 세팅 시작----------------------------------------------
		int myBoardHistoryListCount = boardService.selectMyBoardHistoryListCount(member_id);
		int myBoardHistoryMaxPage = (int)((double)myBoardHistoryListCount / qnaLimit + 0.9);
		int myBoardHistoryEndRow = qnaStartRow + qnaLimit - 1;		
		
		System.out.println("myBoardHistoryListCount = " + myBoardHistoryListCount);
		
		HashMap<Object,Object> map5 = new HashMap<Object,Object>();
	    map5.put("startRow", qnaStartRow);
	    map5.put("endRow", myBoardHistoryEndRow);
	    map5.put("member_id", member_id);
	    ArrayList<MyPageBoardHistory> myBoardHistory = (ArrayList<MyPageBoardHistory>)boardService.selectMyBoardHistory(map5);
	    
	    System.out.println("myBoardHistory size = " + myBoardHistory.size());
		
	    if (myBoardHistoryMaxPage < myBoardHistoryEndRow)
	    	myBoardHistoryEndRow = myBoardHistoryMaxPage;
		
	    HashMap<String,Integer> boardHistoryPage = new HashMap<String,Integer>();
	    boardHistoryPage.put("myBoardHistoryMaxPage",myBoardHistoryMaxPage);
	    boardHistoryPage.put("myBoardHistoryEndRow",myBoardHistoryEndRow);
	    boardHistoryPage.put("myBoardHistoryListCount",myBoardHistoryListCount);
		
		mv.addObject("lbjMyBoardHistory", myBoardHistory);
		mv.addObject("boardHistoryPage",boardHistoryPage);
		//내가 이용한 History 세팅 끝------------------------------------------------
		//신청자가 생긴 내 글 세팅 시작----------------------------------------------
		int myWriteCandidateListCount = boardService.selectMyWriteCandidateListCount(member_id);
		int myWriteCandidateMaxPage = (int)((double)myWriteCandidateListCount / qnaLimit + 0.9);
		int myWriteCandidateEndRow = qnaStartRow + qnaLimit - 1;		
		
		System.out.println("myWriteCandidateListCount = " + myWriteCandidateListCount);
		
		HashMap<Object,Object> map6 = new HashMap<Object,Object>();
	    map6.put("startRow", qnaStartRow);
	    map6.put("endRow", myWriteCandidateEndRow);
	    map6.put("member_id", member_id);
	    ArrayList<MyPageApplyBoard> myWriteCandidate = (ArrayList<MyPageApplyBoard>)boardService.selectMyWriteCandidate(map6);
	    
	    System.out.println("myWriteCandidate size = " + myWriteCandidate.size());
		
	    if (myWriteCandidateMaxPage < myWriteCandidateEndRow)
	    	myWriteCandidateEndRow = myWriteCandidateMaxPage;
		
	    HashMap<String,Integer> writeCandidatePage = new HashMap<String,Integer>();
	    writeCandidatePage.put("myWriteCandidateMaxPage",myWriteCandidateMaxPage);
	    writeCandidatePage.put("myWriteCandidateEndRow",myWriteCandidateEndRow);
	    writeCandidatePage.put("myWriteCandidateListCount",myWriteCandidateListCount);
		
		mv.addObject("lbjMyWriteCandidate", myWriteCandidate);
		mv.addObject("writeCandidatePage",writeCandidatePage);
		//신청자가 생긴 내 글 세팅 끝------------------------------------------------
		mv.setViewName("A6.LBJ/myPage");
		
		return mv;
		
	}
	
	@RequestMapping("midcategorylist.go")
	public void MidcatePick(@RequestParam("bigcatename")String aa,HttpServletRequest request,HttpServletResponse response) throws IOException {
		int bigcategoryparsing = Integer.parseInt(aa);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		switch (bigcategoryparsing) {
		case 1: //MidCategory 생활list
			 ArrayList<MidCategory>	midlist1 = (ArrayList<MidCategory>) categoryService.MidcatePick1();
			 
			 for(int i=0; i<midlist1.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist1.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist1.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);

			 break;
		case 2: //MidCategory 여행list
			 ArrayList<MidCategory>	midlist2 = (ArrayList<MidCategory>) categoryService.MidcatePick2();	

			 for(int i=0; i<midlist2.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist2.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist2.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);
			 
			 
			break;
		case 3: //MidCategory 음악list
			 ArrayList<MidCategory>	midlist3 = (ArrayList<MidCategory>) categoryService.MidcatePick3();
			 for(int i=0; i<midlist3.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist3.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist3.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);
			 
			break;
		case 4: //MidCategory 게임list
			 ArrayList<MidCategory>	midlist4 = (ArrayList<MidCategory>) categoryService.MidcatePick4();
			 for(int i=0; i<midlist4.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist4.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist4.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);			
			break;
		case 5: //MidCategory 렌탈list
			 ArrayList<MidCategory>	midlist5 = (ArrayList<MidCategory>) categoryService.MidcatePick5();
			 for(int i=0; i<midlist5.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist5.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist5.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);			
			break;
		case 6: //MidCategory 대행list
			 ArrayList<MidCategory>	midlist6 = (ArrayList<MidCategory>) categoryService.MidcatePick6();
			 for(int i=0; i<midlist6.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist6.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist6.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);			
			break;
		case 7: //MidCategory 프리랜서list
			 ArrayList<MidCategory>	midlist7 = (ArrayList<MidCategory>) categoryService.MidcatePick7();
			 for(int i=0; i<midlist7.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist7.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist7.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);			
			break;
		case 8: //MidCategory 반려동물list
			 ArrayList<MidCategory>	midlist8 = (ArrayList<MidCategory>) categoryService.MidcatePick8();
			 for(int i=0; i<midlist8.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_mid_code", midlist8.get(i).getCategory_mid_code());
				 js.put("category_mid_name", midlist8.get(i).getCategory_mid_name());
				 jarr.add(js);		 
			 }
			 json.put("midlistfoword", jarr);			
			break;
		}
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();		
	}
	
	
	@RequestMapping("smallcategorylist.go")
	public void SmallcatePick(@RequestParam("midcatename")String midcategoryCode,HttpServletRequest request,HttpServletResponse response) throws IOException {

		String firstCategoryinitial = midcategoryCode.substring(0,2);
		//System.out.println("유저가 선택한 카테고리의 첫번째 글자 : "+firstCategoryinitial);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		if(firstCategoryinitial.equals("AA")) {
			ArrayList<SmallCategory> smalllist1 = (ArrayList<SmallCategory>) categoryService.SamllcatePick1();
			 for(int i=0; i<smalllist1.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist1.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist1.get(i).getCategory_small_name());
				 jarr.add(js);		 
			 }
			 json.put("smalllistfoword", jarr);			
			
		}else if(firstCategoryinitial.equals("AB")) {
			ArrayList<SmallCategory> smalllist2 = (ArrayList<SmallCategory>) categoryService.SamllcatePick2();
			 for(int i=0; i<smalllist2.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist2.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist2.get(i).getCategory_small_name());
				 jarr.add(js);		 
			 }
			 json.put("smalllistfoword", jarr);				
			
		}else if(firstCategoryinitial.equals("AC")) {
			ArrayList<SmallCategory> smalllist3 = (ArrayList<SmallCategory>) categoryService.SamllcatePick3(); 		
			 for(int i=0; i<smalllist3.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist3.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist3.get(i).getCategory_small_name());
				 jarr.add(js);		 
			 }
			 json.put("smalllistfoword", jarr);				
		}else if(firstCategoryinitial.equals("AD")) {
			ArrayList<SmallCategory> smalllist4 = (ArrayList<SmallCategory>) categoryService.SamllcatePick4();	
			 for(int i=0; i<smalllist4.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist4.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist4.get(i).getCategory_small_name());
				 jarr.add(js);		 
			 }
			 json.put("smalllistfoword", jarr);					
		}else if(firstCategoryinitial.equals("BA")) {
			ArrayList<SmallCategory> smalllist5 = (ArrayList<SmallCategory>) categoryService.SamllcatePick5(); 		
			 for(int i=0; i<smalllist5.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist5.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist5.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("BB")) {
			ArrayList<SmallCategory> smalllist6 = (ArrayList<SmallCategory>) categoryService.SamllcatePick6();		
			 for(int i=0; i<smalllist6.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist6.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist6.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("CA")) {
			ArrayList<SmallCategory> smalllist7 = (ArrayList<SmallCategory>) categoryService.SamllcatePick7();
			 for(int i=0; i<smalllist7.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist7.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist7.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("CB")) {
			ArrayList<SmallCategory> smalllist8 = (ArrayList<SmallCategory>) categoryService.SamllcatePick8();
			 for(int i=0; i<smalllist8.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist8.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist8.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("CC")) {
			ArrayList<SmallCategory> smalllist9 = (ArrayList<SmallCategory>) categoryService.SamllcatePick9();
			 for(int i=0; i<smalllist9.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist9.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist9.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("CD")) {
			ArrayList<SmallCategory> smalllist10 = (ArrayList<SmallCategory>) categoryService.SamllcatePick10();
			 for(int i=0; i<smalllist10.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist10.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist10.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("DA")) {
			ArrayList<SmallCategory> smalllist11 = (ArrayList<SmallCategory>) categoryService.SamllcatePick11();
			 for(int i=0; i<smalllist11.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist11.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist11.get(i).getCategory_small_name());
				 jarr.add(js);
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("DB")) {
			ArrayList<SmallCategory> smalllist12 = (ArrayList<SmallCategory>) categoryService.SamllcatePick12();
			 for(int i=0; i<smalllist12.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist12.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist12.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("DC")) {
			ArrayList<SmallCategory> smalllist13 = (ArrayList<SmallCategory>) categoryService.SamllcatePick13();
			 for(int i=0; i<smalllist13.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist13.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist13.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("DD")) {
			ArrayList<SmallCategory> smalllist14 = (ArrayList<SmallCategory>) categoryService.SamllcatePick14();
			 for(int i=0; i<smalllist14.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist14.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist14.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("EA")) {
			ArrayList<SmallCategory> smalllist15 = (ArrayList<SmallCategory>) categoryService.SamllcatePick15();
			 for(int i=0; i<smalllist15.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist15.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist15.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("FA")) {
			ArrayList<SmallCategory> smalllist16 = (ArrayList<SmallCategory>) categoryService.SamllcatePick16();
			 for(int i=0; i<smalllist16.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist16.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist16.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("FB")) {
			ArrayList<SmallCategory> smalllist17 = (ArrayList<SmallCategory>) categoryService.SamllcatePick17();
			 for(int i=0; i<smalllist17.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist17.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist17.get(i).getCategory_small_name());
				 jarr.add(js);
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("GA")) {
			ArrayList<SmallCategory> smalllist18 = (ArrayList<SmallCategory>) categoryService.SamllcatePick18();
			 for(int i=0; i<smalllist18.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist18.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist18.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("GB")) {
			ArrayList<SmallCategory> smalllist19 = (ArrayList<SmallCategory>) categoryService.SamllcatePick19();
			 for(int i=0; i<smalllist19.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist19.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist19.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("GC")) {
			ArrayList<SmallCategory> smalllist20 = (ArrayList<SmallCategory>) categoryService.SamllcatePick20();
			 for(int i=0; i<smalllist20.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist20.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist20.get(i).getCategory_small_name());
				 jarr.add(js);
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("GD")) {
			ArrayList<SmallCategory> smalllist21 = (ArrayList<SmallCategory>) categoryService.SamllcatePick21();
			 for(int i=0; i<smalllist21.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist21.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist21.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("HA")) {
			ArrayList<SmallCategory> smalllist22 = (ArrayList<SmallCategory>) categoryService.SamllcatePick22();
			 for(int i=0; i<smalllist22.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist22.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist22.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("HB")) {
			ArrayList<SmallCategory> smalllist23 = (ArrayList<SmallCategory>) categoryService.SamllcatePick23();
			 for(int i=0; i<smalllist23.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist23.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist23.get(i).getCategory_small_name());
				 jarr.add(js);	
			 }
			 json.put("smalllistfoword", jarr);	
		}else if(firstCategoryinitial.equals("HC")) {
			ArrayList<SmallCategory> smalllist24 = (ArrayList<SmallCategory>) categoryService.SamllcatePick24();
			 for(int i=0; i<smalllist24.size(); i++) {
				 JSONObject js = new JSONObject();
				 js.put("category_small_code", smalllist24.get(i).getCategory_small_code());
				 js.put("category_small_name", smalllist24.get(i).getCategory_small_name());
				 jarr.add(js);		
			 }
			 json.put("smalllistfoword", jarr);	
		}
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();		
	}
	
	
	
}







