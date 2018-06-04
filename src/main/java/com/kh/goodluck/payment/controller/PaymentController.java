package com.kh.goodluck.payment.controller;

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
	
	@RequestMapping(value = "ohw-movePaymentPage.go", method = RequestMethod.GET)
	public String movePaymentPage() {
		return "A1.OHW/payment";		
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
}
