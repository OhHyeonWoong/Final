package com.kh.goodluck.search.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.category.model.service.CategoryService;
import com.kh.goodluck.faq.model.service.FaqService;
import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.notice.model.service.NoticeService;
import com.kh.goodluck.payment.model.service.PaymentService;
import com.kh.goodluck.qna.model.service.QNAService;
import com.kh.goodluck.report.model.service.ReportService;

import javafx.scene.control.Pagination;

public class SearchController {
	
	/* 만들어져있는 패키지 
	 * 1.board 2.category 3.faq 4.item 5.member 6.notice 
	 * 7.payment 8.qna 9.report 
	 * 이 모든 객체의 DBTABLE DATA에 접근하여 검색어에 대한 결과물을 가져온다.
	 */
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private FaqService faqService;
	@Autowired
	private ItemService itemService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private QNAService qnaService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("searchfeedback.go") //검색창으로부터 String값의 파라미터를 받아
	public void searchKeywordFowording(@RequestParam("keyword") String keyword, HttpServletRequest request, HttpServletResponse response) {
	
		/*
		ArrayList<Board> searchlist1
		ArrayList<Category> searchlist2
		ArrayList<Faq> searchlist3
		ArrayList<Item> searchlist4
		ArrayList<Payment> searchlist5
		ArrayList<QNA> searchlist6
		ArrayList<QnaAnswer> searchlist7
		ArrayList<Notice> searchlist8
		ArrayList<Report> searchlist9
		ArrayList<Member> searchlist10 . . */
		
		JSONObject json = new JSONObject();
		JSONObject json2 = new JSONObject();
		JSONObject json3 = new JSONObject();
		JSONObject json4 = new JSONObject();
		JSONObject json5 = new JSONObject();
		JSONObject json6 = new JSONObject();
		JSONObject json7 = new JSONObject();
		JSONObject json8 = new JSONObject();
		JSONObject json9 = new JSONObject();
		JSONObject json10 = new JSONObject();

		JSONArray jarr = new JSONArray();
		JSONArray jarr2 = new JSONArray();
		JSONArray jarr3 = new JSONArray();
		JSONArray jarr4 = new JSONArray();
		JSONArray jarr5 = new JSONArray();
		JSONArray jarr6 = new JSONArray();
		JSONArray jarr7 = new JSONArray();
		JSONArray jarr8 = new JSONArray();
		JSONArray jarr9 = new JSONArray();
		JSONArray jarr10 = new JSONArray();
		
		Pagination p = new Pagination(); 
		//페이징처리를 자동으로 해주는 객체 사용방법 찾는중

		
	}
	

}
