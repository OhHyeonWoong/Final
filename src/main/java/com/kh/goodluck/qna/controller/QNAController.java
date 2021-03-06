package com.kh.goodluck.qna.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.qna.model.vo.QnaAnswer;
import com.kh.goodluck.qna.model.vo.QnaWrite;

@Controller
public class QNAController {

	@Autowired
	private QNAService qnaService;
	
	public QNAController() {
		 
	}
	
	@RequestMapping("bsh-QNA.go")
	public String report(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/QNA";
	}
	
	@RequestMapping("lbjqnadetail.go")
	public ModelAndView qnaDetailGo(ModelAndView mv,QnaWrite q) {
		//qna 디테일로 고고
		//question and answer 테이블에서 값 꺼내오기
		System.out.println("lbjqnadetail.go run...");
		System.out.println("q = " + q);
		QNA myDetailQna = qnaService.selectMyDetailQna(q);
		QnaAnswer myDetailQnaAnswer = qnaService.selectMyDetailQnaAnswer(q.getQuestion_no());
		////////////////////////////////////
		mv.addObject("myDetailQna", myDetailQna);
		mv.addObject("myDetailQnaAnswer", myDetailQnaAnswer);
		mv.setViewName("A6.LBJ/qnaDetail");
		return mv;
	}
	
	@RequestMapping("lbjqnawrite.go")
	public String qnaWriteGo() {
		return "A6.LBJ/qnaWrite";
	}
	
	@RequestMapping("lbjqnawritemethod.go")
	public void qnaWriteMethod(QnaWrite qnaWrite,HttpServletResponse response) throws IOException{
		//넘어온 qna작성 자료들을 처리
		/*System.out.println("제목 : " + qna.getQuestion_title());
		System.out.println("질문자 : " + qna.getQuestion_writer());
		System.out.println("내용 : " + qna.getQuestion_content());
		System.out.println("아이디 : " + request.getParameter("member_id"));
		System.out.println("카테고리 : " + qna.getQuestion_category());*/

		int result = qnaService.insertMyQna(qnaWrite);
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.print("게시글 등록 성공");
		}else {
			out.print("게시글 등록 실패");
		}
		out.flush();
		out.close();
		/*A6.LBJ/myPage*/
	}
	
	@RequestMapping(value="lbjMyQna.go")
	public void qnaListMethod(HttpServletRequest request,HttpServletResponse response) 
							throws IOException{
		String member_id = request.getParameter("member_id");		
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
	    int qnaCurrentPage = 1;
		if(request.getParameter("page") != null) {
			qnaCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("qnaCurrentPage = " + qnaCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int qnaLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int qnaListCount = qnaService.selectMyQnaCount(member_id);
		int qnaMaxPage = (int)((double)qnaListCount / qnaLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int qnaStartPage = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 1;
		int qnaStartRow = (qnaCurrentPage-1)*qnaLimit+1; 
	    int qnaEndRow = qnaStartRow + qnaLimit - 1;
	    int qnaEndFor = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 6;
	    if(qnaEndFor > qnaMaxPage) {
	    	qnaEndFor = qnaMaxPage;
	    }
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", qnaEndRow);
	    map.put("member_id", member_id);
		ArrayList<QNA> myQna = (ArrayList<QNA>)qnaService.selectMyQna(map);
		
		if (qnaMaxPage < qnaEndRow)
		  qnaEndRow = qnaMaxPage;
		
		System.out.println("mypage listcount = " + qnaListCount);
	    System.out.println("mypage qnaStartRow = " + qnaStartRow);
	    System.out.println("mypage qnaEndRow = " + qnaEndRow);
	    System.out.println("mypage qnaMaxPage = " + qnaMaxPage);
		////qna 처리용 오브젝트
		//보내기용 arraylist생성
		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myQna.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("question_no", myQna.get(i).getQuestion_no());
			System.out.println("myQna.get(i).getQuestion_no()" + myQna.get(i).getQuestion_no());
			job2.put("question_category", myQna.get(i).getQuestion_category());
			job2.put("question_answer_state", myQna.get(i).getQuestion_answer_state());
			job2.put("question_content", myQna.get(i).getQuestion_content());
			job2.put("question_title", myQna.get(i).getQuestion_title());
			job2.put("question_writer", myQna.get(i).getQuestion_writer());
			job2.put("question_date", myQna.get(i).getQuestion_date().toString());
			if(i == 0) {
				job2.put("qnaMaxPage", qnaMaxPage);
				job2.put("qnaStartPage", qnaStartPage);
				job2.put("qnaEndRow", qnaEndRow);
				job2.put("qnaCurrentPage", qnaCurrentPage);
				job2.put("qnaListCount", qnaListCount);
				job2.put("qnaEndFor", qnaEndFor);
			}
			jarr.add(job2);
		}
		
		jobj.put("qna", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjDeleteQna.go",method=RequestMethod.POST)
	public void deleteQnaMethod(@RequestParam(value="question_no[]") List<String> question_no,HttpServletResponse response) 
			throws IOException{
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("question_no", question_no);
		
		int result = qnaService.deleteQna(map);
		
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.print("게시글 삭제 성공!");
		}else {
			out.print("게시글 삭제 실패!");
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lbjMyQnaSatisfactionCheck.go")
	public void myQnaSatisfactionCheck(QnaAnswer qa,
									HttpServletResponse response) throws IOException{
		System.out.println("myQnaSatisfactionCheck qa = " + qa);
		int updateResult = qnaService.updateMyQnaSatisfaction(qa);
		PrintWriter out = response.getWriter();
		if(updateResult > 0) {
			out.print("만족도 적용 성공");
		}else {
			out.print("만족도 적용 실패");
		}
		out.flush();
		out.close();
	}
}
