package com.kh.goodluck.qna.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView qnaDetailGo(ModelAndView mv,QNA q) {
		//qna 디테일로 고고
		System.out.println(q.getQuestion_writer());
		System.out.println(q.getQuestion_no());
		//question and answer 테이블에서 값 꺼내오기
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
	public String qnaWriteMethod(QnaWrite qnaWrite) {
		//넘어온 qna작성 자료들을 처리
		/*System.out.println("제목 : " + qna.getQuestion_title());
		System.out.println("질문자 : " + qna.getQuestion_writer());
		System.out.println("내용 : " + qna.getQuestion_content());
		System.out.println("아이디 : " + request.getParameter("member_id"));
		System.out.println("카테고리 : " + qna.getQuestion_category());*/
		//도저언
		int result = qnaService.insertMyQna(qnaWrite);
		if(result > 0) {
			System.out.println("글 입력 성공!");
		}else {
			System.out.println("글 입력 실패!");
		}/*A6.LBJ/myPage*/
		return "A6.LBJ/myPage";
	}
	
}
