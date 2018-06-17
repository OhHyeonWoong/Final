package com.kh.goodluck.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.admin.model.service.AdminService;
import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.item.model.vo.ITEMLIST;
import com.kh.goodluck.item.model.vo.ItemPackage;
import com.kh.goodluck.item.model.vo.RandomBox_all;
import com.kh.goodluck.item.model.vo.RandomBox_emo;
import com.kh.goodluck.item.model.vo.RandomBox_time;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

@Controller
public class jdkAdminController {
	
	@Autowired
	private AdminService adminService;
	
	public jdkAdminController() {
		
	}
	//어드민 페이지 패키지 아이템 추가 메소드: 전동기
	@RequestMapping(value="jdkinsertNewPackageItem.go")
	public ModelAndView insertNewPackageItem(RandomBox_all ra, RandomBox_emo re, RandomBox_time rt,ItemPackage ip, ModelAndView mv,ITEMLIST items, HttpServletRequest request, HttpServletResponse response) {
		// 일단 패키지에 들어갈 수 있는 값은 디비에 한번 다녀온 상태에서 출력을 해서 보여주는게 현재 가지고 있는 값을 활용하는 것이므로
		// 개별 아이템 목록을 리스트로 한번 가지고 오는 것이 의미가 있다.
		// 개별 아이템의 경우에는 패키지와 랜덤박스를 따로 출력하므로 그 부분은 제외하고 출력한다.
		// 패키지에서 넣을 수 있는 아이템은 한정되어 있으므로 이를 감안하여 호출하여 뿌려준다.
		// <문제는 패키지와 랜덤박스의 경우 패키지와 랜덤박스를 만들고 난 이후에
		// 포함되어 있는 개별 아이템이 삭제된다면 포함되지 않은 상태에서 출력이 되어야 하고 이를 관리자가 알아야한다.
		// 특히 랜덤박스의 경우에는 개별 아이템이 삭제될 경우에는 확률에 문제가 생긴다.>
		// 우선 개별, 패키지, 랜덤박스 3개의 리스트를 뿌릴 수 있도록 처리를 하고 가지고 와보자.
		
		// 1. 개별 아이템 리스트 
		// 한번에 보여 줄 페이지 수는 10개이다.
		int indi_pageSize = 10;
		// 전체 글을 갯수를 저장할 변수
		int indi_count = 0;
		// 페이지 넘버링 변수 
		int indi_number = 0;
		
		//1~7 아이템 리스트
		List<ITEMLIST> allitemlist = adminService.allItemList();
		//패키지 아이템 리스트
		List<ItemPackage> packageList = adminService.packageItemList();
		//랜덤박스 all 리스트
		List<RandomBox_all> randomAllList = adminService.randomBoxAllList();
		//랜덤박스 emo 리스트
		List<RandomBox_emo> randomEmoList = adminService.randomBoxEmoList();
		//랜덤박스 time 리스트
		List<RandomBox_time> randomTimeList = adminService.randomBoxTimeList();
				
		
		//랜덤박스 2 리스트
		//랜덤박스 3 리스트
		
		
		
		
		
		
		return null;
	}
	
	
	
	
}
