package com.kh.goodluck.faq.model.service;

import java.util.ArrayList;

import com.kh.goodluck.faq.model.dao.FAQDao;
import com.kh.goodluck.faq.model.vo.FAQ;

public class FAQServiceImpl implements FAQService{
	
	public FAQServiceImpl() {}
	
	@Override
	public ArrayList<FAQ> selectAll() {
		ArrayList<FAQ> alllist = new FAQDao().selectAll();
		
		
		return alllist;
	}
}
