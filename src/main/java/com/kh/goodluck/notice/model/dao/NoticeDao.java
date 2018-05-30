package com.kh.goodluck.notice.model.dao;

import java.util.ArrayList;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.goodluck.notice.model.vo.Notice;

@Repository("noticeDao")  
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public List<Notice> pullNoticeAllList() {
		//공지사항 리스트 전체를 받아오기
		return sqlSession.selectList("pickAllList");
	}
	
	
	public List<Notice> noticeTop5() {
		//메인에 출력될 5개의요소추출
		return sqlSession.selectList("mainTop5");
	}

	
	public Notice noticeDetail(int notice_no) {
		//공지사항게시글 상세보기
		return sqlSession.selectOne("noticeDetailShow", notice_no);
	}




}
