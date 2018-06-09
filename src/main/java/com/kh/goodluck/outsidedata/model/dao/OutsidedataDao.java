package com.kh.goodluck.outsidedata.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.goodluck.outsidedata.model.vo.GameNews;
import com.kh.goodluck.outsidedata.model.vo.LifeNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews;
import com.kh.goodluck.outsidedata.model.vo.TravelNews;

@Repository("outsidedataDao")
public class OutsidedataDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public OutsidedataDao() {
		// TODO Auto-generated constructor stub
	}
	
	public List<LifeNews> lifeNewsDataThrows1() {
		//Ajax뉴스 리스트 뿌리기(생활영역 3개 1~3번)
		return sqlSession.selectList("lifeNewsList1");
	}

	public List<LifeNews> lifeNewsDataThrows2() {
		//Ajax뉴스 리스트 뿌리기(생활영역 6개 4~6번)
		return sqlSession.selectList("lifeNewsList2");
	}	
	  
	public List<LifeNews> lifeNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(생활영역 6개 1~6번)
		return sqlSession.selectList("lifeNewsList");
	}

	public List<PetNews> petNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(동물영역 6개 1~6번)
		return sqlSession.selectList("petNewsList");
	}
	
	public List<GameNews> gameNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(게임영역 3개 1~3번)
		return sqlSession.selectList("gameNewsList");
	}
	
	public List<GameNews> gameNewsDataThrows2() {
		//Ajax뉴스 리스트 뿌리기(게임영역 6개 1~6번)
		return sqlSession.selectList("gameNewsList2");
	}
	

	public List<TravelNews> travelNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(여행영역 6개 1~6번)
		return sqlSession.selectList("travelNewsList");
	}


	//뉴스검색(타이틀 기준)
	public List<PetNews> userSearchTitle(PetNews p1) {
		return sqlSession.selectList("userSearchTitle", p1);
	}

	public List<LifeNews> userSearchTitle2(LifeNews p2) {
		return sqlSession.selectList("userSearchTitle2", p2);
	}
	public List<GameNews> userSearchTitle3(GameNews p3) {
		return sqlSession.selectList("userSearchTitle3", p3);
	}

	public List<TravelNews> userSearchTitle4(TravelNews p4) {
		return sqlSession.selectList("userSearchTitle4", p4);
	}


	
	
	
	public List<PetNews> userSearchWriter(String keyword) {
		//뉴스검색(작성자 기준)
		return sqlSession.selectList("userSearchWriter", keyword);
	}

	public List<PetNews> userSearchDate(String keyword) {
		//뉴스검색(작성일 기준)
		return sqlSession.selectList("userSearchDate", keyword);
	}
	
	public PetNews petNewsDetail(int petpk) {
		// PetNew에 대하여 상세조회를 하는 메소드
		return sqlSession.selectOne("petnewsOne", petpk);
	}

	public LifeNews lifeNewsDetail(int lifepk) {
		// LifeNews에 대하여 상세조회를 하는 메소드
		return sqlSession.selectOne("lifenewsOne", lifepk);
	}

	public GameNews gameNewsDetail(int gamepk) {
		// GameNews에 대하여 상세조회를 하는 메소드
		return sqlSession.selectOne("gamenewsOne", gamepk);
	}
	
	public TravelNews travelNewsDetail(int travelpk) {
		// TravelNews에 대하여 상세조회를 하는 메소드
		return sqlSession.selectOne("travelnewsOne", travelpk);
	}






	
}












