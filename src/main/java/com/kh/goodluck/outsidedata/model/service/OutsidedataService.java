package com.kh.goodluck.outsidedata.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.goodluck.outsidedata.model.vo.GameNews;
import com.kh.goodluck.outsidedata.model.vo.LifeNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews_Comment;
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
	
	//뉴스검색(내용 기준) - 모든 영역에 접근함	
	List<PetNews> userSearchContents(PetNews p05);
	List<LifeNews> userSearchContents2(LifeNews p06);
	List<GameNews> userSearchContents3(GameNews p07);
	List<TravelNews> userSearchContents4(TravelNews p08);
	
	//뉴스검색(출처 기준) - 모든 영역에 접근함
	List<PetNews> userSearchOrign(PetNews p01);
	List<LifeNews> userSearchOrign2(LifeNews p02);
	List<GameNews> userSearchOrign3(GameNews p03);
	List<TravelNews> userSearchOrign4(TravelNews p04);
	  
	//뉴스 상세보기(동물)
	PetNews petNewsDetail(int petpk);
	
	//뉴스 상세보기(생활)
	LifeNews lifeNewsDetail(int lifepk);

	//뉴스 상세보기(게임)
	GameNews gameNewsDetail(int gamepk);

	//뉴스 상세보기(여행)
	TravelNews travelNewsDetail(int travelpk);

	//펫 뉴스영영 기사글에 댓글달기
	int petCommentInput(PetNews_Comment pec);

	//펫 뉴스영역 댓글데이터 끌어오기
	List<PetNews_Comment> commentAlllistGet(int parsing_datano);







	
	
}
