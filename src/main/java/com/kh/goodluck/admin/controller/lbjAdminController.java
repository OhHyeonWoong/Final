package com.kh.goodluck.admin.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.admin.model.service.AdminService;
import com.kh.goodluck.admin.model.vo.LoginStatistics;
import com.kh.goodluck.qna.model.vo.QNA;

@Controller
public class lbjAdminController {
	
	@Autowired
	private AdminService adminService;
	
	public lbjAdminController() {
		
	}
	
	@RequestMapping(value="lbjStatisticsTest.go")
	public ModelAndView moveStatisticsTest(ModelAndView mv) {
		ArrayList<LoginStatistics> count = (ArrayList<LoginStatistics>)adminService.selectAdminStatistics();
		if(count.size() > 0) {
			System.out.println("관리자 통계 데이터 가져오기 성공!");
			//한번 가져온 결과를 출력해보자
			for(int z=0;z<count.size();z++) {
				System.out.print(z + "번째 값 :  ");
				System.out.print("count.get(z).getLs_date() = " + count.get(z).getLs_date() + " , ");
				System.out.println("count.get(z).getVisitCount() = " + count.get(z).getVisitCount());
			}
			////////////////////
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
		mv.setViewName("A6.LBJ/admin/admin_loginStatistics");
		return mv;
	}
	
	@RequestMapping(value="lbjAdminQnaAnswer.go")
	public ModelAndView moveAdminQnaAnswer(ModelAndView mv) {
		//이 녀석은 페이지 로딩 될 때 부르는 메소드		
		//페이징 처리 각
		int page = 1;
		int limit = 10;
		//처리중 가져오기
		//qnaIng 페이징 처리//////////////////////////////////////////
		int ingListCount = adminService.selectAdminQnaIngCount();
		int ingMaxPage = (int)((double)ingListCount / limit + 0.9);
		int ingStartPage = (((int) ((double) page / limit + 0.9)) - 1) * limit + 1;
		int ingStartRow = (page-1)*limit+1; 
	    int ingEndRow = ingStartRow + limit - 1;
	    /*System.out.println("ingListCount = " + ingListCount);
	    System.out.println("ingMaxPage = " + ingMaxPage);
	    System.out.println("ingStartPage = " + ingStartPage);*/
	    HashMap<Object,Object> map1 = new HashMap<Object,Object>();
	    map1.put("startRow", ingStartRow);
	    map1.put("endRow", ingEndRow);
		ArrayList<QNA> qnaIng = (ArrayList<QNA>)adminService.selectAdminQnaIng(map1);
		System.out.println("qnaIng size = " + qnaIng.size());
		if (ingMaxPage < ingEndRow)
			ingEndRow = ingMaxPage;
		//보내기용 HashMap생성
		HashMap<String,Integer> ingPage = new HashMap<String,Integer>();
		ingPage.put("ingMaxPage",ingMaxPage);
		ingPage.put("ingStartPage",ingStartPage);
		ingPage.put("ingEndRow",ingEndRow);
		ingPage.put("page",page);
		ingPage.put("ingListCount",ingListCount);
		//////////////////////////////////////////////////////////
		//답변완료 가져오기
		//qnaEnd 페이징 처리//////////////////////////////////////////
		int endListCount = adminService.selectAdminQnaEndCount();
		int endMaxPage = (int)((double)endListCount / limit + 0.9);
		int endStartPage = (((int) ((double) page / limit + 0.9)) - 1) * limit + 1;
		int endStartRow = (page-1)*limit+1; 
	    int endEndRow = endStartRow + limit - 1;
	    /*System.out.println("endListCount = " + endListCount);
	    System.out.println("endMaxPage = " + endMaxPage);
	    System.out.println("endStartPage = " + endStartPage);*/
	    HashMap<Object,Object> map2 = new HashMap<Object,Object>();
	    map2.put("startRow", endStartRow);
	    map2.put("endRow", endEndRow);
		ArrayList<QNA> qnaEnd = (ArrayList<QNA>)adminService.selectAdminQnaEnd(map2);
		System.out.println("qnaEnd size = " + qnaEnd.size());
		if (endMaxPage < endEndRow)
			endEndRow = endMaxPage;
		//보내기용 HashMap생성
		HashMap<String,Integer> endPage = new HashMap<String,Integer>();
		endPage.put("endMaxPage",endMaxPage);
		endPage.put("endStartPage",endStartPage);
		endPage.put("endEndRow",endEndRow);
		endPage.put("page",page);
		endPage.put("endListCount",endListCount);
		//////////////////////////////////////////////////////////
		if(qnaIng.size() > 0 && qnaEnd.size() > 0) {
			System.out.println("AdminQnaAnswer 가져오기 성공");
		}else {
			System.out.println("AdminQnaAnswer 가져오기 실패");
		}
		mv.addObject("ingPage", ingPage);
		mv.addObject("qnaIng", qnaIng);
		mv.addObject("endPage", endPage);
		mv.addObject("qnaEnd", qnaEnd);
		mv.setViewName("A6.LBJ/admin/admin_qnaAnswer");
		return mv;
	}
}
