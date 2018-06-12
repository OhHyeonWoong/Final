package com.kh.goodluck.faq.model.service;

import java.util.*;

import com.kh.goodluck.faq.model.vo.Faq;

public interface FaqService {
    
	abstract public List<Faq> selectAll(); //전체리스트 추출
	abstract public List<Faq> selectPaymentList(); //결제관련리스트 추출	
	abstract public List<Faq> selectReportList(); //신고관련리스트 추출
	abstract public List<Faq> selectUseingList(); //이용관련리스트 추출
	abstract public List<Faq> selectLoginList(); //로그인관련리스트 추출
	public abstract List<Faq> faqTop5(); //main화면 faq Top5
	public abstract Faq faqDetail(int faq_no);
	public abstract int reDefineFaq(Faq reFaq);
	public abstract int changeUseingList(Faq alterFaq);

}
