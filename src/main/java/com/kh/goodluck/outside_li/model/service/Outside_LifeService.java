package com.kh.goodluck.outside_li.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.outside_li.model.dao.Outside_LifeDao;
import com.kh.goodluck.outside_li.model.vo.Outside_Life;

@Service
public class Outside_LifeService {
	 
	@Autowired
	private Outside_LifeDao outside_LifeDao;
	
	public Outside_LifeService() {
		// TODO Auto-generated constructor stub
	}
	
	public List<Outside_Life> alllist_life(){
		
		return outside_LifeDao.alllist_life();
	}

	public List<Outside_Life> alllist_life2() {
		// TODO Auto-generated method stub
		return outside_LifeDao.alllist_life2();
	}
	
	public List<Outside_Life> alllist_life3() {
		// TODO Auto-generated method stub
		return outside_LifeDao.alllist_life3();
	}
	
	public List<Outside_Life> alllist_life4() {
		// TODO Auto-generated method stub
		return outside_LifeDao.alllist_life4();
	}

	public Outside_Life ukjaeBasicLifePageCarouseldata() {
		//생활화면에 기본적으로 셋팅되는 카로셀객체
		return outside_LifeDao.ukjaeBasicLifePageCarouseldata();
	}

	public Outside_Life ukjaeBasicLifePageRepresentdata() {
		//생활화면에 기본적으로 셋팅되는 대표이미지객체
		return outside_LifeDao.ukjaeBasicLifePageRepresentdata();
	}

	public Outside_Life ukjaeCheckingLifeCarousel(String carouselcheck) {
		//생활화면에 변경될 carousel이미지객체를 리턴받는 메소드
		return outside_LifeDao.ukjaeCheckingLifeCarousel(carouselcheck);
	}

	public Outside_Life ukjaeCheckingLifePresentImage(String representimagecheck) {
		//생활화면에 변경될 대표 이미지객체를 리턴받는 메소드
		return outside_LifeDao.ukjaeCheckingLifePresentImage(representimagecheck);
	}

}
