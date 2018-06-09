package com.kh.goodluck.admin.model.dao;

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

	public List<QNA> selectAdminQnaIng() {
		return sqlSession.selectList("selectAdminQnaIng");
	}

	public List<QNA> selectAdminQnaEnd() {
		return sqlSession.selectList("selectAdminQnaEnd");
	}
	
}
