package com.kh.goodluck.report.model.service;

import java.util.*;

import com.kh.goodluck.report.model.vo.Report;

public interface ReportService {
	public abstract int selectMyPageReportListCount(String member_id);
	public abstract List<Report> selectMyPageReport(HashMap<Object, Object> map2);
	public abstract Report selectReportDetail(int report_no);
	public abstract int insertMyReport(Report report);
	public abstract int deleteMyReport(int report_no);
}
