package com.kh.goodluck.search.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.search.model.service.SearchService;

import com.kh.goodluck.search.model.vo.Search;

@Controller
public class SearchController {	
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("headerSearch.go") /* 세부적인 URL Pattern */
	public ModelAndView list(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam("searchKeyword") String searchKeyword,
			@RequestParam(defaultValue = "1", name = "curMasterPage") int curMasterPage,
			@RequestParam(defaultValue = "1", name = "curSlavePage") int curSlavePage) throws Exception {		
		
		System.out.println("Search Controller Run!");
		/*System.out.println("SearchKeyword : " + request.getParameter("searchKeyword") + " / To.SearchController");
		System.out.println("CurMasterPage : " + request.getParameter("curMasterPage") + " / To.SearchController");
		System.out.println("CurSlavePage : " + request.getParameter("curSlavePage") + " / To.SearchController");*/
		
		/* 레코드 갯수 계산 */
		int masterCount = searchService.searchMasterListCount(searchKeyword);		
		int slaveCount = searchService.searchSlaveListCount(searchKeyword);		
		
		Search masterPager = new Search(masterCount, curMasterPage);
		int masterPageBegin = masterPager.getPageBegin();
		int masterPageEnd = masterPager.getPageEnd();
		
		Search slavePager = new Search(slaveCount, curSlavePage);
		int slavePageBegin = slavePager.getPageBegin();
		int slavePageEnd = slavePager.getPageEnd();
		
		List<Search> masterList = searchService.searchMasterKeyword(searchKeyword, masterPageBegin, masterPageEnd); /* 주인님 게시물 목록 */		
		List<Search> slaveList = searchService.searchSlaveKeyword(searchKeyword, slavePageBegin, slavePageEnd); /* 노예 게시물 목록 */
		
		System.out.println("SearchMasterList : " + masterList + " / To.SearchController");
		/*System.out.println("MasterPageBegin : " + masterPageBegin + " / To.SearchController");
		System.out.println("MasterPageEnd : " + masterPageEnd + " / To.SearchController");
		System.out.println("MasterBlockStart : " + masterPager.getBlockBegin() + " / To.SearchController");
		System.out.println("MasterBlockEnd : " + masterPager.getBlockEnd() + " / To.SearchController");
		System.out.println("SearchSlaveList : " + slaveList + " / To.SearchController");
		System.out.println("SlavePageBegin : " + slavePageBegin + " / To.SearchController");
		System.out.println("SlavePageEnd : " + slavePageEnd + " / To.SearchController");
		System.out.println("SlaveBlockStart : " + slavePager.getBlockBegin() + " / To.SearchController");
		System.out.println("SlaveBlockEnd : " + slavePager.getBlockEnd() + " / To.SearchController");*/
		
		HashMap<Object,Object> map = new HashMap<Object,Object>(); 
		map.put("searchKeyword", searchKeyword); /* 페이지 이동시 검색어 유지할 검색 키워드 */
		map.put("searchMasterList", masterList); /* 맵에 자료 저장 */
		map.put("searchSlaveList", slaveList); /* 맵에 자료 저장 */
		map.put("pageMasterCount", masterList.size());
		map.put("pageSlaveCount", slaveList.size());
		map.put("pagingMasterView", masterPager); /* 페이지 네비게이션을 위한 변수 */
		map.put("pagingSlaveView", slavePager); /* 페이지 네비게이션을 위한 변수 */		
		mav.setViewName("A1.OHW/SearchResult"); /* 포워딩할 뷰의 이름 */
		mav.addObject("searchResult", map); /* ModelAndView에 map을 저장 */
		
		return mav; /* 지정한 뷰로 이동 */
	}
}