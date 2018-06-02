package com.kh.goodluck.report.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.report.model.service.ReportService;
import com.kh.goodluck.report.model.vo.Report;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;

	public ReportController() {
		
	}
	
	@RequestMapping("Report.go")
	public String report(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Report";	
	}
	
	//made by lbj
	@RequestMapping(value="lbjGoReportDetail.go")
	public ModelAndView goReportDetailView(ModelAndView mv,@RequestParam(name="report_no") int report_no) {
		System.out.println("report_no = " + report_no);
		///////////////////
		Report report = reportService.selectReportDetail(report_no);
		///////////////////
		mv.addObject("report", report);
		mv.setViewName("A6.LBJ/report/reportDetail");
		return mv;
	}
	
	@RequestMapping(value="lbjGoReportWrite.go")
	public ModelAndView goReportWriteView(ModelAndView mv) {
		mv.setViewName("A6.LBJ/report/reportWrite");
		return mv;
	}
	/*,method=RequestMethod.POST*/
	@RequestMapping(value="lbjReportWrite.go")
	public void reportWriteMethod(Report report,HttpServletResponse response) throws IOException{
		//리포트 작성 메소드
		System.out.println("reportWrite = " + report.getReport_category());
		System.out.println("reportWrite = " + report.getReport_rename_filename());
		int result = reportService.insertMyReport(report);
		if(result > 0) {
			System.out.println("리포트 작성 성공!");
		}else {
			System.out.println("리포트 작성 실패!");
		}
		response.sendRedirect("lbjmypage.go?member_id="+report.getReport_writer());
	}
	
}
