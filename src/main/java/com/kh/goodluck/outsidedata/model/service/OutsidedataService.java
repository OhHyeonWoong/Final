package com.kh.goodluck.outsidedata.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.goodluck.outsidedata.model.vo.GameNews;
import com.kh.goodluck.outsidedata.model.vo.LifeNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews;
import com.kh.goodluck.outsidedata.model.vo.TravelNews;

public interface OutsidedataService {
	
	//Ajax뉴스 리스트 뿌리기(생활영역 3개 1~3번)
	List<LifeNews> lifeNewsDataThrows1();
	
	//Ajax뉴스 리스트 뿌리기(생활영역 6개 4~6번)
	List<LifeNews> lifeNewsDataThrows2();

	//Ajax뉴스 리스트 뿌리기(생활영역 6개 1~6번)
	List<LifeNews> lifeNewsDataThrows();
	
	//Ajax뉴스 리스트 뿌리기(동물영역 6개)
	List<PetNews> petNewsDataThrows();

	//Ajax뉴스 리스트 뿌리기(게임영역 3개)
	List<GameNews> gameNewsDataThrows();

	//Ajax뉴스 리스트 뿌리기(게임영역 6개)
	List<GameNews> gameNewsDataThrows2();
	
	//Ajax뉴스 리스트 뿌리기(여행영역 6개)	
	List<TravelNews> travelNewsDataThrows();
	
	//뉴스검색(타이틀 기준) - 모든 영역에 접근함
	List<PetNews> userSearchTitle(PetNews p1);
	List<LifeNews> userSearchTitle2(LifeNews p2);
	List<GameNews> userSearchTitle3(GameNews p3);
	List<TravelNews> userSearchTitle4(TravelNews p4);
	
	//뉴스검색(작성자 기준)
	List<PetNews> userSearchWriter(String keyword);
	
	//뉴스검색(작성일 기준)	
	List<PetNews> userSearchDate(String keyword);

	
	//뉴스 상세보기(동물)
	PetNews petNewsDetail(int petpk);
	
	//뉴스 상세보기(생활)
	LifeNews lifeNewsDetail(int lifepk);

	//뉴스 상세보기(게임)
	GameNews gameNewsDetail(int gamepk);

	//뉴스 상세보기(여행)
	TravelNews travelNewsDetail(int travelpk);

	
	
}
