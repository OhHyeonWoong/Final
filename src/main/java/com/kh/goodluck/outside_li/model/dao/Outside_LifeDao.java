package com.kh.goodluck.outside_li.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.outside_li.model.vo.Outside_Life;

@Repository("outside_LifeDao")
public class Outside_LifeDao {
 
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Outside_LifeDao() {
		// TODO Auto-generated constructor stub
	}

	public List<Outside_Life> alllist_life() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("wookLifeAreaImageList");
	}

	public List<Outside_Life> alllist_life2() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("wookLifeAreaImageList2");
	}

	public List<Outside_Life> alllist_life3() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("wookLifeAreaImageList3");
	}

	public List<Outside_Life> alllist_life4() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("wookLifeAreaImageList4");
	}

	public Outside_Life ukjaeBasicLifePageCarouseldata() {
		//메인화면에 기본적으로 셋팅되는 카로셀객체
		return sqlSession.selectOne("basiclifecarousel");
	}

	public Outside_Life ukjaeBasicLifePageRepresentdata() {
		//생활화면에 기본적으로 셋팅되는 대표이미지객체
		return sqlSession.selectOne("basicrepresentimage");
	}

	public Outside_Life ukjaeCheckingLifeCarousel(String carouselcheck) {
		//생활화면에 변경될 carousel이미지객체를 리턴받는 메소드
		return sqlSession.selectOne("lifecarouselcheck", carouselcheck);
	}

	public Outside_Life ukjaeCheckingLifePresentImage(String representimagecheck) {
		//생활화면에 변경될 대표 이미지객체를 리턴받는 메소드
		return sqlSession.selectOne("representimagecheck", representimagecheck);
	}

	public Outside_Life ukjaeGetlifecontents(String life) {
		//생활 객체 리턴받는 메소드
		return sqlSession.selectOne("ukjaereturnLife", life);
	}
	
	
	
	
	
}
