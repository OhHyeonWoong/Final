package com.kh.goodluck.search.controller;

import java.util.*;

import javax.servlet.http.*;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.search.model.service.SearchService;
import com.kh.goodluck.search.model.vo.Search;

import javafx.scene.control.Pagination;

@Controller
public class SearchController {	
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping(value = "moveSearch.go")
	public ModelAndView moveSearch(HttpServletResponse response, ModelAndView mav) {
		
		mav.setViewName("A1.OHW/SearchResult");
		
		return mav;
	}
	
	
	@RequestMapping(value = "headerSearch.go", method=RequestMethod.GET)
	public void searchKeywordFowording(HttpServletRequest request, HttpServletResponse response, 
			@RequestParam("searchKeyword") String searchKeyword) {
		System.out.println("SendKeyword : " + searchKeyword + " / To.SearchController");
		List<Search> list = searchService.searchKeyword(searchKeyword);
		System.out.println("ReturnList : " + list + " / To.SearchController");		
	}
}
