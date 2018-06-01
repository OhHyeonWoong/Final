package com.kh.goodluck.search.controller;

import java.util.*;

import javax.servlet.http.*;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.qna.model.vo.QNA;
import com.kh.goodluck.search.model.service.SearchService;
import com.kh.goodluck.search.model.vo.Search;

import javafx.scene.control.Pagination;

@Controller
public class SearchController {	
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "headerSearch.go")
	public ModelAndView moveSearch(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam("searchKeyword") String searchKeyword) {
		
		System.out.println("SendKeyword : " + searchKeyword + " / To.SearchController");
		
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
		int searchCurrentPage = 1;
		if(request.getParameter("page") != null) {
			searchCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int searchListLimit = 10;
		//QnA------------------------------------------------------------
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int searchListCount = searchService.selectSearchListCount(searchKeyword);
		int searchListMaxPage = (int)((double)searchListCount / searchListLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int searchStartPage = (((int)((double) searchCurrentPage / searchListLimit + 0.9)) - 1) * searchListLimit + 1;
		int searchStartRow = (searchCurrentPage-1) * searchListLimit+1; 
	    int searchEndRow = searchStartRow + searchListLimit - 1;
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", searchStartRow);
	    map.put("endRow", searchEndRow);
	    map.put("searchKeyword", searchKeyword);
	    List<Search> list = searchService.searchKeyword(map);
		
		System.out.println("searchList.size = " + list.size());
		
		if (searchListMaxPage < searchEndRow)
			searchEndRow = searchListMaxPage;
		
		
		HashMap<String,Integer> searchPage = new HashMap<String,Integer>();
		searchPage.put("searchListMaxPage", searchListMaxPage);
		searchPage.put("searchStartRow", searchStartRow);
		searchPage.put("searchEndRow", searchEndRow);
		searchPage.put("searchCurrentPage", searchCurrentPage);
		searchPage.put("searchListCount", searchListCount);		
		
		System.out.println("ReturnList : " + list + " / To.SearchController");
		mav.addObject("searchList", list);
		mav.addObject("searchPage", searchPage);
		mav.setViewName("A1.OHW/SearchResult");		
		return mav;
	}	
	
}
