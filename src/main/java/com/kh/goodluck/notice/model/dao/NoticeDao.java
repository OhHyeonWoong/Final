package com.kh.goodluck.notice.model.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kh.goodluck.notice.model.vo.Notice;

@Repository("noticeDao")  
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Notice> noticeTop5() {
		
		return sqlSession.selectList("mainTop5");
	}

	/*public Notice noticeDetail(int notice_no) {

		return sqlSession.selectOne("noticeDetailShow", notice_no);
	}*/

}
