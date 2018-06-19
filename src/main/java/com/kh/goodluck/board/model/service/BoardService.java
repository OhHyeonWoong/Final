package com.kh.goodluck.board.model.service;

import java.util.*;

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
import com.kh.goodluck.board.model.vo.MyPageApplyBoard;
import com.kh.goodluck.board.model.vo.Review;
import com.kh.goodluck.board.model.vo.ReviewForBoard;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.board.model.vo.Trade_detail;
import com.kh.goodluck.board.model.vo.MyPageBoard;
import com.kh.goodluck.board.model.vo.MyPageBoardHistory;

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
	
	public List<Board> search(HashMap<Object, Object> map) {
		
		return boardDao.search(map);
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
	
	public List<Board> mainShowMusicListPickUp(){ 		//5개추출
		//메인페이지에 보여질 음악영역_제공해요 리스트추출		
		return boardDao.mainShowMusicListPickUp();
	}
	
	public List<Board> mainShowMusicListPickUp2(){ 		//4개추출
		//메인페이지에 보여질 음악영역_제공해요 리스트추출		
		return boardDao.mainShowMusicListPickUp2();
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
	
	public CategoryLink2 pickupSmallCategory(String smallcategory) {
		//CATEGORY_SMALL_CODE를 인자값으로 보내어, link2_no를 추출
		return boardDao.pickupSmallCategory(smallcategory);
	}
	
	public Board ukjaegetServiceWriting(int agency_no) {
		//my페이지에서 pk값을 보내어 Agency객체를 꺼내옴
		return boardDao.ukjaegetServiceWriting(agency_no);
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



	public int updateAgencyStatus(HashMap<Object,Object> map) {
		// TODO Auto-generated method stub
		return 	boardDao.updateAgencyStatus(map);
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


	public int insertBoardlog(int pk) {
		// TODO Auto-generated method stub
		return boardDao.insertBoardlog(pk);
	}

	public int changeRESERVATION(int pk) {
		// TODO Auto-generated method stub
		return boardDao.changeRESERVATION(pk);
	}

	public int insertReview(Review re) {
		// TODO Auto-generated method stub
		return boardDao.insertReview(re);
	}


	public int serviceSupplyRegist(Board board) {
		//제공해요 새로운 글 등록하는 메소드 
		return boardDao.serviceSupplyRegist(board);
	}
	
	public int checkBoardNo(Board inputBoard) {
		//등록된 게시글의 PK를 가져오는 메소드(->TradeDetail게시판에 insert)
		return boardDao.checkBoardNo(inputBoard);
	}


	public int registTrade(Board inputBoard) {
		//TradeDeatil에 현재상황을 등록하기 
		return boardDao.registTrade(inputBoard);
	}


	public int selectMyBoardListCount(String member_id) {
		//병준이 본인 게시물 갯수 세오는 메소드
		return boardDao.selectMyBoardListCount(member_id);
	}

	public List<MyPageBoard> selectMyBoard(HashMap<Object, Object> map3) {
		//병준이 본인 게시물 가져오는 메소드
		return boardDao.selectMyBoard(map3);
	}

	public int selectMyApplyBoardListCount(String member_id) {
		//병준이 내가 신청한 게시글 갯수 가져오는 메소드
		return boardDao.selectMyApplyBoardListCount(member_id);
	}

	public List<MyPageApplyBoard> selectMyApplyBoard(HashMap<Object, Object> map4) {
		//병준이 내가 신청한 게시글 가져오는 메소드
		return boardDao.selectMyApplyBoard(map4);
	}

	public int selectMyBoardHistoryListCount(String member_id) {
		//내 이용 내역 갯수 가져오는 메소드
		return boardDao.selectMyBoardHistoryListCount(member_id);
	}

	public List<MyPageBoardHistory> selectMyBoardHistory(HashMap<Object, Object> map5) {
		//내 이용 내역 가져오는 메소드
		return boardDao.selectMyBoardHistory(map5);
	}

	public int SCOREupdatetype1(HashMap<Object, Object> map2) {
		// TODO Auto-generated method stub
		return boardDao.SCOREupdatetype1(map2);
	}
	
	//LBJ 관리자 게시글 관리 용 메소드 5개
	public int selectBoardListCount() {
		return boardDao.selectBoardListCount();
	}
	public List<MyPageBoard> selectBoardList(HashMap<Object, Object> map) {
		return boardDao.selectBoardList(map);
	}
	public int deleteBoard(HashMap<String, Object> map) {
		return boardDao.deleteBoard(map);
	}
	public int selectKeywordBoardListCount(String keyword) {
		return boardDao.selectKeywordBoardListCount(keyword);
	}
	public List<MyPageBoard> selectKeywordBoardList(HashMap<Object, Object> map) {
		return boardDao.selectKeywordBoardList(map);
	}


	public List<ReviewForBoard> getreviewforboard(String agency_writer) {
		// TODO Auto-generated method stub
		return boardDao.getreviewforboard(agency_writer);
	}


	public int writingPage_Update(Board alterBoard) {
		// TODO Auto-generated method stub
		return boardDao.writingPage_Update(alterBoard);
	}
	public int selectMyWriteCandidateListCount(String member_id) {
		return boardDao.selectMyWriteCandidateListCount(member_id);
	}

	public List<MyPageApplyBoard> selectMyWriteCandidate(HashMap<Object, Object> map6) {
		return boardDao.selectMyWriteCandidate(map6);

	}

}