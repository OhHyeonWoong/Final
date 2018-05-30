package com.kh.goodluck.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value="notice_alter.go", method=RequestMethod.POST)
	public ModelAndView noticeContentUpdate(@RequestParam("noticeNo") int notice_no, @RequestParam("noticeTitle") String notice_retitle,@RequestParam("noticecontents") String notice_recontents,ModelAndView mv) {
		
		Notice newnotice = new Notice();
		newnotice.setNotice_no(notice_no);
		newnotice.setNotice_title(notice_retitle);
		newnotice.setNotice_content(notice_recontents);
		
		System.out.println("새로 변경시도한 내용 : "+newnotice.getNotice_no()+", "+newnotice.getNotice_title()+", "+newnotice.getNotice_content());
		
		//int change1 = noticeService.noticeContentUpdate(newnotice);
		
		return mv;
	}
	
	///////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping("Notice2.go")  //욱재작업 - 나의 거래중 테이블View로 이동
	public String notice2(HttpServletRequest request,HttpServletResponse response) {
		return "A2.JUJ/Dealing";	
	}
	

	
}
