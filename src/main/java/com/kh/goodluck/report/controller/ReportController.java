package com.kh.goodluck.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReportController {

	public ReportController() {
		
	}
	
	@RequestMapping("Report.go")
	public String report(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Report";	
	}
	
	//made by lbj
	@RequestMapping(value="lbjGoReportDetail.go")
	public ModelAndView goReportDetailView(ModelAndView mv) {
		mv.setViewName("A6.LBJ/report/reportDetail");
		return mv;
	}
	
	@RequestMapping(value="lbjGoReportWrite.go")
	public ModelAndView goReportWriteView(ModelAndView mv) {
		mv.setViewName("A6.LBJ/report/reportWrite");
		return mv;
	}
	
}
