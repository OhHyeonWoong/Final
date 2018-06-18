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
	
	public List<Outside_Main> alllists() {
		return outside_MainDao.alllists();
	}

	public List<Outside_Main> alllist2(){
		return outside_MainDao.alllist2();
	}
	
	public List<Outside_Main> alllist3(){
		return outside_MainDao.alllist3();
	}
	
	
	//메인화면에 기본적으로 셋팅되는 카로셀객체
	public Outside_Main ukjaeBasicMainPageCarouseldata() {
		return outside_MainDao.ukjaeBasicMainPageCarouseldata();
	}
	//메인화면에 기본적으로 셋팅되는 유투브객체
	public Outside_Main ukjaeBasicMainPageYoutubedata() {
		return outside_MainDao.ukjaeBasicMainPageYoutubedata();
	}
		

	//메인화면에 변경될 carousel이미지객체를 리턴받는 메소드
	public Outside_Main ukjaeCheckingCarousel(String carouselcheck){
		return outside_MainDao.ukjaeCheckingCarousel(carouselcheck);
	}

	//메인화면에 변경될 youtube영상객체를 리턴받는 메소드
	public Outside_Main ukjaeCheckingYoutube(String youtubecheck) {
		return outside_MainDao.ukjaeCheckingYoutube(youtubecheck);
	}




	}


	

