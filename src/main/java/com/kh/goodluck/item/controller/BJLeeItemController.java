package com.kh.goodluck.item.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
		System.out.println("lbjMyItem.go run...");
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
	    
	    System.out.println("qnaStartRow = " + qnaStartRow);
	    System.out.println("itemEndRow = " + itemEndRow);
	    HashMap<Object,Object> map = new HashMap<Object,Object>();
	    map.put("startRow", qnaStartRow);
	    map.put("endRow", itemEndRow);
	    map.put("member_id", member_id);
		ArrayList<MyPageItem> myItem = (ArrayList<MyPageItem>)ItemService.selectMyPageItem(map);
		
		System.out.println("myItem size = " + myItem.size());
		
		 if (itemMaxPage < itemEndRow)
		 itemEndRow = itemMaxPage;

		//출력용 JSON 오브젝트
	    JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();		
		
		for(int i=0;i<myItem.size();i++) {
			//저 위의 페이징 처리 데이터들을 vo에 넣자
			JSONObject job2 = new JSONObject();
			job2.put("itemname", myItem.get(i).getItemname());
			job2.put("buy_date", myItem.get(i).getBuy_date().toString());
			job2.put("start_date", myItem.get(i).getStart_date().toString());
			job2.put("end_date", myItem.get(i).getEnd_date().toString());
			job2.put("final_status", myItem.get(i).getFinal_status());
			if(i == 0) {
				job2.put("itemMaxPage", itemMaxPage);
				job2.put("qnaStartPage", qnaStartPage);
				job2.put("itemEndRow", itemEndRow);
				job2.put("qnaCurrentPage", qnaCurrentPage);
				job2.put("itemListCount", itemListCount);			
			}
			jarr.add(job2);
			System.out.println("job를 찍어보자" + i + " = " + job2);
		}
		
		jobj.put("item", jarr);
		
		PrintWriter out = response.getWriter();
		out.print(jobj.toJSONString());
		out.flush();
		out.close();
	}
}
