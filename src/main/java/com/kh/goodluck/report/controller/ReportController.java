package com.kh.goodluck.report.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.item.model.vo.MyPageItem;
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
	
	@RequestMapping(value="lbjReportDelete.go",method=RequestMethod.POST)
	public void reportDeleteMethod(@RequestParam("report_no") int report_no,HttpServletResponse response) throws IOException{
		//report 삭제 메소드
		System.out.println("reportDeleteMethod report_no = " + report_no);
		int result = reportService.deleteMyReport(report_no);
		
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.print("게시글 삭제 성공");
		}else {
			out.print("게시글 삭제 실패");
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjMyReport.go",method=RequestMethod.POST)
	public void selectMyReportMethod(HttpServletRequest request,HttpServletResponse response) 
												throws IOException{
		System.out.println("lbjMyReport.go run...");
		String member_id = request.getParameter("member_id");		
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
	    int qnaCurrentPage = 1;
		if(request.getParameter("page") != null) {
			qnaCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("Report qnaCurrentPage = " + qnaCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int qnaLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int reportListCount = reportService.selectMyPageReportListCount(member_id);
		int reportMaxPage = (int)((double)reportListCount / qnaLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int qnaStartPage = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 1;
		int qnaStartRow = (qnaCurrentPage-1)*qnaLimit+1; 
	    int reportEndRow = qnaStartRow + qnaLimit - 1;
	    int reportEndFor = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 6;
	    if(reportEndFor > reportMaxPage) {
	    	reportEndFor = reportMaxPage;
	    }
	    
	    System.out.println("Report qnaStartRow = " + qnaStartRow);
	    System.out.println("reportEndRow = " + reportEndRow);
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", reportEndRow);
	    map.put("member_id", member_id);
		ArrayList<Report> myReport = (ArrayList<Report>)reportService.selectMyPageReport(map);
		
		System.out.println("myReport size = " + myReport.size());
		
		 if (reportMaxPage < reportEndRow)
			 reportEndRow = reportMaxPage;

		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myReport.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("report_no", myReport.get(i).getReport_no());
			job2.put("report_title", myReport.get(i).getReport_title());
			job2.put("report_content", myReport.get(i).getReport_content());
			job2.put("report_writer", myReport.get(i).getReport_writer());
			job2.put("report_category", myReport.get(i).getReport_category());
			job2.put("report_date", myReport.get(i).getReport_date().toString());
			job2.put("report_rename_filename", myReport.get(i).getReport_rename_filename());
			if(i == 0) {
				job2.put("reportMaxPage", reportMaxPage);
				job2.put("qnaStartPage", qnaStartPage);
				job2.put("reportEndRow", reportEndRow);
				job2.put("qnaCurrentPage", qnaCurrentPage);
				job2.put("reportListCount", reportListCount);
				job2.put("reportEndFor", reportEndFor);
			}
			jarr.add(job2);
			System.out.println("job를 찍어보자" + i + " = " + job2);
		}
		
		jobj.put("report", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
}
