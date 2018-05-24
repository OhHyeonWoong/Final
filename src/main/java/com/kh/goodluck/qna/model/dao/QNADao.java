package com.kh.goodluck.qna.model.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

@Repository("qnaDao")
public class QNADao {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<QNA> selectMyQna(String member_id) {
		return sqlSession.selectList("selectMyQna", member_id);
	}

	public QNA selectMyDetailQna(QNA q) {
		return sqlSession.selectOne("selectMyDetailQna", q);
	}

	public QnaAnswer selectMyDetailQnaAnswer(int question_no) {
		return sqlSession.selectOne("selectMyDetailQnaAnswer", question_no);
	}
	
}
