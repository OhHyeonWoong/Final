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
	    map.put("agency_title", searchKeyword);
	    List<Search> list = searchService.searchKeyword(map);
		
		System.out.println("searchList.size = " + list.size());
		
		if (searchListMaxPage < searchEndRow)
			searchEndRow = searchListMaxPage;		
		
		HashMap<String,Integer> searchPage = new HashMap<String,Integer>();
		searchPage.put("searchListCount", searchListCount);		
		searchPage.put("searchStartRow", searchStartRow);
		searchPage.put("searchCurrentPage", searchCurrentPage);
		searchPage.put("searchEndRow", searchEndRow);
		searchPage.put("searchListMaxPage", searchListMaxPage);
		
		System.out.println("ReturnList : " + list + " / To.SearchController");
		mav.addObject("searchList", list);
		mav.addObject("searchPage", searchPage);
		mav.setViewName("A1.OHW/SearchResult");		
		return mav;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "headerSearchReload.go")
	public void searchReload(HttpServletResponse response, HttpServletRequest request, ModelAndView mav, 
			@RequestParam("searchKeyword") String searchKeyword) throws IOException {
		
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
		System.out.println("SearchStartPage" + searchStartPage);
		int searchStartRow = (searchCurrentPage-1) * searchListLimit+1; 
	    int searchEndRow = searchStartRow + searchListLimit - 1;
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", searchStartRow);
	    map.put("endRow", searchEndRow);
	    map.put("agency_title", searchKeyword);
	    List<Search> list = searchService.searchKeyword(map);
		
	    System.out.println("searchList.size = " + list.size());
		
		if (searchListMaxPage < searchEndRow)
			searchEndRow = searchListMaxPage;		
		
		////qna 처리용 오브젝트
		//보내기용 arraylist생성
		//출력용 JSON 오브젝트
		
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i = 0 ; i < list.size() ; i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job = new JSONObject();
			job.put("agency_no", list.get(i).getAgency_no());		
			job.put("agency_writer", list.get(i).getAgency_writer());		
			job.put("agency_title", list.get(i).getAgency_title());		
			job.put("link2_no", list.get(i).getLink2_no());		
			job.put("agency_type", list.get(i).getAgency_type());		
			job.put("agency_loc", list.get(i).getAgency_loc());		
			job.put("agency_startdate", list.get(i).getAgency_startdate());		
			job.put("agency_enddate", list.get(i).getAgency_enddate());		
			job.put("agency_enrolldate", list.get(i).getAgency_enrolldate());		
			job.put("agency_paytype", list.get(i).getAgency_paytype());		
			job.put("agency_pay", list.get(i).getAgency_pay());		
			job.put("agency_status", list.get(i).getAgency_status());		
			job.put("agency_content", list.get(i).getAgency_content());		
			job.put("agency_views", list.get(i).getAgency_views());		
			job.put("agency_keyword", list.get(i).getAgency_keyword());		
			job.put("agency_option", list.get(i).getAgency_option());		
			
			if(i == 0) {
				job.put("searchListCount", searchListCount);
				job.put("searchStartPage", searchStartPage);
				job.put("searchCurrentPage", searchCurrentPage);
				job.put("searchEndRow", searchEndRow);
				job.put("searchListMaxPage", searchListMaxPage);
			}
			jarr.add(job);
		}
		
		jobj.put("searchPage", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}	
}
