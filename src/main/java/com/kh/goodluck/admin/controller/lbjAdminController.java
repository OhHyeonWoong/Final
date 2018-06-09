package com.kh.goodluck.admin.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.admin.model.service.AdminService;
import com.kh.goodluck.admin.model.vo.LoginStatistics;

@Controller
public class lbjAdminController {
	
	@Autowired
	private AdminService adminService;
	
	public lbjAdminController() {
		
	}
	
	@RequestMapping(value="lbjStatisticsTest.go")
	public ModelAndView movePayTest(ModelAndView mv) {
		ArrayList<LoginStatistics> count = (ArrayList<LoginStatistics>)adminService.selectAdminStatistics();
		if(count.size() > 0) {
			System.out.println("관리자 통계 데이터 가져오기 성공!");
		}else {
			System.out.println("관리자 통계 데이터 가져오기 실패!");
		}
		//date를 스트링으로
		ArrayList<String> dateStr = new ArrayList<String>();
		ArrayList<Integer> countInt = new ArrayList<Integer>();
		for(int i=0;i<count.size();i++) {
			dateStr.add(count.get(i).getLs_date().toString());
			countInt.add(count.get(i).getVisitCount());
		}
		//////////////
		mv.addObject("adminListCount", count.size());
		mv.addObject("adminVisitCount", countInt);
		mv.addObject("adminDate", dateStr);
		mv.setViewName("A6.LBJ/adminStatistics/admin_loginStatistics");
		return mv;
	}
}
