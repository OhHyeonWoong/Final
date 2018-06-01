package com.kh.goodluck.faq.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.faq.model.vo.Faq;

@Repository("faqDao")
public class FaqDao {
	        
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public FaqDao() {
   
	}
	
	public List<Faq> selectAll(){
		
		return sqlSession.selectList("faqAllList");
	}

	public List<Faq> selectUseingList() {

		return sqlSession.selectList("faqUseList");
	}

	public List<Faq> selectPaymentList() {

		return sqlSession.selectList("faqPaymentList");
	}

	public List<Faq> selectReportList() {

		return sqlSession.selectList("faqReportList");
	}

	public List<Faq> selectLoginList() {

		return sqlSession.selectList("faqLogList");
	}

	//main화면 faq Top5
	public List<Faq> faqTop5() {
		
		return sqlSession.selectList("faqTop5");
	}
	
	//main화면 해당 Faq상세보기
	public Faq faqDetail(int faq_no) {
		return sqlSession.selectOne("faqDetailShow", faq_no);
	}

	//Faq Ajax로 수정하기
	public int reDefineFaq(Faq reFaq) {
		return sqlSession.update("faqReDefine", reFaq);
	}

}  















