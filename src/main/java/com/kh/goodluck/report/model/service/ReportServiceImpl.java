package com.kh.goodluck.report.model.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.report.model.dao.ReportDao;
import com.kh.goodluck.report.model.vo.Report;

@Service("reportService")
public class ReportServiceImpl implements ReportService{
	@Autowired
	private ReportDao reportDao;
	
	@Override
	public int selectMyPageReportListCount(String member_id) {
		return reportDao.selectMyPageReportListCount(member_id);
	}
	
	@Override
	public List<Report> selectMyPageReport(HashMap<Object, Object> map2) {
		return reportDao.selectMyPageReport(map2);
	}
	
	@Override
	public Report selectReportDetail(int report_no) {
		return reportDao.selectReportDetail(report_no);
	}
	
	@Override
	public int insertMyReport(Report report) {
		return reportDao.insertMyReport(report);
	}
	
	@Override
	public int deleteMyReport(int report_no) {
		return reportDao.deleteMyReport(report_no);
	}
}
