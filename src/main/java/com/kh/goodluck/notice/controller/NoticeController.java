package com.kh.goodluck.notice.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aspectj.weaver.NewConstructorTypeMunger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.notice.model.service.NoticeService;
import com.kh.goodluck.notice.model.vo.Notice;
import com.kh.goodluck.qna.model.vo.QNA;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	public NoticeController() {
		
	}
	
	@RequestMapping("Notice.go") //게시글 전체보기
	public ModelAndView notice(HttpServletRequest request,HttpServletResponse response,ModelAndView mv) {
		
		ArrayList<Notice> basiclist = (ArrayList<Notice>) noticeService.pagingOne();
		//System.out.println("리스트 싸이즈 : "+basiclist);
		mv.addObject("basiclist", basiclist);
		mv.setViewName("A4.BSH/Notice");
	    return mv;
	}	
	    
	
	@RequestMapping("ndetail.go") //게시글 상세보기
	public ModelAndView noticeDetailShow(@RequestParam("notice_checkno") int notice_no, ModelAndView mv) {
		
		Notice userselectnotice = noticeService.noticeDetail(notice_no);
		
		//System.out.println("조회된 객체의 정보를 toString으로 출력하기 : "+userselectnotice.toString()+"\n");

		mv.addObject("notice_info", userselectnotice);
		mv.setViewName("A4.BSH/NoticeDetail");
		
		return mv;
	}
	
	@RequestMapping("noticewritepage.go") //관리자 공지사항쓰기 창OPEN 
	public String noticeWritePageGo() {	
		return "A4.BSH/NoticeWrite";
	}

	@RequestMapping(value="insertnewnotice.go",method=RequestMethod.GET)
	public String noticeInsert_n(@RequestParam("input_title")String n_title,@RequestParam("input_content")String n_contents) {
		System.out.println(n_title);
		System.out.println(n_contents);
		Notice new_notice = new Notice(n_title, n_contents);
		
		int insertresult = noticeService.noticeAdd(new_notice);
		if(insertresult>0) {
			System.out.println("새로운 공지가 추가되었습니다~~^^");
		}
		return "A4.BSH/NoticeSucccessPopup";
	}
	
	@RequestMapping("popup.go")
	public String SuccesspopMove() {
		return "A4.BSH/NoticeSucccessPopup";
	}

	@RequestMapping(value="notice_alter.go", method=RequestMethod.GET) //관리자 게시글 수정하기 그 자리에서 수정함(Ajax)
	public void noticeContentUpdate(@RequestParam("noticeNo") int notice_reno, @RequestParam("noticeTitle") String notice_retitle,@RequestParam("noticecontents") String notice_recontents) {

		Notice newnotice = new Notice(notice_reno, notice_retitle, notice_recontents);
		
		int updateresult = noticeService.noticeContentUpdate(newnotice);
		
		if(updateresult>0) {
			System.out.println("공지사항 수정이 완료되었습니다.");
		}else {
			System.out.println("공지사항 수정에 실패하였습니다.");
		}
	}	
	
	@RequestMapping("admin_ndelete.go")
	public ModelAndView noticeDel(@RequestParam("select_pk")String n_pk,ModelAndView mv) {
		System.out.println("삭제를 시도한 공지번호 : "+n_pk);
		int parsing_pk = Integer.parseInt(n_pk);
		
		int deleteresult = noticeService.noticeDel(parsing_pk);
		
		if(deleteresult>0) {
			System.out.println("공지사항 삭제 완료되었습니다.");
		}else {
			System.out.println("공지사항 삭제에 실패하였습니다.");
		}		
		
		ArrayList<Notice> basiclist = (ArrayList<Notice>) noticeService.pagingOne();
		//System.out.println("리스트 싸이즈 : "+basiclist);
		mv.addObject("basiclist", basiclist);
		mv.setViewName("A4.BSH/Notice");
		return mv;
	}
	
	@RequestMapping("firstListfollow.go")
	public void pagingOne(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ArrayList<Notice> pageing1 = (ArrayList<Notice>) noticeService.pagingOne();
		
		System.out.println("받아온 리스트 size() : "+pageing1.size());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		for(int i=0; i<pageing1.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("notice_no", pageing1.get(i).getNotice_no());
			json2.put("notice_title", pageing1.get(i).getNotice_title());
			json2.put("notice_writer", pageing1.get(i).getNotice_writer());
			json2.put("notice_content", pageing1.get(i).getNotice_content());
			json2.put("notice_date", pageing1.get(i).getNotice_date().toString());
			jarr.add(json2);
		}
		json.put("oneone_list", jarr);
		response.setContentType("application/json; charset=utf-8");		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("secondListfollow.go")
	public void pagingTwo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ArrayList<Notice> pageing2 = (ArrayList<Notice>) noticeService.pagingTwo();
		
		System.out.println("받아온 리스트 size() : "+pageing2.size());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		for(int i=0; i<pageing2.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("notice_no", pageing2.get(i).getNotice_no());
			json2.put("notice_title", pageing2.get(i).getNotice_title());
			json2.put("notice_writer", pageing2.get(i).getNotice_writer());
			json2.put("notice_content", pageing2.get(i).getNotice_content());
			json2.put("notice_date", pageing2.get(i).getNotice_date().toString());
			jarr.add(json2);
		}
		
		
		//System.out.println(json.toString());
		json.put("twotwo_list", jarr);
		response.setContentType("application/json; charset=utf-8");		
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}


	
}
