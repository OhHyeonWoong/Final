package com.kh.goodluck.report.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	@RequestMapping(value="lbjReportWrite.go",method=RequestMethod.POST)
	public void reportWriteMethod(
			@RequestParam(name="file",required=false) MultipartFile file,HttpServletRequest request,
			Report report,HttpServletResponse response) 
			throws IOException{
		//리포트 작성 메소드
		System.out.println("reportWrite = " + report.getReport_category());
		//System.out.println("reportWrite = " + report.getReport_rename_filename());
		
		String path = request.getSession().getServletContext().getRealPath("resources/uploadReportFile");
		String fileName = file.getOriginalFilename();
		
		/*System.out.println("report path = " + path);
		System.out.println("report = " + report);
		System.out.println("report fileName = " + fileName);*/
		if(fileName != report.getReport_rename_filename()) {
			System.out.println("report 파일 저장하는 if문 진입");
			report.setReport_rename_filename(fileName);
			try {
				//파일을 해당 디렉토리에 저장
				file.transferTo(new File(path + "\\" + fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int result = reportService.insertMyReport(report);
		if(result > 0) {
			System.out.println("리포트 작성 성공!");
		}else {
			System.out.println("리포트 작성 실패!");
		}
		response.sendRedirect("lbjmypage.go?member_id="+report.getReport_writer());
	}
	
}
