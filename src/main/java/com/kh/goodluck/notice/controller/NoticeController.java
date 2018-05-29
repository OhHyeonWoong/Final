package com.kh.goodluck.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("Notice.go")
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Notice";	
	}	
	
	/*@RequestMapping("NoticeDetail.go")
	public ModelAndView noticeDetailShow(@RequestParam("notice_no") int notice_no, ModelAndView mv) {
		
		Notice userselectnotice = noticeService.noticeDetail(notice_no);
		
		System.out.println("조회된 객체의 정보를 toString으로 출력하기 : "+userselectnotice.toString()+"\n");

		mv.addObject(userselectnotice);
		
		
		return mv;
	}*/
	
	@RequestMapping("Notice2.go")  //욱재작업 - 나의 거래중 테이블View로 이동
	public String notice2(HttpServletRequest request,HttpServletResponse response) {
		return "A2.JUJ/Dealing";	
	}
	

	
}
