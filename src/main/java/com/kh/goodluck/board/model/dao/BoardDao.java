package com.kh.goodluck.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.board.model.vo.Allance;
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.GetCategoryForBoardDetail;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.MyPageApplyBoard;
import com.kh.goodluck.board.model.vo.MyPageBoard;
import com.kh.goodluck.board.model.vo.MyPageBoardHistory;
import com.kh.goodluck.board.model.vo.Review;
import com.kh.goodluck.board.model.vo.ReviewForBoard;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.board.model.vo.Trade_detail;
import com.kh.goodluck.chat.model.Chat;
import com.kh.goodluck.chat.model.ChatDetail;
  
/**
 * @author jiseok
 *
 */
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
	
	public List<Board> search(HashMap<Object, Object> map) {
		
		return sqlSession.selectList("search", map);
	}
	
	public List<Board> primebig(HashMap<Object, Object> map) {

		return sqlSession.selectList("primebig", map);
	}

	public List<Board> primemid(HashMap<Object, Object> map) {

		return sqlSession.selectList("primemid", map);
	}

	public List<Board> primesma(HashMap<Object, Object> map) {

		return sqlSession.selectList("primesma", map);
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

	public int updateAgencyStatus(HashMap<Object, Object> map) {
		return 	sqlSession.update("updateAgencyStatus",map);
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



	public Double getAgencyDate(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getAgencyDate",pk);
	}




	public int insertBoardlog(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertBoardlog",pk);
	}



	public int changeRESERVATION(int pk) {
		// TODO Auto-generated method stub
		return sqlSession.update("changeRESERVATION",pk);
	}



	public int insertReview(Review re) {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertReview",re);
	}


	//메인영역에 보여지는 데이터 Ajax
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
		//메인페이지에 보여질 음악영역_제공해요 리스트추출 5개	
		return sqlSession.selectList("mainPageShowMusicListPic1");
	}

	public List<Board> mainShowMusicListPickUp2() {
		//메인페이지에 보여질 음악영역_제공해요 리스트추출 4개			
		return sqlSession.selectList("mainPageShowMusicListPic2");
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
	
	public int checkBoardNo(Board inputBoard) {
		//등록된 게시글의 PK를 가져오는 메소드
		return sqlSession.selectOne("ukjaepickupBoard", inputBoard);
	}
	

	public int ukjaeCheckUserWritingCount(String memberid) {
		//욱재작업 = 현재 유저의 등록된 글의 갯수를 빼오는 메소드(member테이블의 member_write_count)와 비교함.
		return sqlSession.selectOne("ukjaeCheckUserWritingCount", memberid);
	}
	
	public Board ukjaegetServiceWriting(int agency_no) {
		//my페이지에서 pk값을 보내어 Agency객체를 꺼내옴
		return sqlSession.selectOne("Alter_Before_Agecnycheck", agency_no);
	}

	public CategoryLink2 pickupSmallCategory(String smallcategory) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ukjae_pic_link2_no", smallcategory);
	}

	public int serviceSupplyRegist(Board board) {
		//제공해요 새로운 글 등록하는 메소드 
		return sqlSession.insert("ukjae_newServiceRegist", board);
	}
	
	public int writingPage_Update(Board alterBoard) {
		//기존의 글을 수정하는 메소드(서비스 제공해요)
		return sqlSession.update("ukjae_ServiceContentsupdate", alterBoard);
	}
	

	public int ukjaeDeleteService(int parsing_no) {
		//delete(삭제 버튼을 눌러 agency_status를 숨김으로 설정)
		return sqlSession.update("ukjaeDeleteService", parsing_no);
	}
  

	public int registTrade(Board inputBoard) {
		//TradeDeatil에 현재상황을 등록하기 
		return sqlSession.insert("RegistTradeInfo", inputBoard);
	}

	//made by lbj
	public int selectMyBoardListCount(String member_id) {
		return sqlSession.selectOne("selectMyBoardListCount", member_id);
	}
	public List<MyPageBoard> selectMyBoard(HashMap<Object, Object> map3) {
		return sqlSession.selectList("selectMyBoard", map3);
	}

	public int selectMyApplyBoardListCount(String member_id) {
		return sqlSession.selectOne("selectMyApplyBoardListCount", member_id);
	}

	public List<MyPageApplyBoard> selectMyApplyBoard(HashMap<Object, Object> map4) {
		return sqlSession.selectList("selectMyApplyBoard", map4);
	}

	public int selectMyBoardHistoryListCount(String member_id) {
		return sqlSession.selectOne("selectMyBoardHistoryListCount", member_id);
	}

	public List<MyPageBoardHistory> selectMyBoardHistory(HashMap<Object, Object> map5) {
		return sqlSession.selectList("selectMyBoardHistory", map5);
	}



	public int SCOREupdatetype1(HashMap<Object, Object> map2) {
		// TODO Auto-generated method stub
		sqlSession.update("SCOREupdatetype11", map2);
		return sqlSession.update("SCOREupdatetype1", map2);
	}

	//관리자용 메소드 5개/////////////
	public int selectBoardListCount() {
		return sqlSession.selectOne("selectBoardListCount");
	}
	public List<MyPageBoard> selectBoardList(HashMap<Object, Object> map) {
		return sqlSession.selectList("selectBoardList", map);
	}
	public int deleteBoard(HashMap<String, Object> map) {
		return sqlSession.delete("deleteBoard", map);
	}
	public int selectKeywordBoardListCount(String keyword) {
		return sqlSession.selectOne("selectKeywordBoardListCount", keyword);
	}
	public List<MyPageBoard> selectKeywordBoardList(HashMap<Object, Object> map) {
		return sqlSession.selectList("selectKeywordBoardList", map);
	}


	public List<ReviewForBoard> getreviewforboard(String agency_writer) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getreviewforboard", agency_writer);
	}


	public int selectMyWriteCandidateListCount(String member_id) {
		return sqlSession.selectOne("selectMyWriteCandidateListCount", member_id);
	}

	public List<MyPageApplyBoard> selectMyWriteCandidate(HashMap<Object, Object> map6) {
		return sqlSession.selectList("selectMyWriteCandidate", map6);
	}
	
	public int insertViewHistory(HashMap<String, Object> sendMap) {
		return sqlSession.insert("insertViewHistory", sendMap);
	}

	public Chat getChatInfoByMap(HashMap<Object, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("getChatInfoByMap", map);
	}

	public int insertintoChatDetail(ChatDetail cd) {
		
		return sqlSession.insert("insertintoChatDetail", cd);
	}



	public List<ChatDetail> getChatLogByroomNo(int chatroom_NO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getChatLogByroomNo", chatroom_NO);
	}



	public List<Allance> getallancelist() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getallancelist");
	}











}
