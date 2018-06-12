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
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;

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
		int limit = 6;
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
	
	@RequestMapping(value="lbjAdminQnaIng.go")
	public void adminQnaIngReload(HttpServletRequest request,HttpServletResponse response) 
								throws IOException{
		//페이징 처리 각
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 6;
		//처리중 가져오기
		//qnaIng 페이징 처리//////////////////////////////////////////
		int ingListCount = adminService.selectAdminQnaIngCount();
		int ingMaxPage = (int)((double)ingListCount / limit + 0.9);
		int ingStartPage = (((int) ((double) page / limit + 0.9)) - 1) * limit + 1;
		int ingStartRow = (page-1)*limit+1; 
		int ingEndRow = ingStartRow + limit - 1;
			    
	    HashMap<Object,Object> map1 = new HashMap<Object,Object>();
		map1.put("startRow", ingStartRow);
		map1.put("endRow", ingEndRow);
		ArrayList<QNA> qnaIng = (ArrayList<QNA>)adminService.selectAdminQnaIng(map1);
		System.out.println("qnaIng size = " + qnaIng.size());
		if (ingMaxPage < ingEndRow)
			ingEndRow = ingMaxPage;
		
		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<qnaIng.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("question_no", qnaIng.get(i).getQuestion_no());
			job2.put("question_category", qnaIng.get(i).getQuestion_category());
			job2.put("question_answer_state", qnaIng.get(i).getQuestion_answer_state());
			job2.put("question_content", qnaIng.get(i).getQuestion_content());
			job2.put("question_title", qnaIng.get(i).getQuestion_title());
			job2.put("question_writer", qnaIng.get(i).getQuestion_writer());
			job2.put("question_date", qnaIng.get(i).getQuestion_date().toString());
			if(i == 0) {
				job2.put("ingMaxPage", ingMaxPage);
				job2.put("ingStartPage", ingStartPage);
				job2.put("ingEndRow", ingEndRow);
				job2.put("page", page);
				job2.put("ingListCount", ingListCount);
			}
			jarr.add(job2);
		}
		
		jobj.put("ing", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjAdminQnaEnd.go")
	public void adminQnaEndReload(HttpServletRequest request,HttpServletResponse response) 
	 								throws IOException{
		//페이징 처리 각
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 6;
		//처리중 가져오기
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
				
		//출력용 JSON 오브젝트
		JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
				
		for(int i=0;i<qnaEnd.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("question_no", qnaEnd.get(i).getQuestion_no());
			job2.put("question_category", qnaEnd.get(i).getQuestion_category());
			job2.put("question_answer_state", qnaEnd.get(i).getQuestion_answer_state());
			job2.put("question_content", qnaEnd.get(i).getQuestion_content());
			job2.put("question_title", qnaEnd.get(i).getQuestion_title());
			job2.put("question_writer", qnaEnd.get(i).getQuestion_writer());
			job2.put("question_date", qnaEnd.get(i).getQuestion_date().toString());
			if(i == 0) {
				job2.put("endMaxPage", endMaxPage);
				job2.put("endStartPage", endStartPage);
				job2.put("endEndRow", endEndRow);
				job2.put("page", page);
				job2.put("endListCount", endListCount);
			}
			jarr.add(job2);
		}
				
		jobj.put("end", jarr);
				
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjAdminQnaWrite.go")
	public ModelAndView moveAdminQnaWrite(ModelAndView mv,@RequestParam("question_no") int question_no) {
		System.out.println("moveAdminQnaWrite question_no = " + question_no);
		QNA q = adminService.selectAdminQnaDetail(question_no);
		if(q != null) {
			System.out.println("데이터 가져오기 성공!");
		}else {
			System.out.println("데이터 가져오기 실패!");
		}
		mv.addObject("qna", q);
		mv.setViewName("A6.LBJ/admin/admin_qnaWrite");
		return mv;
	}
	
	@RequestMapping(value="lbjAdminQnaWriteMethod.go",method=RequestMethod.POST)
	public void adminQnaWriteMethod(QnaAnswer qa,HttpServletResponse response) throws IOException{
		//관리자 qna 답변작성 메소드
		System.out.println("넘어온 QnaAnswer 값 = " + qa);
		int insertResult = adminService.insertAdminQnaWrite(qa);
		if(insertResult > 0) {
			System.out.println("답글 달기 성공!");
			int updateQuestion = adminService.updateQuestion(qa.getQuestion_no());
			if(updateQuestion > 0) {
				System.out.println("처리중 -> 답변완료 업데이트 성공!");
			}else {
				System.out.println("업데이트 실패...");
			}
		}else {
			System.out.println("답글 달기 실패!");
		}
		
		//adminMypage로 ㄱㄱ
		response.sendRedirect("lbjAdminQnaAnswer.go");
	}
}
