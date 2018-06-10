package com.kh.goodluck.admin.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;

@Repository("adminDao")
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<LoginStatistics> selectAdminStatistics() {
		return sqlSession.selectList("selectAdminStatistics");
	}

	public List<QNA> selectAdminQnaIng(HashMap<Object, Object> map1) {
		return sqlSession.selectList("selectAdminQnaIng",map1);
	}

	public List<QNA> selectAdminQnaEnd(HashMap<Object, Object> map2) {
		return sqlSession.selectList("selectAdminQnaEnd",map2);
	}

	public int selectAdminQnaIngCount() {
		return sqlSession.selectOne("selectAdminQnaIngCount");
	}

	public int selectAdminQnaEndCount() {
		return sqlSession.selectOne("selectAdminQnaEndCount");
	}

	public QNA selectAdminQnaDetail(int question_no) {
		return sqlSession.selectOne("selectAdminQnaDetail", question_no);
	}
	
}
