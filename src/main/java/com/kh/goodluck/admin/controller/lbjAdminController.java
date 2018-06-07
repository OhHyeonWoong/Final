package com.kh.goodluck.admin.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.goodluck.admin.model.service.AdminService;
import com.kh.goodluck.admin.model.vo.LoginStatistics;

@Controller
public class lbjAdminController {
	
	@Autowired
	private AdminService adminService;
	
	public lbjAdminController() {
		
	}
	
	@RequestMapping(value="lbjStatisticsTest.go")
	public String movePayTest() {
		List<LoginStatistics> count = adminService.selectAdminStatistics();
		return "A6.LBJ/adminStatistics/admin_loginStatistics";
	}
}
