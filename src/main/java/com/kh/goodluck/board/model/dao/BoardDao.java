package com.kh.goodluck.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.Chat;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.board.model.vo.Trade_detail;


  
@Repository("boardDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BoardDao() {
		
	}
	
	
	
	public List<Board> selectCategory(HashMap<Object, Object> map) {
		
		return sqlSession.selectList("selectCategory", map);
	}
	
	public List<Board> selectCategoryFirst(Board board) {
		
		return sqlSession.selectList("selectCategoryFirst", board);
	}



	public List<BigCategory> selectBigCategoryAll() {

		return sqlSession.selectList("selectBigCategoryAll");
	}



	public List<MidCategory> selectMidCategoryAll() {
		
		return sqlSession.selectList("selectMidCategoryAll");
	}



	public List<SmallCategory> selectSmallCategoryAll() {
		
		return sqlSession.selectList("selectSmallCategoryAll");
	}



	public List<CategoryLink1> selectCategoryLink1() {
		
		return sqlSession.selectList("selectCategoryLink1");
		//return null;
	}



	public List<CategoryLink2> selectCategoryLink2() {
		
		return sqlSession.selectList("selectCategoryLink2");
	}



	public List<Board> selectCategoryMid(HashMap<Object, Object> map) {
		
		return sqlSession.selectList("selectCategoryMid", map);
	}
	
	public List<Board> selectCategoryMidFirst(Board board) {
		
		return sqlSession.selectList("selectCategoryMidFirst", board);
	}
	
	public List<Board> selectCategoryBig(HashMap<Object, Object> map) {
		
		return sqlSession.selectList("selectCategoryBig", map);
	}
	
	public List<Board> selectCategoryBigFirst(Board board) {
		
		return sqlSession.selectList("selectCategoryBigFirst", board);
	}
    
	
	public int getAgencyCount(String string) {

		return sqlSession.selectOne("getAgencyCount",string);
	}
	
	public int getAgencyCountMid(String string) {

		return sqlSession.selectOne("getAgencyCountMid",string);
	}
	
	public int getAgencyCountBig(String string) {

		return sqlSession.selectOne("getAgencyCountBig",string);
	}
	
	
	
	
	public List<Board> mainShowLifeListPickUp() {
		//메인페이지에 보여질 생활영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowLifeListPic");
	}

  

	public List<Board> mainShowPetListPickUp() {
		//메인페이지에 보여질 반려동물영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowPetListPic");
	}



	public List<Board> mainShowGameListPickUp() {
		//메인페이지에 보여질 게임영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowGameListPic");
	}


	public List<Board> mainShowMusicListPickUp() {
		//메인페이지에 보여질 음악영역_제공해요 리스트추출		
		return sqlSession.selectList("mainPageShowMusicListPic");
	}

	public List<Board> mainShowRentListPickUp() {
		//메인페이지에 보여질 렌트영역_제공해요 리스트추출		

		return sqlSession.selectList("mainPageShowRentListPic");
	}
	
	public List<Board> mainShowTravelListPickUp() {
		//메인페이지에 보여질 여행영역_제공해요 리스트추출		
		return sqlSession.selectList("mainPageShowTravelListPic");
	}
	
	public List<Board> mainShowFreeListPickUp() {
		//메인페이지에 보여질 프리랜서영역_제공해요 리스트추출				
		return sqlSession.selectList("mainPageShowFreeListPic");
	}

	public List<Board> mainShowRequireListPickUp() {
		//메인페이지에 보여질 구인영역_제공해요 리스트추출
		return sqlSession.selectList("mainPageShowRequireListPic");
	}



	public Board getBoardInfoByNo(int pk) {
		// 보드pk로 보드 정보구하기.
		return sqlSession.selectOne("getBoardInfoByNo",pk);
	}



	public int IncreaseViewCount(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.update("IncreaseViewCount",  pk);
	}



	public GetCategoryForBoardDetail GetCategoryForBoardDetail(int pk) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("GetCategoryForBoardDetail",pk);
	}



	public int IncreasesSMALLCATEGORYCOUNT(int parseInt) {
	return sqlSession.update("IncreasesSMALLCATEGORYCOUNT",parseInt);
	}
	public void updateAgencyStatus(HashMap<Object, Object> map) {
	sqlSession.selectOne("updateAgencyStatus",map);
	}
    public int insertNewTradeDetail(Trade_detail td) {
	return sqlSession.update("insertNewTradeDetail",td);
	}
    public int UpdateTradeReserVation(Trade_detail td) {
	return sqlSession.update("UpdateTradeReserVation",td);
	}
    public int insertchatroom(HashMap<Object, Object> map) {
	return  sqlSession.insert("insertchatroom",map);
	}



	public Chat getChatInfoByMap(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getChatInfoByMap",map);
	}



	public int getrelation(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getrelation",map);
	}



	public int getrelation1(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getrelation1",map);
	}



	public int getrelation2(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getrelation2",map);
	}



	public int getAgencyStatus(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getAgencyStatus",pk);
	}



	public int cancelagency1(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.update("cancelagency1",pk);
	}



	public int cancelagency2(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.update("cancelagency2",pk);
	}



	public int cancelagency3(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.update("cancelagency3",pk);
	}


	public String getapplicant(int pk) {
		return sqlSession.selectOne("getapplicant",pk);
	}



	
}
