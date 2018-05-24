package com.kh.goodluck.item.controller;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.GetMyItem;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.UsingItem;
import com.kh.goodluck.member.model.vo.Member;

@Controller
public class ItemController {
	
//	@Autowired
//	private MemberService memberService;
	
	@Autowired
	private ItemService ItemService;
//	
	public ItemController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("myitem.go")
	public String myitem() {
		System.out.println("마이아이템/스프링이아닌 mv로 아이템목록 가져갸아함 수정후 삭제/");
		
		
		return "A5.CJS/itemframe";
	}

	
	@RequestMapping("cjsitemmellhome.go")
	public ModelAndView itemmallmove(ModelAndView mv) {
		
		//아이템몰 메인	
		
		//8개 뽑기. 최신.
		ArrayList<ITEMLIST> al= (ArrayList<ITEMLIST>)ItemService.homenewlitm();
	
		//4개뽑기 인기
		ArrayList<ITEMLIST> al1= (ArrayList<ITEMLIST>)ItemService.homepopularlitm();
		
		//카로셀에 넣을것.
		
		//공지사항
		ArrayList<ItemNotice> al3=(ArrayList<ItemNotice>)ItemService.notice();
		SimpleDateFormat sdf=new SimpleDateFormat("MM-dd");
		for(ItemNotice i : al3) {
		i.setITEMNOTICE_DATE(i.getITEMNOTICE_DATE().toString().substring(5,10));
		}
		
		//할인 목록.
		
		
		mv.addObject("newitem",al);
		mv.addObject("popularlitm",al1);
		mv.addObject("itemNotice",al3);
		mv.setViewName("A5.CJS/itemMall");
		return mv;
	}
	
	@RequestMapping("cjsitemDetail.go")
	public ModelAndView itemDetailmove(@RequestParam("itemno") int itemno , ModelAndView mv) {
		
		ITEMLIST li= ItemService.itemdetail(itemno);
		
		mv.addObject("detail",li);
		mv.setViewName("A5.CJS/itemDetail");
		return mv;
	}

	
	@RequestMapping("ukWookTest.go")  //(욱재작업) 메인화면에서 작업 드롭박스 욱재영역으로 이동하기 
	public String ukjaeworkingpageMove(){
		return "A2.JUJ/Allworking";
	}
	
	@RequestMapping("Eventpopup1.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기1 Window.open
	public String event1Popup1() {

		return "A2.JUJ/Event1";
	}

	@RequestMapping("Eventpopup2.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기2 Window.open
	public String event1Popup2() {
		return "A2.JUJ/Event2";
	}
	
	@RequestMapping("Eventpopup3.go") //(욱재작업) 이벤트 페이지 팝업창 띄우기3 Window.open
	public String event1Popup3() {
		return "A2.JUJ/Event3";
	}
	 
	@RequestMapping("Chatting.go")  //(욱재작업) 채팅창페이지로 이동하기
	public String chartPageMove(){
		return "A2.JUJ/Chatting";		
	}
	
	@RequestMapping("Ukcarousel.go")  //(욱재작업) 채팅창페이지로 이동하기
	public String carouselTestPageMove(){
		return "A2.JUJ/Carousel_test";
	}
	
	@RequestMapping("cjsgetmyitem.go")
	public void getmyitem(@RequestParam("member_id") String memberid, HttpServletRequest request , HttpServletResponse response) throws IOException {
		//내아이템 작업.
		System.out.println("member : " + memberid);
		//로그인 작업을 합니다 세션에 넣어요
		int currentPage = 1;
		
		if(request.getParameter("usitempk") != null) {
		int usitempk=Integer.parseInt(request.getParameter("usitempk"));
		System.out.println("usitempk="+usitempk);
			if(ItemService.turnitemstatus(usitempk)>0) {
				System.out.println("해당아이템 소모완료");
				//해당 아이템의 타입이 현재 적용중인이 확인.
		if(ItemService.checkitemusing(usitempk) == 0) {
				System.out.println("해당 아이템타입의 아이템은 현재 적용중이지 않음.");
					//새롭게 인설트
						if(ItemService.insertusingitem(usitempk)!=0)
							ItemService.Insertitemlog(usitempk);
				}else {
		System.out.println("해당 아이템타입의 아이템은 현재 적용중이므로, 기간만큼 늘어남.");
					// 현재의 값에서 없데이트
						if(ItemService.insertusingitem1(usitempk)!=0)
							ItemService.Insertitemlog1(usitempk);
				}
			}else {
				System.out.println("해당아이템 소모실패");
			}
			
		}
		
		
		
		
		//전달된 페이지값 추출
		if(request.getParameter("page") != null) {
		currentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		//한 페이지당 출력할 목록 갯수 지정
		int limit = 17;
	
		//현 맴버가 보유하고있는 아이템 갯수 계산.
		int listCount = ItemService.gethavingListCount(memberid);
		System.out.println( listCount + " / (To.아이템컨트롤러 소모성아이템갯수)");
		
		int maxPage = (int)((double)listCount / limit + 0.9);
	
		//현재 페이지 그룹(10개페이지를 한그룹처리)에 보여줄 시작 페이지수
		
		//현재 페이지에 출력할 목록 조회		
		GetMyItem gmi=new GetMyItem();
		gmi.setCurrentPage(currentPage);
		gmi.setLimit(limit);
		gmi.setMEMBER_ID(memberid);
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		gmi.setStartRow(startRow);
		gmi.setEndRow(endRow);		
		gmi.setMaxpage(maxPage);
		List<GetMyItem> al = ItemService.GetMyItem(gmi); 
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		for(GetMyItem l : al) {
			JSONObject job = new JSONObject();
			job.put("MYITEM_NO", l.getMYITEM_NO());
			job.put("MEMBER_ID", l.getMEMBER_ID());
			job.put("BUY_DATE", l.getBUY_DATE().toString());
			job.put("MYITEM_STATUS", l.getMYITEM_STATUS());
			job.put("ITEMLIST_NO_1", l.getITEMLIST_NO());
			job.put("ITEMNAME", l.getITEMNAME());
			job.put("ITEMPRICE", l.getITEMPRICE());
			job.put("ITEMPERIOD", l.getITEMPERIOD());
			job.put("ITEMTYPE", l.getITEMTYPE());
			job.put("ITEMFILENAME", l.getITEMFILENAME());
			job.put("currentPage",gmi.getCurrentPage());
			job.put("maxPage", gmi.getMaxpage());
		jarr.add(job);
		}
		json.put("havingitem", jarr); //소모성아이템만 담는다.
		
		
		//내 이모티콘
				currentPage=1;
				//전달된 페이지값 추출
				if(request.getParameter("page1") != null) {
				currentPage = Integer.parseInt(request.getParameter("page1"));
				}
				
				//한 페이지당 출력할 목록 갯수 지정
				limit = 9;
			
				//현 맴버가 보유하고있는 이모티콘 갯수 계산.
				listCount = ItemService.gethavingListCount1(memberid);
				
				maxPage = (int)((double)listCount / limit + 0.9);
				startRow = (currentPage - 1) * limit + 1;
				endRow = startRow + limit - 1;
				//현재 페이지에 출력할 목록 조회		
				gmi=new GetMyItem();
				gmi.setCurrentPage(currentPage);
				gmi.setLimit(limit);
				gmi.setMEMBER_ID(memberid);
				startRow = (currentPage - 1) * limit + 1;
				endRow = startRow + limit - 1;
				gmi.setStartRow(startRow);
				gmi.setEndRow(endRow);	
				gmi.setMaxpage(maxPage);
				
				//이모티콘을 얻기위한 새로운 것.
				List<GetMyItem> al1 = ItemService.GetMyItem1(gmi); 
				
				//현재 사용중인 이모티콘 pk얻어오기
				int nowusingimticonpk;
				
				try {
				nowusingimticonpk = ItemService.getmyimticon(memberid) ;
				}catch(NullPointerException e) {
				nowusingimticonpk=0;
				}	
				
				
				jarr = new JSONArray();
				
				for(GetMyItem l : al1) {
					JSONObject job = new JSONObject();
					job.put("MYITEM_NO", l.getMYITEM_NO());
					job.put("MEMBER_ID", l.getMEMBER_ID());
					job.put("BUY_DATE", l.getBUY_DATE().toString());
					job.put("MYITEM_STATUS", l.getMYITEM_STATUS());
					job.put("ITEMLIST_NO_1", l.getITEMLIST_NO());
					job.put("ITEMNAME", l.getITEMNAME());
					job.put("ITEMPRICE", l.getITEMPRICE());
					job.put("ITEMPERIOD", l.getITEMPERIOD());
					job.put("ITEMTYPE", l.getITEMTYPE());
					job.put("ITEMFILENAME", l.getITEMFILENAME());
					job.put("currentPage",gmi.getCurrentPage());
					job.put("maxPage", gmi.getMaxpage());
				if(nowusingimticonpk == l.getMYITEM_NO()){
					job.put("selected",1);
				}else {
					job.put("selected",0);
				}
				jarr.add(job);
				}
				
		json.put("havingimticon", jarr); //이모티콘만 담는다.
		
		//현재사용중인 아이템 리스트를 가져온다.
		List<UsingItem> al2 = ItemService.getUsingItem(memberid);
	
		jarr = new JSONArray();
		
		for(UsingItem l : al2) {
		
		JSONObject job = new JSONObject();
		job.put("ITEMFILENAME", l.getITEMFILENAME());
		job.put("ITEMNAME", l.getITEMNAME());
		job.put("END_DATE", l.getEND_DATE().toString());
		jarr.add(job);
		}
		json.put("usingitem", jarr); //사용중 아이템을 넣는다.
		
		PrintWriter out = response.getWriter();
		System.out.println(json.toJSONString());
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("jdkitemlist.go")
	public String itemList() {
		return "A3.JDK/admin_itemlist";
	}
	
	
	
	
	
	@RequestMapping("cjsadjectimticon.go")
	public void cjsadjectimticon(
			@RequestParam("page1") int page1 , 
			@RequestParam("member_id") String memberid , 
			@RequestParam("usitempk") int usitempk , 
			HttpServletRequest request , 
			HttpServletResponse response) {
		int currentPage=1;
		//전달된 페이지값 추출
		if(request.getParameter("page1") != null) {
		currentPage = Integer.parseInt(request.getParameter("page1"));
		}
		
		//현재 이모티콘이 적용중인지 확인
		int nowusingimticonpk ;
		try {
		nowusingimticonpk = ItemService.getmyimticon1(memberid);
		//nowusingimticonpk=현재 사용되고있는 이모티콘 pk
		System.out.println("nowusingimticonpk="+nowusingimticonpk);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("nowusingimticonpk",nowusingimticonpk);
		map.put("usitempk",usitempk);
		int result=ItemService.updateimticon(map);
		System.out.println("updateimticon="+result);
		}catch(NullPointerException e){
		int result=ItemService.insertimticon(usitempk);
		System.out.println("insertimticon="+result);
		}

		int limit = 9;
		
		int nowusingimticonpk1 = 0;
		try {
		nowusingimticonpk1 = ItemService.getmyimticon(memberid) ;
		}catch(NullPointerException e) {
		nowusingimticonpk=0;
		}	
		//현 맴버가 보유하고있는 이모티콘 갯수 계산.
		int listCount = ItemService.gethavingListCount1(memberid);
		
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		//현재 페이지에 출력할 목록 조회		
		GetMyItem gmi=new GetMyItem();
		gmi.setCurrentPage(currentPage);
		gmi.setLimit(limit);
		gmi.setMEMBER_ID(memberid);
		startRow = (currentPage - 1) * limit + 1;
		endRow = startRow + limit - 1;
		gmi.setStartRow(startRow);
		gmi.setEndRow(endRow);	
		gmi.setMaxpage(maxPage);
		
		//이모티콘을 얻기위한 새로운 것. 
		List<GetMyItem> al1 = ItemService.GetMyItem1(gmi); 
		
		//al1==보유중인 아이콘.
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		for(GetMyItem l : al1) {
			JSONObject job = new JSONObject();
			job.put("MYITEM_NO", l.getMYITEM_NO());
			job.put("MEMBER_ID", l.getMEMBER_ID());
			job.put("BUY_DATE", l.getBUY_DATE().toString());
			job.put("MYITEM_STATUS", l.getMYITEM_STATUS());
			job.put("ITEMLIST_NO_1", l.getITEMLIST_NO());
			job.put("ITEMNAME", l.getITEMNAME());
			job.put("ITEMPRICE", l.getITEMPRICE());
			job.put("ITEMPERIOD", l.getITEMPERIOD());
			job.put("ITEMTYPE", l.getITEMTYPE());
			job.put("ITEMFILENAME", l.getITEMFILENAME());
			job.put("currentPage",gmi.getCurrentPage());
			job.put("maxPage", gmi.getMaxpage());
			if(nowusingimticonpk1 == l.getMYITEM_NO()){
				job.put("selected",1);
			}else {
				job.put("selected",0);
			}
		jarr.add(job);
		System.out.println(l.toString());
		}
		
json.put("havingimticon", jarr);

PrintWriter out;
try {
	out = response.getWriter();
	System.out.println(json.toJSONString());
	out.print(json.toJSONString());
	out.flush();
	out.close();
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


}


}











