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

	public List<Outside_Main> alllist2() {
		//관리자 뷰단 수정페이지 첫Ajax 유투브영상
		return sqlSession.selectList("allYoutube");
	}

}
