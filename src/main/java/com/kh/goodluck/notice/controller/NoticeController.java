package com.kh.goodluck.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aspectj.weaver.NewConstructorTypeMunger;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.notice.model.service.NoticeService;
import com.kh.goodluck.notice.model.vo.Notice;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	public NoticeController() {
		
	}
	
	@RequestMapping("Notice.go") //게시글 전체보기
	public ModelAndView notice(HttpServletRequest request,HttpServletResponse response,ModelAndView mv) {
		 
		ArrayList<Notice> noticeAllList = new ArrayList<Notice>();	
		noticeAllList = (ArrayList<Notice>) noticeService.pullNoticeAllList();
		mv.addObject("fowordNoticeAllList", noticeAllList);
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
	public String noticeWriteGo() {	
		return "A4.BSH/NoticeWrite";
	}
	
	@RequestMapping("addnotice.go") //새로운 공지글 쓰기
	public void noticeAdd(@RequestParam("new_ntitle") String new_ntitle, @RequestParam("new_ncontents") String new_ncontents) {
				
		
		System.out.println("새로운공지내용 : " + new_ntitle + " , " + new_ncontents);
		
		Notice newinsertnotice = new Notice(new_ntitle, new_ncontents);
		
		int insertNotice = noticeService.noticeAdd(newinsertnotice);
		
		System.out.println(insertNotice+"개의 공지글이 NoticeTable에 추가되었습니다.");
		
	}
	
	@RequestMapping(value="notice_alter.go", method=RequestMethod.GET) //게시글 수정하기Ajax
	public void noticeContentUpdate(@RequestParam("noticeNo") int notice_reno, @RequestParam("noticeTitle") String notice_retitle,@RequestParam("noticecontents") String notice_recontents) {

		Notice newnotice = new Notice(notice_reno, notice_retitle, notice_recontents);
		
		int updateresult = noticeService.noticeContentUpdate(newnotice);
		
		if(updateresult>=1) {
			System.out.println("공지사항 수정이 완료되었습니다.");
		}else {
			System.out.println("공지사항 수정에 실패하였습니다.");
		}
		
	}


	
}
