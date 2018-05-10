package com.kh.goodluck.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentController {
	
	public PaymentController() {
		
	}
	
	@RequestMapping(value = "ohw-movePaymentPage", method = RequestMethod.GET)
	public String movePaymentPage() {
		return "A1.OHW/payment";		
	}	
}
