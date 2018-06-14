package com.kh.goodluck.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.*;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.search.model.service.SearchService;
import com.kh.goodluck.search.model.vo.Pager;
import com.kh.goodluck.search.model.vo.Search;

import javafx.scene.control.Pagination;

@Controller
public class SearchController {	
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("headerSearch.go") /* 세부적인 URL Pattern */
	public ModelAndView list(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam("searchKeyword") String searchKeyword,
			@RequestParam(defaultValue = "1") int curPage) throws Exception {
		
		/* 레코드 갯수 계산 */
		int count = searchService.searchListCount(searchKeyword);
		
		Search pager = new Search(count, curPage);
		int pageStart = pager.getPageBegin();
		int pageEnd = pager.getPageEnd();
		
		List<Search> list = searchService.searchKeyword(searchKeyword, pageStart, pageEnd); /* 게시물 목록 */
		
		
		System.out.println("SearchList : " + list + " / To.SearchController");
		System.out.println("PageStart : " + pageStart + " / To.SearchController");
		System.out.println("PageEnd : " + pageEnd + " / To.SearchController");
		
		HashMap<Object,Object> map = new HashMap<Object,Object>(); 
		map.put("searchList", list); /* 맵에 자료 저장 */
		map.put("pageCount", list.size());
		map.put("searchKeyword", searchKeyword);
		map.put("pagingView", pager); /* 페이지 네비게이션을 위한 변수 */
		mav.setViewName("A1.OHW/SearchResult"); /* 포워딩할 뷰의 이름 */
		mav.addObject("searchResult", map); /* ModelAndView에 map을 저장 */
		
		return mav; /* 지정한 뷰로 이동 */
	}
	
	/*@RequestMapping(value = "headerSearch.go")
	public ModelAndView moveSearch(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam("searchKeyword") String searchKeyword) {		
		
		System.out.println("SendKeyword : " + searchKeyword + " / To.SearchController");			
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();	   
	    map.put("agency_title", searchKeyword);
	    List<Search> list = searchService.searchKeyword(searchKeyword, pageStart, pageEnd);				
		
		System.out.println("ReturnList : " + list + " / To.SearchController");
		mav.addObject("searchList", list);
		mav.addObject("searchKeyword", searchKeyword);
		mav.setViewName("A1.OHW/SearchResult");		
		return mav;
	}	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "headerSearchAjax.go", method = RequestMethod.POST)
	public void searchReload(HttpServletResponse response, HttpServletRequest request, 
			@RequestParam("searchKeyword") String searchKeyword) throws IOException {
		
		System.out.println("SendKeyword : " + searchKeyword + " / To.SearchController");
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();	   
			map.put("agency_title", searchKeyword);
			List<Search> list = searchService.searchKeyword(searchKeyword, pageStart, pageEnd);
			JSONArray jarr = new JSONArray();			
			
			for(Search search : list) {
				 추출한 test를 json 객체에 담기 
				JSONObject job = new JSONObject();
				job.put("agency_no", search.getAgency_no());
				job.put("agency_writer", search.getAgency_writer());
				job.put("agency_title", search.getAgency_title());
				job.put("link2_no", search.getLink2_no());
				job.put("agency_type", search.getAgency_type());
				job.put("agency_loc", search.getAgency_loc());
				job.put("agency_startdate", search.getAgency_startdate().toString());
				job.put("agency_enddate", search.getAgency_enddate().toString());
				job.put("agency_enrolldate", search.getAgency_enrolldate().toString());
				job.put("agency_paytype", search.getAgency_paytype());
				job.put("agency_pay", search.getAgency_pay());
				job.put("agency_status", search.getAgency_status());
				job.put("agency_content", search.getAgency_content());
				job.put("agency_views", search.getAgency_views());
				job.put("agency_keyword", search.getAgency_keyword());
				job.put("agency_option", search.getAgency_option());
				
				jarr.add(job);
			}
			JSONObject json = new JSONObject();
			json.put("searchList", jarr);
			response.setContentType("application/json; charset=UTF-8");			
			PrintWriter out = response.getWriter();
			out.append(json.toJSONString());
			out.flush();
			out.close();		
		}*/			
	}