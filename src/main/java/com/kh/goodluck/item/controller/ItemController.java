package com.kh.goodluck.item.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
	
	@RequestMapping("cjsgetmyitem.go")
	public void getmyitem(@RequestParam("member_id") String memberid, HttpServletResponse response) throws IOException {
	//내아이템 작업.
		System.out.println("member : " + memberid);
		//로그인 작업을 합니다 세션에 넣어요
		
		List<GetMyItem> al = ItemService.GetMyItem(memberid);
		
		System.out.println(al);
		
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
		jarr.add(job);
		}
		
		json.put("havingitem", jarr);
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("jdkitemlist.go")
	public String itemList() {
		return "A3.JDK/admin_itemlist";
	}
	
}


















