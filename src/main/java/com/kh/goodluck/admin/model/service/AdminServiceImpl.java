package com.kh.goodluck.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.admin.model.dao.AdminDao;
import com.kh.goodluck.admin.model.vo.LoginStatistics;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<LoginStatistics> selectAdminStatistics() {
		return adminDao.selectAdminStatistics();
	}
}
