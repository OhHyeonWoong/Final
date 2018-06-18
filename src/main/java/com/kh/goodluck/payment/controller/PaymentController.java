package com.kh.goodluck.payment.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.member.model.vo.Member;

@Controller
public class PaymentController {
	
	public PaymentController() {
		
	}
	
	@RequestMapping("ohw-movePaymentPage.go")
	public ModelAndView movePaymentPage(ModelAndView mv,HttpSession session) {
    //보드디테일-> '현재 메소드'  ->거래페이지.
	//결제 페이지로 가져가야 하는 정보는?
	//보드인포 가져간다.
	//또한 결제는 오너가 하는것임.  
    //세션이 없거나, 해당 '게시글'의 오너가 아닌경우 500에러로 보낸다.
	
	//비로그인상태(무세션)은 팅겨낸다.
	if(session.getValue("loginUser") == null) {
	mv.setViewName("A5.CJS/ErrorPage2");
	}else {
	//로그인 상태라면?
    //보드 디테일에서 받은 보드 pk를 기준으로 정보를 끌어온다.
		
	mv.setViewName("A1.OHW/payment");
	
	}
	
	return mv;
	
	}
	
	//병준 컨트롤러///////
	@RequestMapping(value="lbjmoveMileagePaymentPage.go")
	public String moveMileagePaymentPage() {
		return "A6.LBJ/payment/paymentView";
	}
	
	@RequestMapping(value="lbj-movePaymentPractice1.go")
	public String movePaymentPractice1() {
		return "A6.LBJ/payment/paymentPractice1";
	}
	
	@RequestMapping(value="lbj-movePaymentPractice2.go")
	public String movePaymentPractice2() {
		return "A6.LBJ/payment/paymentPractice2";
	}
	
	@RequestMapping(value="lbj-movePaymentPractice3.go")
	public String movePaymentPractice3() {
		return "A6.LBJ/payment/paymentPractice3";
	}
	
	//휴대폰 결제 화면으로
	@RequestMapping(value="lbjMovePaymentByPhone.go")
	public ModelAndView movePaymentByPhone(@RequestParam("chargeMoney") int chargeMoney,ModelAndView mv) {
		mv.addObject("chargeMoney", chargeMoney);
		mv.setViewName("A6.LBJ/payment/paymentByPhone");
		return mv;
	}
	//////////////////
	//신용카드 결제 화면으로
	/*@RequestMapping(value="lbjMovePaymentByCredit.go")
	public ModelAndView movePaymentByCredit(@RequestParam("chargeMoney") int chargeMoney,ModelAndView mv) {
		mv.addObject("chargeMoney", chargeMoney);
		mv.setViewName("A6.LBJ/payment/paymentByCredit");
		return mv;
	}*/
	///////////////////
	//카카오 결제 화면으로
	@RequestMapping(value="lbjMovePaymentByKakao.go")
	public ModelAndView movePaymentByKakao(@RequestParam("chargeMoney") int chargeMoney,ModelAndView mv) {
		mv.addObject("chargeMoney", chargeMoney);
		mv.setViewName("A6.LBJ/payment/paymentByKakao");
		return mv;
	}
	//////////////////
	//무통장 결제 화면으로
	@RequestMapping(value="lbjMovePaymentByNoBankBook.go")
	public ModelAndView movePaymentByNoBankBook(@RequestParam("chargeMoney") int chargeMoney,ModelAndView mv) {
		mv.addObject("chargeMoney", chargeMoney);
		mv.setViewName("A6.LBJ/payment/paymentByNoBankBook");
		return mv;
	}
	///////////////
}
