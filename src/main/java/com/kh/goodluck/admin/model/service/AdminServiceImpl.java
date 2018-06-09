package com.kh.goodluck.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.admin.model.dao.AdminDao;
import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<LoginStatistics> selectAdminStatistics() {
		return adminDao.selectAdminStatistics();
	}
	
	@Override
	public List<QNA> selectAdminQnaIng() {
		return adminDao.selectAdminQnaIng();
	}
	
	@Override
	public List<QNA> selectAdminQnaEnd() {
		return adminDao.selectAdminQnaEnd();
	}
}
