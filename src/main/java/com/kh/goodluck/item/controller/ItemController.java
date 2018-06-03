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
import com.kh.goodluck.item.model.vo.ItemDetail;
import com.kh.goodluck.item.model.vo.ItemNotice;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.RanDomBoxChance;
import com.kh.goodluck.item.model.vo.UsingItem;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.sun.deploy.net.HttpResponse;

/* 
           ITEMLIST newitemthismonth =ItemService.newitemthismonth();
			ITEMLIST popitemthismonth =ItemService.popitemthismonth();
			ITEMLIST thismonthsrandom = ItemService.randomitem();
			ItemPackage pack=ItemService.getitempackage();    
			String items=pack.getITEMLIST_NO();
			String split[] = items.split(",");
		      int orimoney=0;
		        String itemsName=new String();
		        for (String i: split) {
		        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
		        orimoney+=packitem.getITEMPRICE();
		        itemsName+="["+packitem.getITEMNAME()+"]" ;
		        itemsName+="+";
		        };
		        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
		        	itemsName = itemsName.substring(0, itemsName.length()-1);
		        }
			  mv.addObject("orimoney",orimoney);
			  
			    mv.addObject("pack",pack);
			    mv.addObject("itemsName",itemsName);
				mv.addObject("thismonthsrandom",thismonthsrandom);
				mv.addObject("newitemthismonth",newitemthismonth);
				mv.addObject("popitemthismonth",popitemthismonth);
 * 
 * */


@Controller
public class ItemController {
	
//	@Autowired
//	private MemberService memberService;
	
	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private MemberService memberService;
	
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
	public ModelAndView itemmallmove(ModelAndView mv,HttpSession session) {
		
		if(session.getValue("loginUser") != null) {
		//맴버 아이디에 아이콘을 같이 가져가기.
		Member member=(Member)session.getAttribute("loginUser");
		member.setMember_cash(memberService.checkusercash(member.getMember_id()));
		member.setEmoticonfile(ItemService.getUsingemticon(member.getMember_id()));
		}
		//아이템몰 메인	
		
		//8개 뽑기. 최신.
		ArrayList<ITEMLIST> al= (ArrayList<ITEMLIST>)ItemService.homenewlitm();
	
		//4개뽑기 인기
		ArrayList<ITEMLIST> al1= (ArrayList<ITEMLIST>)ItemService.homepopularlitm();
		
		//카로셀에 넣을것.
		
		//카로1 (이달의 랜덤박스 정보 pk만 뽑아오기.)
		ITEMLIST thismonthsrandom = ItemService.randomitem();
		//카로2 (최신 아이템 pk)
		ITEMLIST newitemthismonth =ItemService.newitemthismonth();
		//카로3 (이달의 패키지 아이템.)
		ItemPackage pack=ItemService.getitempackage();
		//패키지아이템의 기본 가격과 목록내용 구하기
		String items=pack.getITEMLIST_NO();
		String split[] = items.split(",");
        int orimoney=0;
        String itemsName=new String();
        for (String i: split) {
        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
        orimoney+=packitem.getITEMPRICE();
        itemsName+="["+packitem.getITEMNAME()+"]" ;
        itemsName+="+";
        };
        //마지막 '+'지우기
        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
        itemsName = itemsName.substring(0, itemsName.length()-1);
        }
		//카로4 (이달의 인기아이템)
		ITEMLIST popitemthismonth =ItemService.popitemthismonth();
		
		//공지사항
		ArrayList<ItemNotice> al3=(ArrayList<ItemNotice>)ItemService.notice();
		SimpleDateFormat sdf=new SimpleDateFormat("MM-dd");
		for(ItemNotice i : al3) {
		i.setITEMNOTICE_DATE(i.getITEMNOTICE_DATE().toString().substring(5,10));
		}
		
		//패키지 . (패키지이름+원래가격+할인가격)
		List<ItemPackage> al4 = ItemService.allpackitem();
		
		for(ItemPackage i: al4) {
			String items1=i.getITEMLIST_NO();
			String split1[] = items1.split(",");
			int orimoney1=0;
	        for (String i1: split1) {
	        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i1));
	        orimoney1+=packitem.getITEMPRICE();
	        };
	        i.setOri_PRICE(orimoney1);
		}
		
		
		mv.addObject("newitem",al);
		mv.addObject("popularlitm",al1);
		mv.addObject("itemNotice",al3);
		mv.addObject("packageitems",al4);
		mv.addObject("orimoney",orimoney);
		mv.addObject("itemsName",itemsName);
		mv.addObject("pack",pack);
		mv.addObject("newitemthismonth",newitemthismonth);
		mv.addObject("popitemthismonth",popitemthismonth);
		mv.addObject("thismonthsrandom",thismonthsrandom);
		mv.setViewName("A5.CJS/itemMall");
		return mv;
	}
	
	@RequestMapping("cjsitemDetail.go")
	public ModelAndView itemDetailmove(@RequestParam("itemno") int itemno , ModelAndView mv ,HttpSession session ) {
		//아이템 디테일 메소드.
		if(session.getValue("loginUser") != null) {
			//맴버 아이디에 아이콘을 같이 가져가기.
			Member member=(Member)session.getAttribute("loginUser");
			System.out.println("아이템컨트롤러에서 member호출"+member);
			member.setEmoticonfile(ItemService.getUsingemticon(member.getMember_id()));
		
		
		
		}
		 ITEMLIST newitemthismonth =ItemService.newitemthismonth();
			ITEMLIST popitemthismonth =ItemService.popitemthismonth();
			ITEMLIST thismonthsrandom = ItemService.randomitem();
			ItemPackage pack=ItemService.getitempackage();    
			String items=pack.getITEMLIST_NO();
			String split[] = items.split(",");
		      int orimoney=0;
		        String itemsName=new String();
		        for (String i: split) {
		        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
		        orimoney+=packitem.getITEMPRICE();
		        itemsName+="["+packitem.getITEMNAME()+"]" ;
		        itemsName+="+";
		        };
		        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
		        	itemsName = itemsName.substring(0, itemsName.length()-1);
		        }
			  mv.addObject("orimoney",orimoney);
			  
			    mv.addObject("pack",pack);
			    mv.addObject("itemsName",itemsName);
				mv.addObject("thismonthsrandom",thismonthsrandom);
				mv.addObject("newitemthismonth",newitemthismonth);
				mv.addObject("popitemthismonth",popitemthismonth);
		
		
		
		ITEMLIST li= ItemService.itemdetail(itemno);
		ItemDetail detail = ItemService.getitemdetail(li.getITEMTYPE());
		mv.addObject("item",li);
		mv.addObject("detail",detail);
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
	
	@RequestMapping("Ukcarousel.go")  //(욱재작업) 카로셀Test영역
	public String carouselTestPageMove(){
		return "A2.JUJ/Carousel_test";
	}
	
	@RequestMapping("cjsgetmyitem.go")
	public void getmyitem(HttpSession session,@RequestParam("member_id") String memberid, HttpServletRequest request , HttpServletResponse response) throws IOException {
		//내아이템 작업.
		System.out.println("member : " + memberid);
		//로그인 작업을 합니다 세션에 넣어요
		int currentPage = 1;
		String messagefromrandomitem = null;
		Member sessionmember=(Member)session.getAttribute("loginUser");		
		Member member=new Member();
		member.setMember_id(memberid);
		member.setMember_pw(sessionmember.getMember_pw());
		if(request.getParameter("usitempk") != null) {
		int usitempk=Integer.parseInt(request.getParameter("usitempk"));
		int itemlistno=ItemService.getitemlistno(usitempk);
		
		if(ItemService.getitemtype(itemlistno)==8) {
		//랜덤박스 아이템  사용==>
		ItemService.turnitemstatus(usitempk);
		//사용로그에추가=>
		ItemService.insertusingitem(usitempk);
		ItemService.Insertitemlog(usitempk);
		//랜덤 확률 호출=>
		List<RanDomBoxChance> al=null;
		switch(itemlistno) {
		case 74:
		al=ItemService.getRanDomBoxChance1();
		break;
		case 72: 
		al=ItemService.getRanDomBoxChance2();
		break;
		case 73: 
		al=ItemService.getRanDomBoxChance3();
		break;
		}	   
	//호출후 아이템1개추출 => 	
		double d = Math.random();
		double chance=0;
		int itemno = 0;
		
	for(RanDomBoxChance i:al) {
			chance+=i.getCHANCE();
		if(chance>=d) {
			itemno=i.getITEMLIST_NO();
			messagefromrandomitem=i.getItemname();
			break;
		}
	} 
		//myitem에 인설트 =>
	HashMap<Object,Object> map=new HashMap<Object,Object>();
	map.put("memberid", memberid);
	map.put("pk", itemno);
	int reuslt1=ItemService.insertmyitem(map);
		}else {
		switch (itemlistno) {
		case 55:
			System.out.println("최대게시물수+1");
			if(ItemService.turnitemstatus(usitempk)>0) {
			System.out.println("해당아이템 소모완료");
			ItemService.upgradeboardcount(memberid);
			if(ItemService.insertusingitem(usitempk)!=0)
			ItemService.Insertitemlog(usitempk);
			} 
			sessionmember.setMember_write_count(memberService.loginCheck(sessionmember).getMember_write_count());	
			break;
		case 56:
			System.out.println("최대태그수+1");
			if(ItemService.turnitemstatus(usitempk)>0) {
			System.out.println("해당아이템 소모완료");
			ItemService.upgradekeywordcount(memberid);
			if(ItemService.insertusingitem(usitempk)!=0)
				ItemService.Insertitemlog(usitempk);
		}
			sessionmember.setMember_keyword_count(memberService.loginCheck(sessionmember).getMember_keyword_count());
	
			break;
		
		default:
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
			break;
		  }
		}
		}
	
		Member member1=memberService.loginCheck(member);
		
		//전달된 페이지값 추출
		if(request.getParameter("page") != null) {
		currentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		//한 페이지당 출력할 목록 갯수 지정
		int limit = 16;
	
		//현 맴버가 보유하고있는 아이템 갯수 계산.
		int listCount = ItemService.gethavingListCount(memberid);
		
		int maxPage = (int)((double)listCount / limit + 0.999999);
		if(currentPage>maxPage)
		currentPage=maxPage;
		
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
				limit = 8;
			
				//현 맴버가 보유하고있는 이모티콘 갯수 계산.
				listCount = ItemService.gethavingListCount1(memberid);
				
				maxPage = (int)((double)listCount / limit + 0.9999999);
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
					
				//아이콘 조합을 위해서 현재 사용하는 이모티콘을 제외하고 보유중인 이모티콘들을 불러옴.
				gmi=new GetMyItem();
				jarr = new JSONArray();
				gmi.setMEMBER_ID(memberid);
				gmi.setMYITEM_NO(nowusingimticonpk);
				List<GetMyItem> al3 = ItemService.GetMyItem2(gmi); 
				for(GetMyItem l : al3) {
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
				jarr.add(job);
				}
	    json.put("mixitem", jarr);		
				
				
				
				
		
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
		json.put("boardcount",member1.getMember_keyword_count());
		json.put("keywordcount", member1.getMember_write_count());
		json.put("cjsmessage", messagefromrandomitem);
		
		PrintWriter out = response.getWriter();
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
			HttpServletResponse response,
			HttpSession session) {
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
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("nowusingimticonpk",nowusingimticonpk);
		map.put("usitempk",usitempk);
		ItemService.updateimticon(map);
		}catch(NullPointerException e){
		ItemService.insertimticon(usitempk);
		}

		int limit = 8;
		
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
		}
		 if(session.getValue("loginUser") != null) {
		      //맴버 아이디에 아이콘을 같이 가져가기.
		      Member member=(Member)session.getAttribute("loginUser");
		      System.out.println("아이템컨트롤러에서 member호출"+member);
		      member.setEmoticonfile(ItemService.getUsingemticon(member.getMember_id()));
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
	
	@RequestMapping("cjsnewitem.go")
	public ModelAndView cjsnewitem(ModelAndView mv, HttpServletRequest request,HttpSession session){
		//최신+인기
		 if(session.getValue("loginUser") != null) {
		      //맴버 아이디에 아이콘을 같이 가져가기.
		      Member member=(Member)session.getAttribute("loginUser");
		      System.out.println("아이템컨트롤러에서 member호출"+member);
		      member.setEmoticonfile(ItemService.getUsingemticon(member.getMember_id()));
		      }
		int currentPage=1;
		//전달된 페이지값 추출
		if(request.getParameter("page1") != null) {
		currentPage = Integer.parseInt(request.getParameter("page1"));
		}

		//한 페이지당 출력할 목록 갯수 지정
		int limit = 14;
		//현 맴버가 보유하고있는 아이템 갯수 계산
		int listCount =  ItemService.countitem();
		int maxPage = (int)((double)listCount / limit + 0.9999999);
		//현재 페이지에 출력할 목록 조회		
	    HashMap<Object,Object> map=new HashMap<Object,Object>();
	    int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		ArrayList<ITEMLIST> al= (ArrayList<ITEMLIST>)ItemService.allitemlist(map);
		ITEMLIST newitemthismonth =ItemService.newitemthismonth();
		ITEMLIST popitemthismonth =ItemService.popitemthismonth();
		ITEMLIST thismonthsrandom = ItemService.randomitem();
		ItemPackage pack=ItemService.getitempackage();
		//패키지아이템의 기본 가격과 목록내용 구하기
			String items=pack.getITEMLIST_NO();
			String split[] = items.split(",");
	        int orimoney=0;
	        String itemsName=new String();
	        for (String i: split) {
	        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
	        orimoney+=packitem.getITEMPRICE();
	        itemsName+="["+packitem.getITEMNAME()+"]" ;
	        itemsName+="+";
	        };
	        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
	        	itemsName = itemsName.substring(0, itemsName.length()-1);
	        }
	        
	        
	    mv.addObject("orimoney",orimoney);
	    mv.addObject("itemsName",itemsName);
	    mv.addObject("pack",pack);
		mv.addObject("thismonthsrandom",thismonthsrandom);
		mv.addObject("newitemthismonth",newitemthismonth);
		mv.addObject("popitemthismonth",popitemthismonth);
		mv.addObject("firstlist",al);
		mv.addObject("maxPage",maxPage);
		mv.addObject("currentPage",currentPage);
		mv.addObject("listCount",listCount);
		mv.setViewName("A5.CJS/cjsnewitem");
		return mv;
		}


	
	
	@RequestMapping("cjsitemseachpageing.go")
	public void cjsnewitem(HttpServletRequest request, HttpServletResponse response){
		//최신+인기
		
		int currentPage=1;
		//전달된 페이지값 추출
		if(request.getParameter("page") != null) {
		currentPage = Integer.parseInt(request.getParameter("page"));
		}

		int option=Integer.parseInt(request.getParameter("option"));
		
		String search= new String("");
		if(!request.getParameter("search").equals(null)) {
		search = request.getParameter("search");
		}
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("search", search);
		//한 페이지당 출력할 목록 갯수 지정
		int limit = 14;
		//현 맴버가 보유하고있는 아이템 갯수 계산
		int listCount =  ItemService.countitem(map);
	
		int maxPage = (int)((double)listCount / limit + 0.9999999);
		//현재 페이지 그룹(10개페이지를 한그룹처리)에 보여줄 시작 페이지수
		//현재 페이지에 출력할 목록 조회		
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		List<ITEMLIST> al = null;
		if(option==1) {
		al= (List<ITEMLIST>)ItemService.allitemlist1(map);
		System.out.println("옵션1번실행");
		}else {
		al= (List<ITEMLIST>)ItemService.allitemlist2(map);
		System.out.println("옵션2번실행");
		}
		
		JSONObject json = new JSONObject();
		
		JSONArray jarr = new JSONArray();
			
		for(ITEMLIST l : al) {
			JSONObject job = new JSONObject();
			job.put("ITEMFILENAME", l.getITEMFILENAME());
			job.put("ITEMLIST_NO", l.getITEMLIST_NO());
			job.put("ITEMNAME", l.getITEMNAME());
			job.put("ITEMPRICE", l.getITEMPRICE());
			jarr.add(job);
		}
		System.out.println("maxpag="+maxPage);
		System.out.println("currentPage="+currentPage);
		json.put("firstlist", jarr);
		json.put("maxpage", maxPage);
		json.put("option", option);
		json.put("search", search);
		json.put("size",al.size());
		json.put("listCount", listCount);
		json.put("currentPage", currentPage);
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(json.toJSONString());
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
		}
	
	
	@RequestMapping("cjsrandom.go")
	public ModelAndView cjsrandom(ModelAndView mv){
		//랜덤아이템 리스트
		ITEMLIST newitemthismonth =ItemService.newitemthismonth();
		ITEMLIST popitemthismonth =ItemService.popitemthismonth();
		ITEMLIST thismonthsrandom = ItemService.randomitem();
		ItemPackage pack=ItemService.getitempackage();
		//패키지아이템의 기본 가격과 목록내용 구하기
			String items=pack.getITEMLIST_NO();
			String split[] = items.split(",");
	        int orimoney=0;
	        String itemsName=new String();
	        for (String i: split) {
	        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
	        orimoney+=packitem.getITEMPRICE();
	        itemsName+="["+packitem.getITEMNAME()+"]" ;
	        itemsName+="+";
	        };
	        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
	        	itemsName = itemsName.substring(0, itemsName.length()-1);
	        }
	    mv.addObject("orimoney",orimoney);
	    mv.addObject("itemsName",itemsName);
	    mv.addObject("pack",pack);
		mv.addObject("thismonthsrandom",thismonthsrandom);
		mv.addObject("newitemthismonth",newitemthismonth);
		mv.addObject("popitemthismonth",popitemthismonth);
		mv.setViewName("A5.CJS/cjsradomlist");
		
		//랜덤아이템 리스트 뽑기.
		List<ITEMLIST> al= ItemService.allRandomlist();
	    mv.addObject("randomitems",al);
		return mv;
	}
	

	@RequestMapping("cjspackage.go")
	public ModelAndView cjspackage(ModelAndView mv){
		//패키지
		ITEMLIST newitemthismonth =ItemService.newitemthismonth();
		ITEMLIST popitemthismonth =ItemService.popitemthismonth();
		ITEMLIST thismonthsrandom = ItemService.randomitem();
		ItemPackage pack=ItemService.getitempackage();
		//패키지아이템의 기본 가격과 목록내용 구하기
		String items=pack.getITEMLIST_NO();
		String split[] = items.split(",");
	      int orimoney=0;
	        String itemsName=new String();
	        for (String i: split) {
	        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
	        orimoney+=packitem.getITEMPRICE();
	        itemsName+="["+packitem.getITEMNAME()+"]" ;
	        itemsName+="+";
	        };
	        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
	        	itemsName = itemsName.substring(0, itemsName.length()-1);
	    }
	        
	    //모든 아이템패키지 불러오기.
	     List<ItemPackage> al4 = ItemService.allpackitem();
		for(ItemPackage i: al4) {
			String items1=i.getITEMLIST_NO();
			String split1[] = items1.split(",");
			int orimoney1=0;
		    for (String i1: split1) {
		    ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i1));
		        orimoney1+=packitem.getITEMPRICE();
		        };
		    i.setOri_PRICE(orimoney1);
		}
	    mv.addObject("orimoney",orimoney);
	    mv.addObject("itemsName",itemsName);
	    mv.addObject("pack",pack);
	    mv.addObject("packitems",al4);
		mv.addObject("thismonthsrandom",thismonthsrandom);
		mv.addObject("newitemthismonth",newitemthismonth);
		mv.addObject("popitemthismonth",popitemthismonth);
		mv.setViewName("A5.CJS/cjspackage");
		return mv;
    }
	
	@RequestMapping("cjsrandomdetail.go")
	public ModelAndView cjsrandomdetail(@RequestParam("pk") int pk,ModelAndView mv) {
	     //랜덤아이템 디테일 
				ITEMLIST newitemthismonth =ItemService.newitemthismonth();
				ITEMLIST popitemthismonth =ItemService.popitemthismonth();
				ITEMLIST thismonthsrandom = ItemService.randomitem();
				ItemPackage pack=ItemService.getitempackage();
				//패키지아이템의 기본 가격과 목록내용 구하기
					String items=pack.getITEMLIST_NO();
					String split[] = items.split(",");
			        int orimoney=0;
			        String itemsName=new String();
			        for (String i: split) {
			        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
			        orimoney+=packitem.getITEMPRICE();
			        itemsName+="["+packitem.getITEMNAME()+"]" ;
			        itemsName+="+";
			        };
			        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
			        	itemsName = itemsName.substring(0, itemsName.length()-1);
			        }
		//랜덤아이템 정보 가져가기.
		ITEMLIST item=ItemService.itemdetail(pk);
		//72-아이콘랜덤, 73-기간제랜덤, 74-전체랜덤
		//RANDOMBOX_ALL, RANDOMBOX_EMO, RANDOMBOX_TIME
	
		
		List<RanDomBoxChance> al=null;
		switch(pk) {
		case 74:
		al=ItemService.getRanDomBoxChance1();
		break;
		case 72: 
		al=ItemService.getRanDomBoxChance2();
		break;
		case 73: 
		al=ItemService.getRanDomBoxChance3();
		break;
		default: 
		mv.setViewName("A5.CJS/ErrorPage");
		return mv;
		}	        
			   for(RanDomBoxChance i:al) {
			   i.setCHANCE(i.getCHANCE()*100); 
			   }
		
	
			        
			        
			    mv.addObject("orimoney",orimoney);
			    mv.addObject("itemsName",itemsName);
			    mv.addObject("pack",pack);
			    mv.addObject("itemchance",al);
			    mv.addObject("item",item);
			
				mv.addObject("thismonthsrandom",thismonthsrandom);
				mv.addObject("newitemthismonth",newitemthismonth);
				mv.addObject("popitemthismonth",popitemthismonth);
				mv.setViewName("A5.CJS/cjsrandom");
				return mv;
	
	}
	
	@RequestMapping("cjspackitemdetail.go")
	public ModelAndView cjspackitemdetail(@RequestParam("pk") int pk,ModelAndView mv,HttpSession session) {
		 if(session.getValue("loginUser") != null) {
		      //맴버 아이디에 아이콘을 같이 가져가기.
		      Member member=(Member)session.getAttribute("loginUser");
		      System.out.println("아이템컨트롤러에서 member호출"+member);
		      member.setEmoticonfile(ItemService.getUsingemticon(member.getMember_id()));
		      }
		
		ITEMLIST newitemthismonth =ItemService.newitemthismonth();
		ITEMLIST popitemthismonth =ItemService.popitemthismonth();
		ITEMLIST thismonthsrandom = ItemService.randomitem();
		ItemPackage pack=ItemService.getitempackage();
		ItemPackage pack1=ItemService.getitempackage(pk);
		//패키지아이템의 기본 가격과 목록내용 구하기
		String items=pack.getITEMLIST_NO();
		String split[] = items.split(",");
	     int orimoney=0;
	        String itemsName=new String();
	        String itemsName2=new String();
	        for (String i: split) {
	        ITEMLIST packitem=ItemService.getpackitemsinfo(Integer.parseInt(i));
	        orimoney+=packitem.getITEMPRICE();
	        itemsName+="["+packitem.getITEMNAME()+"]" ;
	        itemsName+="+";
	        itemsName2+="<br>["+packitem.getITEMNAME()+"]</br>";
	        };
	        if (itemsName.length() > 0 && itemsName.charAt(itemsName.length()-1)=='+') {
	        	itemsName = itemsName.substring(0, itemsName.length()-1);
	        }
	        String items1=pack1.getITEMLIST_NO();
			String split1[] = items1.split(",");
			ArrayList<ITEMLIST> inpack=new ArrayList<ITEMLIST>();
			int orimoney1=0;
			String itemsName1="";
		        for (String i: split1) {
		        ITEMLIST packitem1=ItemService.getpackitemsinfo(Integer.parseInt(i));
		        orimoney1+=packitem1.getITEMPRICE();
		        inpack.add(packitem1);
		        itemsName1+="["+packitem1.getITEMNAME()+"]" ;
		        itemsName1+="+";
		        
		        };
		        if (itemsName1.length() > 0 && itemsName1.charAt(itemsName1.length()-1)=='+') {
			        	itemsName1 = itemsName1.substring(0, itemsName1.length()-1);
			    }    
	     mv.addObject("orimoney",orimoney);
	    mv.addObject("orimoney1",orimoney1);
	    mv.addObject("itemsName",itemsName);
	    mv.addObject("itemsName1",itemsName1);
	    mv.addObject("itemsName2",itemsName2);
	    mv.addObject("pack",pack);
	    mv.addObject("packitems",pack1);
	    mv.addObject("inpack",inpack);
		mv.addObject("thismonthsrandom",thismonthsrandom);
		mv.addObject("newitemthismonth",newitemthismonth);
		mv.addObject("popitemthismonth",popitemthismonth);
		mv.setViewName("A5.CJS/cjspackdetil");
		return mv;
	}
	@RequestMapping("buyitem.go")
	public void buyitem(HttpSession session , @RequestParam("memberid") String memberid,@RequestParam("itempk") int pk,HttpServletResponse response) {
		//1 해당 유저 의 보유 캐시와 아이템의 가격을 비교. 성공일시에만 다음 함수 실행
		int price=ItemService.getitemprice(pk);
		if(memberService.checkusercash(memberid) > price ) {
		//2 my_item 테이블에 새롭게 인설트==>
			HashMap<Object,Object> map=new HashMap<Object,Object>();
			map.put("memberid", memberid);
			map.put("pk", pk);
			int reuslt1=ItemService.insertmyitem(map);
			
			
		//3 맴버테이블의 캐시 차감==>
			map=new HashMap<Object,Object>();
			map.put("memberid", memberid);
			map.put("price", price);
			int reuslt2=memberService.decreaseCash(map);
			Member member=(Member)session.getAttribute("loginUser");
			member.setMember_cash(memberService.checkusercash(member.getMember_id()));
		//4 itemlist에 판매수+1 업데이트 	
			int reuslt3=ItemService.updatesellcount(pk);

			System.out.println("아래 result 3개가 전부 1이 되야 정상수행된것임.");
			System.out.println("reuslt1="+reuslt1);
			System.out.println("reuslt2="+reuslt2);
			System.out.println("reuslt3="+reuslt3);
			
			
			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(reuslt1==1 && reuslt2==1&& reuslt3==1)
			out.print(1);
			else
			out.print(0);
			out.flush();
			out.close();
		}else {
			PrintWriter out = null;
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(0);
			out.flush();
			out.close();
		}

	}
    
   @RequestMapping("buypack.go")
   public void buypack(HttpSession session,@RequestParam("memberid") String memberid,@RequestParam("itempk") int pk,HttpServletResponse response) {
	       //패키지 아이템 구매.
	        //1 해당 유저 의 보유 캐시와 아이템의 가격을 비교. 성공일시에만 다음 함수 실행
	   		ItemPackage pack=ItemService.getitempackage(pk);
	 		int price=pack.getPACKAGE_PRICE();
	 		if(memberService.checkusercash(memberid) > price ) {
	 		
	 	  //2 my_item 테이블에 새롭게 인설트==>
	 		HashMap<Object,Object> map=null;
	 		String items=pack.getITEMLIST_NO();
	 		String split[] = items.split(",");
	 		int reuslt1=0;
	 		for (String i: split) {
	 	        map=new HashMap<Object,Object>();
	 	        map.put("memberid", memberid);
	 	        map.put("pk",Integer.parseInt(i));
	 	        reuslt1+=ItemService.insertmyitem(map);
	 	   };
	 		
	 	   //3 맴버테이블의 캐시 차감==>
	 			map=new HashMap<Object,Object>();
	 			map.put("memberid", memberid);
	 			map.put("price", price);
	 			int reuslt2=memberService.decreaseCash(map);
	 			Member member=(Member)session.getAttribute("loginUser");
				member.setMember_cash(memberService.checkusercash(member.getMember_id()));
	 		//4 itemlist에 판매수+1 업데이트 	
	 			int reuslt3=0;
	 			for (String i: split) {
		 	    reuslt3+=ItemService.updatesellcount(Integer.parseInt(i));
		 	   };
	 		
	 		System.out.println("reuslt1= 인설트된아이템갯수."+reuslt1);
	 		System.out.println("reuslt2="+reuslt2);
	 		System.out.println("reuslt3="+reuslt3);
	 		PrintWriter out = null;
	 		try {
	 				out = response.getWriter();
	 			} catch (IOException e) {
	 				// TODO Auto-generated catch block
	 				e.printStackTrace();
	 			}
	 			if(reuslt1!=0 && reuslt2==1&& reuslt3 == reuslt1 )
	 			out.print(1);
	 			else
	 			out.print(0);
	 			out.flush();
	 			out.close();
	 		}else {
	 			PrintWriter out = null;
	 			try {
	 				out = response.getWriter();
	 			} catch (IOException e) {
	 				// TODO Auto-generated catch block
	 				e.printStackTrace();
	 			}
	 			out.print(0);
	 			out.flush();
	 			out.close();
	 		}
	 		
   }
	
   @RequestMapping("cjsmix.go")
   public void cjsmix(@RequestParam("memberid") String memberid, @RequestParam("pk1") int pk1,@RequestParam("pk2") int pk2,@RequestParam("pk3") int pk3, HttpServletResponse response) {
	   
	   
	   //해당 pk를 제외하고 새로운 이모티콘 하나 가져옴.
	   System.out.println(pk1);
	   System.out.println(pk2);
	   System.out.println(pk3);
	   HashMap<Object,Object> map=new HashMap<Object,Object>();
	   map.put("pk1",pk1);
	   map.put("pk2",pk2);
	   map.put("pk3",pk3);
	   ITEMLIST newicon=ItemService.getmixicon(map);
	   ItemService.turnitemstatus(pk1);
	   ItemService.turnitemstatus(pk2);
	   ItemService.turnitemstatus(pk3);
	   map=new HashMap<Object,Object>();
	   map.put("memberid", memberid);
	    map.put("pk",newicon.getITEMLIST_NO());
		int reuslt1=ItemService.insertmyitem(map);
	    JSONObject job = new JSONObject();
		job.put("ITEMFILENAME", newicon.getITEMFILENAME());
		job.put("ITEMLIST_NO", newicon.getITEMLIST_NO());
		job.put("ITEMNAME", newicon.getITEMNAME());
		job.put("ITEMPRICE", newicon.getITEMPRICE());
	   
		PrintWriter out = null;
	   
		try {
			out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		out.print(job.toJSONString());
		out.flush();
		out.close();
		}
	   
   
   
}











