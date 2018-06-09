package com.kh.goodluck.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodluck.admin.model.vo.LoginStatistics;

@Repository("adminDao")
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<LoginStatistics> selectAdminStatistics() {
		return sqlSession.selectList("selectAdminStatistics");
	}
	
}
