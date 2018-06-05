package com.kh.goodluck.notice.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.goodluck.notice.model.vo.Notice;

@Repository("noticeDao")  
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public int checkNoticeCount() {		
		//DB에 등록된 공지사항 갯수 파악하기 
		return sqlSession.selectOne("noticeCount");
	}
	
	public List<Notice> noticelistCheck(HashMap<Object, Object> map) {
		//페이징처리를 위하여 StartRow, EndRow을 담은 HashMap을 파라미터로 보내기
		return sqlSession.selectList("PageingSuccess", map);
	}
	
	public List<Notice> noticeTop5() {
		//메인에 출력될 5개의요소추출
		return sqlSession.selectList("mainTop5");
	}

	
	public Notice noticeDetail(int notice_no) {
		//공지사항 게시글 상세보기
		return sqlSession.selectOne("noticeDetailShow", notice_no);
	}


	public int noticeContentUpdate(Notice newnotice) {
		//운영자권한 공지사항 게시글 수정하기
		return sqlSession.update("AdminWriteAlter", newnotice);
	}


	public int noticeAdd(Notice newinsertnotice) {
		//운영자 권한 - 공지사항 추가하기
		/*System.out.println(newinsertnotice.getNotice_title());
		System.out.println(newinsertnotice.getNotice_content());*/
		return sqlSession.insert("AdminInsertNotice", newinsertnotice);
	}


	public int noticeDel(int parsing_pk) {
		//운영자 권한 - 공지사항 삭제하기
		return sqlSession.delete("AdminDeleteNotice", parsing_pk);
	}

	public List<Notice> pagingTwo() {
		return sqlSession.selectList("noticeCatch2");
	}

	public List<Notice> pagingOne() {

		return sqlSession.selectList("noticeCatch1");
	}


}
