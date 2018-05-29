package com.kh.goodluck.qna.model.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
import com.kh.goodluck.qna.model.vo.QnaWrite;

@Repository("qnaDao")
public class QNADao {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public List<QNA> selectMyQna(HashMap<Object, Object> map) {
		return sqlSession.selectList("selectMyQna", map);
	}

	public QNA selectMyDetailQna(QnaWrite q) {
		return sqlSession.selectOne("selectMyDetailQna", q);
	}

	public QnaAnswer selectMyDetailQnaAnswer(int question_no) {
		return sqlSession.selectOne("selectMyDetailQnaAnswer", question_no);
	}

	public int insertMyQna(QnaWrite qnaWrite) {
		return sqlSession.insert("insertMyQna", qnaWrite);
	}

	public int selectMyQnaCount(String member_id) {
		return sqlSession.selectOne("qnaListCount", member_id);
	}
	
}
