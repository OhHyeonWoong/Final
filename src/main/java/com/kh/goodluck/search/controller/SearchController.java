package com.kh.goodluck.search.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.search.model.service.SearchService;

import com.kh.goodluck.search.model.vo.Search;
import com.kh.goodluck.search.model.vo.SearchSideBar;

@Controller
public class SearchController {	
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("headerSearch.go") /* 세부적인 URL Pattern */
	public ModelAndView list(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam(defaultValue = " ", name = "searchKeyword") String searchKeyword,
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
		
		/*System.out.println("SearchMasterList : " + masterList + " / To.SearchController");
		System.out.println("MasterPageBegin : " + masterPageBegin + " / To.SearchController");
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
	
	@SuppressWarnings("unchecked")
	@RequestMapping("searchSidebar.go")
	public void searchSideBar(HttpServletResponse response, HttpServletRequest request, 
									  @RequestParam(value = "SessionId") String SessionId) throws Exception {
		
		System.out.println("Search SideBar Run!");
		
		List<SearchSideBar> sideBarList = searchService.searchSideBarList(SessionId);
		
		/*System.out.println("SideBarList : " + sideBarList + " / To.SearchController");
		System.out.println("SessionId : " + SessionId + " / To.SearchController");*/
		
		JSONArray jarr = new JSONArray();
		
		for(SearchSideBar searchSideBar : sideBarList) {
			 /*추출한 test를 json 객체에 담기*/ 
			JSONObject job = new JSONObject();
			job.put("SessionId", SessionId);
			job.put("vh_no", searchSideBar.getVh_no());
			job.put("member_id", searchSideBar.getMember_id());
			job.put("vh_date", searchSideBar.getVh_date().toString());			
			job.put("agency_no", searchSideBar.getAgency_no());
			job.put("agency_writer", searchSideBar.getAgency_writer());
			job.put("agency_title", searchSideBar.getAgency_title());
			job.put("link2_no", searchSideBar.getLink2_no());
			job.put("agency_type", searchSideBar.getAgency_type());
			job.put("agency_loc", searchSideBar.getAgency_loc());
			job.put("agency_startdate", searchSideBar.getAgency_startdate().toString());
			job.put("agency_enddate", searchSideBar.getAgency_enddate().toString());
			job.put("agency_enrolldate", searchSideBar.getAgency_enrolldate().toString());
			job.put("agency_paytype", searchSideBar.getAgency_paytype());
			job.put("agency_pay", searchSideBar.getAgency_pay());
			job.put("agency_status", searchSideBar.getAgency_status());
			job.put("agency_content", searchSideBar.getAgency_content());
			job.put("agency_views", searchSideBar.getAgency_views());
			job.put("agency_keyword", searchSideBar.getAgency_keyword());
			job.put("agency_option", searchSideBar.getAgency_option());
			
			jarr.add(job);
		}
		JSONObject json = new JSONObject();
		json.put("sideBarList", jarr);
		response.setContentType("application/json; charset=UTF-8");			
		PrintWriter out = response.getWriter();
		out.append(json.toJSONString());
		out.flush();
		out.close();		
	}
			
}