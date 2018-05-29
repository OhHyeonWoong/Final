package com.kh.goodluck.item.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.goodluck.item.model.service.ItemService;
import com.kh.goodluck.item.model.vo.MyPageItem;
import com.kh.goodluck.qna.model.vo.QNA;

@Controller
public class BJLeeItemController {
	
	@Autowired
	private ItemService ItemService;
	
	@RequestMapping(value="lbjMyItem.go",method=RequestMethod.POST)
	public void itemListMethod(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String member_id = request.getParameter("member_id");		
		/*
		 * 페이징 처리 Let's go!
		 * 1. currentPage setting
		 */
	    int qnaCurrentPage = 1;
		if(request.getParameter("page") != null) {
			qnaCurrentPage = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("qnaCurrentPage = " + qnaCurrentPage);
		/*
		 * 2. 한 페이지 당 데이터 갯수 셋팅
		 */
		int qnaLimit = 6;
		/*
		 * 3. 가져올 정보의 전체 갯수를 구하고, 그걸 통해 maxPage 계산
		 */
		int itemListCount = ItemService.selectMyPageItemListCount(member_id);
		int itemMaxPage = (int)((double)itemListCount / qnaLimit + 0.9);
		/*
		 * 4. startRow 와 endRow 계산
		 */
		int qnaStartPage = (((int) ((double) qnaCurrentPage / qnaLimit + 0.9)) - 1) * qnaLimit + 1;
		int qnaStartRow = (qnaCurrentPage-1)*qnaLimit+1; 
	    int itemEndRow = qnaStartRow + qnaLimit - 1;
	    
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", itemEndRow);
	    map.put("member_id", member_id);
		ArrayList<MyPageItem> myItem = (ArrayList<MyPageItem>)ItemService.selectMyPageItem(map);
		
		 if (itemMaxPage < itemEndRow)
		 itemEndRow = itemMaxPage;

		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		/*for(int i=0;i<myQna.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("question_no", myQna.get(i).getQuestion_no());
			System.out.println("myQna.get(i).getQuestion_no()" + myQna.get(i).getQuestion_no());
			job2.put("question_category", myQna.get(i).getQuestion_category());
			job2.put("question_answer_state", myQna.get(i).getQuestion_answer_state());
			job2.put("question_content", myQna.get(i).getQuestion_content());
			job2.put("question_title", myQna.get(i).getQuestion_title());
			job2.put("question_writer", myQna.get(i).getQuestion_writer());
			job2.put("question_date", myQna.get(i).getQuestion_date().toString());
			if(i == 0) {
				job2.put("qnaMaxPage", qnaMaxPage);
				job2.put("qnaStartPage", qnaStartPage);
				job2.put("qnaEndRow", qnaEndRow);
				job2.put("qnaCurrentPage", qnaCurrentPage);
				job2.put("qnaListCount", qnaListCount);
			}
			jarr.add(job2);
		}
		
		jobj.put("qna", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();*/
	}
}
