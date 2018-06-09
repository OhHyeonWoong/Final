package com.kh.goodluck.outsidedata.model.service;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.outsidedata.model.dao.OutsidedataDao;
import com.kh.goodluck.outsidedata.model.vo.GameNews;
import com.kh.goodluck.outsidedata.model.vo.LifeNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews;
import com.kh.goodluck.outsidedata.model.vo.TravelNews;


@Service("OutsidedataService")
public class OutsidedataServiceImpl implements OutsidedataService {

	@Autowired
	OutsidedataDao outsidedataDao;
	
	public OutsidedataServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	  
	@Override
	public List<LifeNews> lifeNewsDataThrows1() { 
		//Ajax뉴스 리스트 뿌리기(생활영역 3개 1~3번)
		return outsidedataDao.lifeNewsDataThrows1();
	}
	
	@Override
	public List<LifeNews> lifeNewsDataThrows2() {
		//Ajax뉴스 리스트 뿌리기(생활영역 6개 4~6번)
		return outsidedataDao.lifeNewsDataThrows2();
	}
	
	@Override
	public List<LifeNews> lifeNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(생활영역 6개 1~6번)
		return outsidedataDao.lifeNewsDataThrows();
	}
	
	@Override
	public List<GameNews> gameNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(게임영역 3개 1~3번)
		return outsidedataDao.gameNewsDataThrows();
	}
	
	@Override
	public List<GameNews> gameNewsDataThrows2() {
		//Ajax뉴스 리스트 뿌리기(게임영역 6개 1~6번)
		return outsidedataDao.gameNewsDataThrows2();
	}
	
	@Override
	public List<TravelNews> travelNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(여행영역 6개 1~6번)
		return outsidedataDao.travelNewsDataThrows();
	}
	
	@Override
	public List<PetNews> petNewsDataThrows() {
		//Ajax뉴스 리스트 뿌리기(동물영역 6개 1~6번)
		return outsidedataDao.petNewsDataThrows();
	}
	
	@Override
	public PetNews petNewsDetail(int petpk) {
		// PetNews에 대하여 상세조회를 하는 메소드
		return outsidedataDao.petNewsDetail(petpk);
	}
	
	@Override
	public LifeNews lifeNewsDetail(int life) {
		// LifeNews에 대하여 상세조회를 하는 메소드
		return outsidedataDao.lifeNewsDetail(life);
	}
	
	@Override
	public GameNews gameNewsDetail(int gamepk) {
		// GameNews에 대하여 상세조회를 하는 메소드
		return outsidedataDao.gameNewsDetail(gamepk);
	}
	
	@Override
	public TravelNews travelNewsDetail(int travelpk) {
		// TravelNews에 대하여 상세조회를 하는 메소드
		return outsidedataDao.travelNewsDetail(travelpk);
	}

	//뉴스검색(타이틀 기준) - 모든 영역에 접근함
	@Override
	public List<PetNews> userSearchTitle(PetNews p1) {
		return outsidedataDao.userSearchTitle(p1);
	}
	@Override
	public List<LifeNews> userSearchTitle2(LifeNews p2) {
		return outsidedataDao.userSearchTitle2(p2);
	}	
	@Override
	public List<GameNews> userSearchTitle3(GameNews p3) {
		return outsidedataDao.userSearchTitle3(p3);
	}
	@Override
	public List<TravelNews> userSearchTitle4(TravelNews p4) {
		return outsidedataDao.userSearchTitle4(p4);
	}
	
	
	@Override
	public List<PetNews> userSearchWriter(String keyword) {
		//뉴스검색(작성자 기준)
		return outsidedataDao.userSearchWriter(keyword);
	}

	@Override
	public List<PetNews> userSearchDate(String keyword) {
		//뉴스검색(작성일 기준)
		return outsidedataDao.userSearchDate(keyword);
	}

}