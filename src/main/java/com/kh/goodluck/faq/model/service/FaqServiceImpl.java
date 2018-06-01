package com.kh.goodluck.faq.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.faq.model.dao.FaqDao;
import com.kh.goodluck.faq.model.vo.Faq;

@Service("FaqService")
public class FaqServiceImpl implements FaqService {
		  
	@Autowired
	private FaqDao faqDao;
	
	public FaqServiceImpl() { //기본생성자
		// TODO Auto-generated constructor stub
	}

	@Override //전체목록 리스트
	public List<Faq> selectAll() {
		
		return faqDao.selectAll();
	}
	
	@Override //이용관련 리스트
	public List<Faq> selectUseingList() {
		
		return faqDao.selectUseingList();
	}
	
	@Override //결제관련 리스트
	public List<Faq> selectPaymentList() {

		return faqDao.selectPaymentList();
	}
	 @Override //신고관련 리스트
	public List<Faq> selectReportList() {

		return faqDao.selectReportList();
	}
	 
	 @Override //로그인관련 리스트
	public List<Faq> selectLoginList() {
	
		return faqDao.selectLoginList();
	}
	 
	@Override //main화면 faq Top5
	public List<Faq> faqTop5() { 

		return faqDao.faqTop5();
	}
	
	@Override //main화면 해당 Faq상세보기
	public Faq faqDetail(int faq_no) {
		
		return faqDao.faqDetail(faq_no);
	}
	 
	@Override //Faq Ajax로 수정하기
	public int reDefineFaq(Faq reFaq) {
		
		return faqDao.reDefineFaq(reFaq);
	}
	
	
}
