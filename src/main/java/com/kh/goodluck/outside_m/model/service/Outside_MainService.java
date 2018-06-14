package com.kh.goodluck.outside_m.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.outside_m.model.dao.Outside_MainDao;
import com.kh.goodluck.outside_m.model.vo.Outside_Main;

@Service
public class Outside_MainService {
	
	@Autowired
	private Outside_MainDao outside_MainDao;
	
	public Outside_MainService() {
		// TODO Auto-generated constructor stub
	}

	//관리자 뷰단 수정페이지 첫Ajax 
	public List<Outside_Main> alllist() {
		return outside_MainDao.alllist();
	}
	
	public List<Outside_Main> alllist2(){
		return outside_MainDao.alllist2();
	}
	
}
