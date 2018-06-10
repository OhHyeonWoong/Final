package com.kh.goodluck.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.board.model.dao.BoardDao;
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.Chat;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.board.model.vo.Trade_detail;

@Service("boardService")
public class BoardService {


	public BoardService() {
		
	}
	
	@Autowired
	private BoardDao boardDao;
	
	public List<Board> selectCategory(HashMap<Object, Object> map){
		
		return boardDao.selectCategory(map);
	}
	
	public List<BigCategory> selectBigCategoryAll(){
		
		return boardDao.selectBigCategoryAll();
	}
	
	public List<MidCategory> selectMidCategoryAll(){
		
		return boardDao.selectMidCategoryAll();
	}
	
	public List<SmallCategory> selectSmallCategoryAll(){
		
		return boardDao.selectSmallCategoryAll();
	}
	
	public List<CategoryLink1> selectCategoryLink1(){
		
		return boardDao.selectCategoryLink1();
	}
	
	public List<CategoryLink2> selectCategoryLink2(){
		
		return boardDao.selectCategoryLink2();
	}

	public List<Board> selectCategoryMid(HashMap<Object, Object> map) {
		
		return boardDao.selectCategoryMid(map);
	}
	
	public List<Board> selectCategoryBig(HashMap<Object, Object> map) {
		
		return boardDao.selectCategoryBig(map);
	}
	
	public int getAgencyCount(String string) {
		
		return boardDao.getAgencyCount(string);
	}
	
	public int getAgencyCountMid(String string) {

		return boardDao.getAgencyCountMid(string);
	}

	public int getAgencyCountBig(String string) {

		return boardDao.getAgencyCountBig(string);
	}

	////////////메인영역 뿌려지는 데이터////////////////////
	
	public List<Board> mainShowLifeListPickUp() { 
		//메인페이지에 보여질 생활영역_제공해요 리스트추출
		
		return boardDao.mainShowLifeListPickUp();
	}
  
	public List<Board> mainShowPetListPickUp() {
		//메인페이지에 보여질 반려동물영역_제공해요 리스트추출
		return boardDao.mainShowPetListPickUp();
	}

	public List<Board> mainShowGameListPickUp(){
		//메인페이지에 보여질 게임영역_제공해요 리스트추출		
		return boardDao.mainShowGameListPickUp();
	}
	
	public List<Board> mainShowMusicListPickUp(){
		//메인페이지에 보여질 음악영역_제공해요 리스트추출		
		return boardDao.mainShowMusicListPickUp();
	}
	
	public List<Board> mainShowRentListPickUp(){
		//메인페이지에 보여질 렌트영역_제공해요 리스트추출		
		return boardDao.mainShowRentListPickUp();
	}
	
	public List<Board> mainShowTravelListPickUp(){
		//메인페이지에 보여질 여행영역_제공해요 리스트추출		
		return boardDao.mainShowTravelListPickUp();				
	}
	
	public List<Board> mainShowFreeListPickUp(){
		//메인페이지에 보여질 프리랜서영역_제공해요 리스트추출		
		return boardDao.mainShowFreeListPickUp();	
	}
	
	public List<Board> mainShowRequireListPickUp(){
		//메인페이지에 보여질 구인영역_제공해요 리스트추출		
		return boardDao.mainShowRequireListPickUp();			
	}

	public Board getBoardInfoByNo(int pk) {
		// TODO Auto-generated method stub
		return  boardDao.getBoardInfoByNo(pk);		
	}

	public int IncreaseViewCount(int pk) {
		// TODO Auto-generated method stub
		return 	boardDao.IncreaseViewCount(pk);		
	}

	public GetCategoryForBoardDetail gcfbd(int pk) {
		// TODO Auto-generated method stub
		return boardDao.GetCategoryForBoardDetail(pk);		
	}

	public int IncreasesSMALLCATEGORYCOUNT(int parseInt) {
		// TODO Auto-generated method stub
		return boardDao.IncreasesSMALLCATEGORYCOUNT(parseInt);		
	}



	public void updateAgencyStatus(HashMap<Object,Object> map) {
		// TODO Auto-generated method stub
		boardDao.updateAgencyStatus(map);
	}

	public int insertNewTradeDetail(Trade_detail td) {
		// TODO Auto-generated method stub
		return  boardDao.insertNewTradeDetail(td);		
	}

	public int UpdateTradeReserVation(Trade_detail td) {
		// TODO Auto-generated method stub
		return  boardDao.UpdateTradeReserVation(td);		
	}

	public int insertchatroom(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return  boardDao.insertchatroom(map);		
	}

	public Chat getChatInfoByMap(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return boardDao.getChatInfoByMap(map);
	}

	public int getrelation(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return boardDao.getrelation(map);
	}

	public int getrelation1(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return  boardDao.getrelation1(map);
	}

	public int getrelation2(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return boardDao.getrelation2(map);
	}

	public int getAgencyStatus(int pk) {
		// TODO Auto-generated method stub
		return boardDao.getAgencyStatus(pk);
	}

	public int cancelagency1(int pk) {
		// TODO Auto-generated method stub
		return boardDao.cancelagency1(pk);
	}

	public int cancelagency2(int pk) {
		// TODO Auto-generated method stub
		return boardDao.cancelagency2(pk);
	}

	public int cancelagency3(int pk) {
		// TODO Auto-generated method stub
		return	boardDao.cancelagency3(pk);
	}

	public String getAPPLICANT(int pk) {
		// TODO Auto-generated method stub
		return 	boardDao.getapplicant(pk);
	}

	public Double getAgencyDate(int pk) {
		// TODO Auto-generated method stub
		return boardDao.getAgencyDate(pk);
	}




}