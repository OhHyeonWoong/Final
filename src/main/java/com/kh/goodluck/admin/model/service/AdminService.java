package com.kh.goodluck.admin.model.service;

import java.util.List;

import com.kh.goodluck.admin.model.vo.LoginStatistics;

public interface AdminService {

	public abstract List<LoginStatistics> selectAdminStatistics();
	
}
