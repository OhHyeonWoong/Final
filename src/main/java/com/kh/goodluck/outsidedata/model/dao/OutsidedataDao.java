package com.kh.goodluck.outsidedata.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.goodluck.outsidedata.model.vo.PetNews;

@Repository("outsidedataDao")
public class OutsidedataDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public OutsidedataDao() {
		// TODO Auto-generated constructor stub
	}
	  
	public List<PetNews> petNewsDataThrows() {
		// PetNew에 관한 정보를 받아오는 메소드
		return sqlSession.selectList("petNewsList");
	}

	public PetNews petNewsDetail(int petpk) {
		// PetNew에 대하여 상세조회를 하는 메소드
		return sqlSession.selectOne("petnewsOne", petpk);
	}
	
}












