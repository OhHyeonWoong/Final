package com.kh.goodluck.board.controller;

import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.goodluck.board.model.service.BoardService;

@Controller
public class OHW_BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "InsertViewHistory.go", method = RequestMethod.GET)
	public void InsertViewHistory(HttpServletResponse response, 
			@RequestParam("SessionId") String SessionId, 
			@RequestParam("AgencyNo") String AgencyNo) throws Exception {		
		System.out.println("SessionId : " + SessionId + " / To.OHW_BoardControllerController");
		System.out.println("AgencyNo : " + AgencyNo + " / To.OHW_BoardControllerController");
		
		HashMap<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("SessionId", SessionId);
		sendMap.put("AgencyNo", AgencyNo);
		
		int result = boardService.insertViewHistory(sendMap);
		System.out.println("Result : " + result + " / To.OHW_BoardControllerController");
		
		response.sendRedirect("/goodluck/BoardDetail.go?BoardNo=" + AgencyNo);	
	}	
}
