package com.kh.goodluck.search.controller;

import java.util.*;

import javax.servlet.http.*;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.kh.goodluck.board.model.service.BoardService;

import javafx.scene.control.Pagination;

public class SearchController {
	
	@Autowired
	private BoardService boardService;	
	
	@RequestMapping(value="headerSearch.go", method=RequestMethod.GET)
	public void searchKeywordFowording(HttpServletRequest request, HttpServletResponse response, 
			@RequestParam("searchKeyword") String searchKeyword) {		  
		
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
