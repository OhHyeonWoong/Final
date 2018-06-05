package com.kh.goodluck.faq.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.faq.model.service.FaqService;
import com.kh.goodluck.faq.model.vo.Faq;
import com.kh.goodluck.notice.model.vo.Notice;

@Controller
public class FaqController {
	   
	@Autowired
	private FaqService faqService;

	public FaqController() {
		// TODO Auto-generated constructor stub
	} 
	
	
	@RequestMapping("faqPage.go")
	public ModelAndView faqPageMove(ModelAndView mv) {
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트

		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/FAQ");
		
		return mv;	
	}
	
	@RequestMapping("faqdetail.go")
	public ModelAndView noticeDetailShow(@RequestParam("faq_checkno") int faq_no, ModelAndView mv) {
		
		Faq userselectfaq = faqService.faqDetail(faq_no);
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트		
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트

		mv.addObject("useinglist", useinglist);	
		mv.addObject("alllist", alllist);		
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);		
		
		//System.out.println("조회한 faq정보를 toString으로 출력하기 : "+userselectfaq.toString());
		
		
		mv.addObject("faq_info", userselectfaq);
		mv.setViewName("A4.BSH/FAQDetail");
		
		return mv;
	}
	
	@RequestMapping(value="changeFaqContents.go", method=RequestMethod.GET) //단일글을 수정할때 쓰는것
	public void reDefineFaq(@RequestParam("select_fno") int faq_no,@RequestParam("select_ftitle") String faq_title, @RequestParam("select_fcontent") String faq_content, @RequestParam("select_fcategory") String faq_category) {
		
		 /*System.out.println("수정한 정보출력~~~~"); 
		 System.out.println(faq_no);
		 System.out.println(faq_title);
		 System.out.println(faq_content);
		 System.out.println(faq_category);*/
		 
		 Faq reFaq = new Faq(faq_no, faq_category, faq_title, faq_content);
		 
		 int changeFaq = faqService.reDefineFaq(reFaq);
		 
		 if(changeFaq>=1) {
			 System.out.println("FAQ게시글 수정에 성공하였습니다.");
		 }else {
			 System.out.println("FAQ게시글 수정에 실패하였습니다.");
		 }	 
		 //단일 글 수정이기때문에 페이지의 이동이없음 
	}
	
	@RequestMapping(value="changeFaqContents1.go",method=RequestMethod.GET) //여럿 리스트에서 수정하는 것(이용영역)
	public ModelAndView reDefineFaq1(@RequestParam("f_pk_a")String userselectPk, @RequestParam("f_title_a")String f_title,@RequestParam("f_category_a")String f_category, @RequestParam("f_contents_a")String f_contents,ModelAndView mv) {
		
		int parsingPk = Integer.parseInt(userselectPk);
		
		Faq alterFaq = new Faq(parsingPk, f_category, f_title, f_contents);
		int result = faqService.changeUseingList(alterFaq);
		if(result>=1) {
			System.out.println("FAQ게시글 수정에 성공하였습니다.");
		}else {
			System.out.println("FAQ게시글 수정에 실패하였습니다.");
		}	 
		
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트
		
		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/FAQ");
		return mv;	
	}
	@RequestMapping(value="changeFaqContents2.go",method=RequestMethod.GET) //여럿 리스트에서 수정하는 것(이용영역)
	public ModelAndView reDefineFaq2(@RequestParam("f_pk_u")String userselectPk, @RequestParam("f_title_u")String f_title,@RequestParam("f_category_u")String f_category, @RequestParam("f_contents_u")String f_contents,ModelAndView mv) {
		
		int parsingPk = Integer.parseInt(userselectPk);
		
		Faq alterFaq = new Faq(parsingPk, f_category, f_title, f_contents);
		int result = faqService.changeUseingList(alterFaq);
		 if(result>=1) {
			 System.out.println("FAQ게시글 수정에 성공하였습니다.");
		 }else {
			 System.out.println("FAQ게시글 수정에 실패하였습니다.");
		 }	 
		 
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트

		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/T_UsingListFirst");
		return mv;	
	}
	
	@RequestMapping(value="changeFaqContents3.go",method=RequestMethod.GET) //여럿 리스트에서 수정하는 것(결제영역)
	public ModelAndView reDefineFaq3(@RequestParam("f_pk_p")String userselectPk, @RequestParam("f_title_p")String f_title,@RequestParam("f_category_p")String f_category, @RequestParam("f_contents_p")String f_contents,ModelAndView mv) {
		
		int parsingPk = Integer.parseInt(userselectPk);
		System.out.println("수정 pk번호 : "+parsingPk);
		System.out.println("수정 시도하는 카테고리 : "+f_category);
		System.out.println("수정 시도하는 글제목 : "+f_title);
		System.out.println("수정 시도하는 글내용 : "+f_contents);

		
		Faq alterFaq = new Faq(parsingPk, f_category, f_title, f_contents);
		int result = faqService.changeUseingList(alterFaq);
		if(result>=1) {
			System.out.println("FAQ게시글 수정에 성공하였습니다.");
		}else {
			System.out.println("FAQ게시글 수정에 실패하였습니다.");
		}	 
		
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트
		
		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/T_PayListFirst");
		return mv;	
	}
	
	@RequestMapping(value="changeFaqContents4.go",method=RequestMethod.GET) //여럿 리스트에서 수정하는 것(신고영역)
	public ModelAndView reDefineFaq4(@RequestParam("f_pk_r")String userselectPk, @RequestParam("f_title_r")String f_title,@RequestParam("f_category_r")String f_category, @RequestParam("f_contents_r")String f_contents,ModelAndView mv) {
		
		int parsingPk = Integer.parseInt(userselectPk);
		System.out.println("수정 pk번호 : "+parsingPk);
		System.out.println("수정 시도하는 카테고리 : "+f_category);
		System.out.println("수정 시도하는 글제목 : "+f_title);
		System.out.println("수정 시도하는 글내용 : "+f_contents);
		
		Faq alterFaq = new Faq(parsingPk, f_category, f_title, f_contents);
		int result = faqService.changeUseingList(alterFaq);
		if(result>=1) {
			System.out.println("FAQ게시글 수정에 성공하였습니다.");
		}else {
			System.out.println("FAQ게시글 수정에 실패하였습니다.");
		}	 
		
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트
		
		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/T_ReportListFirst");
		return mv;	
	}
	
	@RequestMapping(value="changeFaqContents5.go",method=RequestMethod.GET) //여럿 리스트에서 수정하는 것(신고영역)
	public ModelAndView reDefineFaq5(@RequestParam("f_pk_r")String userselectPk, @RequestParam("f_title_r")String f_title,@RequestParam("f_category_r")String f_category, @RequestParam("f_contents_r")String f_contents,ModelAndView mv) {
		
		int parsingPk = Integer.parseInt(userselectPk);
		System.out.println("수정 pk번호 : "+parsingPk);
		System.out.println("수정 시도하는 카테고리 : "+f_category);
		System.out.println("수정 시도하는 글제목 : "+f_title);
		System.out.println("수정 시도하는 글내용 : "+f_contents);
		
		Faq alterFaq = new Faq(parsingPk, f_category, f_title, f_contents);
		int result = faqService.changeUseingList(alterFaq);
		if(result>=1) {
			System.out.println("FAQ게시글 수정에 성공하였습니다.");
		}else {
			System.out.println("FAQ게시글 수정에 실패하였습니다.");
		}	 
		
		//Faq로 이동할때 경우의 수에 대한 모든 리스틀 보낸다.		         
		ArrayList<Faq> alllist = (ArrayList<Faq>) faqService.selectAll(); //전체목록 리스트
		ArrayList<Faq> useinglist = (ArrayList<Faq>)faqService.selectUseingList(); //이용관련 리스트
		ArrayList<Faq> paymentlist = (ArrayList<Faq>)faqService.selectPaymentList(); //결제관련 리스트
		ArrayList<Faq> reportlist = (ArrayList<Faq>)faqService.selectReportList(); //신고관련 리스트
		ArrayList<Faq> loginlist = (ArrayList<Faq>)faqService.selectLoginList(); //로그인관련 리스트
		
		mv.addObject("alllist", alllist);
		mv.addObject("useinglist", useinglist);	
		mv.addObject("paymentlist", paymentlist);
		mv.addObject("reportlist", reportlist);
		mv.addObject("loginlist", loginlist);
		mv.setViewName("A4.BSH/T_LoginListFirst");
		return mv;	
	}

	
	
	@RequestMapping("delFaq.go")
	public String deleteFaq(@RequestParam("selectFaqNo") int faq_no) {
		System.out.println("삭제를 시도하는 Faq의 번호 : "+faq_no);
		
		return null;
	}
	
	
}













