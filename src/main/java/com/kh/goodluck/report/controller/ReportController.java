package com.kh.goodluck.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReportController {

	public ReportController() {
		
	}
	
	@RequestMapping("Report.go")
	public String report(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Report";	
	}
	

	
}
