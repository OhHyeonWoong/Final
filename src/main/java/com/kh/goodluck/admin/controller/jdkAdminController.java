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
	//어드민 페이지 아이템 리스트 첫 화면 출력 용: 전동기
	@RequestMapping(value="jdkadmin_ItemList")
	public ModelAndView admin_ItemList(RandomBox_all ra, RandomBox_emo re, RandomBox_time rt,ItemPackage ip, ModelAndView mv,ITEMLIST items, HttpServletRequest request, HttpServletResponse response) {
		// 일단 패키지에 들어갈 수 있는 값은 디비에 한번 다녀온 상태에서 출력을 해서 보여주는게 현재 가지고 있는 값을 활용하는 것이므로
		// 개별 아이템 목록을 리스트로 한번 가지고 오는 것이 의미가 있다.
		// 개별 아이템의 경우에는 패키지와 랜덤박스를 따로 출력하므로 그 부분은 제외하고 출력한다.
		// 패키지에서 넣을 수 있는 아이템은 한정되어 있으므로 이를 감안하여 호출하여 뿌려준다.
		// <문제는 패키지와 랜덤박스의 경우 패키지와 랜덤박스를 만들고 난 이후에
		// 포함되어 있는 개별 아이템이 삭제된다면 포함되지 않은 상태에서 출력이 되어야 하고 이를 관리자가 알아야한다.
		// 특히 랜덤박스의 경우에는 개별 아이템이 삭제될 경우에는 확률에 문제가 생긴다.>
		// 우선 개별, 패키지, 랜덤박스 3개의 리스트를 뿌릴 수 있도록 처리를 하고 가지고 와보자.
		
		
		//개별 아이템 리스트
		List<ITEMLIST> allitemlist = adminService.allItemList();
		//패키지 아이템 리스트
		List<ItemPackage> packageList = adminService.packageItemList();
		//랜덤박스 all 리스트
		List<RandomBox_all> randomAllList = adminService.randomBoxAllList();
		//랜덤박스 emo 리스트
		List<RandomBox_emo> randomEmoList = adminService.randomBoxEmoList();
		//랜덤박스 time 리스트
		List<RandomBox_time> randomTimeList = adminService.randomBoxTimeList();
		
		
		for(int i=0; i<packageList.size(); i++){
			String[] itemCheck = packageList.get(i).getITEMLIST_NO().split(",");
			for(int j=0; j<itemCheck.length; j++) {
				int indiItem =Integer.parseInt(itemCheck[j]);
				Boolean itemexist = adminService.checkItemExistence(indiItem);
				if(itemexist == false) {
				packageList.get(i).setITEMLIST_NO(packageList.get(i).getITEMLIST_NO().replace(itemCheck[j]+",",""));
				adminService.extractPackageItem(packageList.get(i));//갱신 시켜 줌
				}
			}
		}
		
		//패키지는 무결성 확보한 상태에서 넘어감
		
		//랜덤박스 1 무결성
		double itemNumForAll = 0;
		for(int i=0; i<randomAllList.size(); i++){
			itemNumForAll += randomAllList.get(i).getChance();
		}
		if(itemNumForAll != 1) {
			double addingNumbers = (1-itemNumForAll)/randomAllList.size();//남은 항목 값에 할당 되어야 하는 값.
			for(int i=0; i<randomAllList.size(); i++){
			randomAllList.get(i).setChance(randomAllList.get(i).getChance()+addingNumbers);
			adminService.addExessNum(randomAllList.get(i));
			System.out.println("전체 아이템 랜덤 박스 확률 배당");
			}
		}
		//랜덤박스 2 무결성
		double itemNumForEmo = 0;
		for(int i=0; i<randomEmoList.size(); i++){
			itemNumForAll += randomEmoList.get(i).getChance();
		}
		if(itemNumForEmo != 1) {
			double addingNumbers = (1-itemNumForEmo)/randomEmoList.size();//남은 항목 값에 할당 되어야 하는 값.
			for(int i=0; i<randomEmoList.size(); i++){
			randomEmoList.get(i).setChance(randomEmoList.get(i).getChance()+addingNumbers);
			adminService.addExessNumEmo(randomEmoList.get(i));
			System.out.println("이모티콘 아이템 랜덤 박스 확률 배당");
			}
		}
		//랜덤박스 3 무결성
		double itemNumForTime = 0;
		for(int i=0; i<randomTimeList.size(); i++){
			itemNumForTime += randomTimeList.get(i).getChance();
		}
		if(itemNumForTime != 1) {
			double addingNumbers = (1-itemNumForTime)/randomTimeList.size();//남은 항목 값에 할당 되어야 하는 값.
			for(int i=0; i<randomTimeList.size(); i++){
			randomTimeList.get(i).setChance(randomTimeList.get(i).getChance()+addingNumbers);
			adminService.addExessNumTime(randomTimeList.get(i));
			System.out.println("시간제 아이템 랜덤박스 확률 배당");
			}
		}
		///////////////////////////////// 무결성 확인이 끝났기 떄문에 이제 페이징 처리가 된 상태로 받아온 값을 다시 넘겨야함
		
		// 한번에 보여 줄 글 수는 10개
		int pageSize = 10;
		
		// 전체 글을 갯수를 저장할 변수
		int indi_count = 0;
		int package_count = 0;
		int random_count = 0;
		
		// 현재 페이지 저장용 변수
		int indi_currentPage = 0;
		int package_currentPage= 0;
		int random_currentPage = 0;
		
		
		//현재 보여줄 페이지의 시작 번호들
		// *현재 페이지에 보여줄 데이터의 시작 번호 = (현재 페이지 – 1) * 출력 개수 + 1
		// *현재 페이지에 보여줄 데이터의 종료 번호 = 시작 번호 + 출력개수  - 1
		
		// 현재 보여줄 페이지의 시작번호용 변수
		int indi_startNum = 0;
		int package_startNum = 0;
		int random_startNum = 0;
		
		// 현재 보여줄 페이지의 끝 번호용 변수 
		int indi_endNum = 0;
		int package_endNum = 0;
		int random_endNum = 0;
		
		
		
		
		
		
		
		mv.addObject("alli",allitemlist);
		mv.addObject("pack",packageList);
		mv.addObject("randomall",randomAllList);
		mv.addObject("randomemo",randomEmoList);
		mv.addObject("randomtime",randomTimeList);
		
		return null;
	}
	
	
	
	
}
