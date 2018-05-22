package com.kh.goodluck.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	//////////////////
}
