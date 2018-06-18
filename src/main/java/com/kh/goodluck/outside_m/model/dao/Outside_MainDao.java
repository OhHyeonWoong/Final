package com.kh.goodluck.outside_m.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.outside_m.model.vo.Outside_Main;

@Repository("outside_MainDao")
public class Outside_MainDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Outside_Main> alllist() {
		//관리자 뷰단 수정페이지 첫Ajax 카로셀 
		return sqlSession.selectList("allCarousel");
	}
	public List<Outside_Main> alllists() {
		//관리자 뷰단 수정페이지 첫Ajax 카로셀 
		return sqlSession.selectList("allCarousel2");
	}

	public List<Outside_Main> alllist2() {
		//관리자 뷰단 수정페이지 첫Ajax 유투브영상
		return sqlSession.selectList("allYoutube");
	}
	
	public List<Outside_Main> alllist3() {
		//관리자 뷰단 수정페이지 첫Ajax 유투브영상
		return sqlSession.selectList("allYoutube2");
	}
	
	public Outside_Main ukjaeBasicMainPageCarouseldata() {
		//메인화면에 기본적으로 셋팅되는 카로셀객체
		return sqlSession.selectOne("basicmaincarousel");
	}
	public Outside_Main ukjaeBasicMainPageYoutubedata() {
		//메인화면에 기본적으로 셋팅되는 유투브객체
		return sqlSession.selectOne("basicmainyoutube");
	}	
	
	public Outside_Main ukjaeCheckingCarousel(String carouselcheck) {
		//메인화면에 변경될 carousel이미지객체를 리턴받는 메소드
		return sqlSession.selectOne("carouselcheck", carouselcheck);
	}
	public Outside_Main ukjaeCheckingYoutube(String youtubecheck) {
		//메인화면에 변경될 youtube영상객체를 리턴받는 메소드
		return sqlSession.selectOne("youtubecheck", youtubecheck);
	}


}
