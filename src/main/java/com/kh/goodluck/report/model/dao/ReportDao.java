package com.kh.goodluck.report.model.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.report.model.vo.Report;

@Repository("reportDao")
public class ReportDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int selectMyPageReportListCount(String member_id) {
		return sqlSession.selectOne("myReportListCount", member_id);
	}

	public List<Report> selectMyPageReport(HashMap<Object, Object> map2) {
		return sqlSession.selectList("myPageList", map2);
	}

	public Report selectReportDetail(int report_no) {
		return sqlSession.selectOne("seletReportDetail", report_no);
	}

	public int insertMyReport(Report report) {
		return sqlSession.insert("insertMyReport", report);
	}

	public int deleteMyReport(int report_no) {
		return sqlSession.delete("deleteMyReport", report_no);
	}
	
}
