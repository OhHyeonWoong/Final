package com.kh.goodluck.board.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.BigCategory;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.CategoryLink1;
import com.kh.goodluck.board.model.vo.CategoryLink2;
import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;

import net.sf.json.JSONObject;

@Controller
public class BoardController {

	List<BigCategory> bigcategorylist = null;
	List<MidCategory> midcategorylist = null;
	List<SmallCategory> smallcategorylist = null;
	List<CategoryLink1> categorylink1list = null;
	List<CategoryLink2> categorylink2list = null;
	
	
	public BoardController() {
		
	}
	@Autowired
	private BoardService boardservice;
	
	@RequestMapping("Board.go")
	public String notice(HttpServletRequest request,HttpServletResponse response) {
		
		return "A4.BSH/Board";	
	}
	
	@RequestMapping(value="bshtest.go", method=RequestMethod.GET)
	public ModelAndView test(Board board,HttpServletRequest request,ModelAndView mv) {
		
		int pageNum = Integer.parseInt(request.getParameter("page"));
		int agencycount = -1;
		String link2name = board.getLink2_no();
		String link2type = null;
		
		//System.out.println(pageNum);
		//System.out.println(board);

		bigcategorylist = boardservice.selectBigCategoryAll();
		midcategorylist = boardservice.selectMidCategoryAll();
		smallcategorylist = boardservice.selectSmallCategoryAll();
		categorylink1list = boardservice.selectCategoryLink1();
		categorylink2list = boardservice.selectCategoryLink2();
		ArrayList<String> strlist = new ArrayList<String>();
		CategoryLink1 catelink1[] = new CategoryLink1[categorylink1list.size()];
		CategoryLink2 catelink2[] = new CategoryLink2[categorylink2list.size()];
		
		
		for(BigCategory b:bigcategorylist) {
			if(b.getCategory_big_name().equals(link2name)) {
				link2type ="bigcategory";
				agencycount = boardservice.getAgencyCountBig(link2name);
			}
		}
		if(link2type == null) {
			for(MidCategory m:midcategorylist) {
				if(m.getCategory_mid_name().equals(link2name)) {
					link2type ="midcategory";
					agencycount = boardservice.getAgencyCountMid(link2name);
				}
			}
		}
		if(link2type == null) {
			link2type ="smallcategory";
			agencycount = boardservice.getAgencyCount(link2name);
		}
		
		System.out.println("link2type:"+link2type+",agencycount:"+agencycount);
		
		
		List<Board> boardlist = null;
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("categoryname", board.getLink2_no());
		map.put("startrow", (pageNum*20)-19);
		map.put("endrow", (pageNum*20));
		
		if (link2type.equals("bigcategory")) {
			System.out.println(link2name);
			boardlist = boardservice.selectCategoryBig(map);
		} else if (link2type.equals("midcategory")) {
			System.out.println(link2name);
			boardlist = boardservice.selectCategoryMid(map);
		} else {
			System.out.println(link2name);
			boardlist = boardservice.selectCategory(map);
		}
			
		
		
		
		
		
		//System.out.println(boardlist);
		
		/*for(Board b:boardlist) {
			System.out.println("글번호:"+b.getAgency_no());
		}*/
		
		//int catelink1length = catelink1.length;
		
		
		//bigmid.put(key, value)
		int i=0;
		for (CategoryLink1 categoryLink1 : categorylink1list) {
			catelink1[i]=categoryLink1;
			i++;
		}
		
		i=0;
		for (CategoryLink2 categoryLink2 : categorylink2list) {
			catelink2[i]=categoryLink2;
			i++;
		}
		
		for(i=0;i<catelink1.length;i++) {
			
			if(i>0) {
				if(!catelink1[i].getCategory_big_code().equals(catelink1[i-1].getCategory_big_code())) {
					//System.out.println(catelink1[i].getCategory_big_code());
					strlist.add(catelink1[i].getCategory_big_code());
					for(int j=0;j<catelink1.length;j++) {
						if(catelink1[i].getCategory_big_code().equals(catelink1[j].getCategory_big_code())) {
							//System.out.println(catelink1[j].getCategory_mid_code());
							strlist.add(catelink1[j].getCategory_mid_code());
							for(int k=0;k<catelink2.length;k++) {
								if(catelink1[j].getCategory_mid_code().equals(catelink2[k].getCategory_mid_code())) {
									//System.out.println(catelink2[k].getCategory_small_code());
									strlist.add(catelink2[k].getCategory_small_code());
								}
							}
						}
					}
					
				}else {
					
				}
			}else {
				//System.out.println(catelink1[i].getCategory_big_code());
				strlist.add(catelink1[i].getCategory_big_code());
				for(int j=0;j<catelink1.length;j++) {
					if(catelink1[i].getCategory_big_code().equals(catelink1[j].getCategory_big_code())) {
						//System.out.println(catelink1[j].getCategory_mid_code());
						strlist.add(catelink1[j].getCategory_mid_code());
						for(int k=0;k<catelink2.length;k++) {
							if(catelink1[j].getCategory_mid_code().equals(catelink2[k].getCategory_mid_code())) {
								//System.out.println(catelink2[k].getCategory_small_code());
								strlist.add(catelink2[k].getCategory_small_code());
							}
						}
					}
				}
			}		
		}
		
		int strlistlegnth = strlist.size();
		
		/*System.out.println("-----------------");
		for (String str : strlist) {
			System.out.println(str);
		}*/
		mv.setViewName("A4.BSH/Board");
		mv.addObject("bigcategorylist",bigcategorylist);
		mv.addObject("midcategorylist",midcategorylist);
		mv.addObject("smallcategorylist",smallcategorylist);
		
		
		mv.addObject("boardlist", boardlist);
		//mv.addObject("categorylink1list",categorylink1list);
		//mv.addObject("categorylink2list",categorylink2list);
		
		//System.out.println(categorylink1list);
		//System.out.println(categorylink2list);
		//mv.addObject("catelink1",catelink1);
		//mv.addObject("catelink2",catelink2);
		//mv.addObject("catelink1length",catelink1length);
		
		
		agencycount = (int)((double)(agencycount/20)+1.9);
		System.out.println("re-agencycount:"+agencycount);
		mv.addObject("agencycount", agencycount);
		mv.addObject("link2name", link2name);
		mv.addObject("link2type", link2type);
		mv.addObject("pageNum", pageNum);
		mv.addObject("strlistlegnth",strlistlegnth);
		mv.addObject("strlist",strlist);
		//A4.BSH/Board
		return mv;
	}
	
	@RequestMapping(value="bshsearch.go")
	public ModelAndView search(HttpServletRequest request,ModelAndView mv) {
				
		bigcategorylist = boardservice.selectBigCategoryAll();
		midcategorylist = boardservice.selectMidCategoryAll();
		smallcategorylist = boardservice.selectSmallCategoryAll();
		categorylink1list = boardservice.selectCategoryLink1();
		categorylink2list = boardservice.selectCategoryLink2();
		ArrayList<String> strlist = new ArrayList<String>();
		CategoryLink1 catelink1[] = new CategoryLink1[categorylink1list.size()];
		CategoryLink2 catelink2[] = new CategoryLink2[categorylink2list.size()];
		
		int i=0;
		for (CategoryLink1 categoryLink1 : categorylink1list) {
			catelink1[i]=categoryLink1;
			i++;
		}
		
		i=0;
		for (CategoryLink2 categoryLink2 : categorylink2list) {
			catelink2[i]=categoryLink2;
			i++;
		}
		
		for(i=0;i<catelink1.length;i++) {
			
			if(i>0) {
				if(!catelink1[i].getCategory_big_code().equals(catelink1[i-1].getCategory_big_code())) {
					//System.out.println(catelink1[i].getCategory_big_code());
					strlist.add(catelink1[i].getCategory_big_code());
					for(int j=0;j<catelink1.length;j++) {
						if(catelink1[i].getCategory_big_code().equals(catelink1[j].getCategory_big_code())) {
							//System.out.println(catelink1[j].getCategory_mid_code());
							strlist.add(catelink1[j].getCategory_mid_code());
							for(int k=0;k<catelink2.length;k++) {
								if(catelink1[j].getCategory_mid_code().equals(catelink2[k].getCategory_mid_code())) {
									//System.out.println(catelink2[k].getCategory_small_code());
									strlist.add(catelink2[k].getCategory_small_code());
								}
							}
						}
					}
					
				}else {
					
				}
			}else {
				//System.out.println(catelink1[i].getCategory_big_code());
				strlist.add(catelink1[i].getCategory_big_code());
				for(int j=0;j<catelink1.length;j++) {
					if(catelink1[i].getCategory_big_code().equals(catelink1[j].getCategory_big_code())) {
						//System.out.println(catelink1[j].getCategory_mid_code());
						strlist.add(catelink1[j].getCategory_mid_code());
						for(int k=0;k<catelink2.length;k++) {
							if(catelink1[j].getCategory_mid_code().equals(catelink2[k].getCategory_mid_code())) {
								//System.out.println(catelink2[k].getCategory_small_code());
								strlist.add(catelink2[k].getCategory_small_code());
							}
						}
					}
				}
			}		
		}
		
		String bcate = request.getParameter("bcate");
		String mcate = request.getParameter("mcate");
		String scate = request.getParameter("scate");
		String loc = request.getParameter("loc");
		String state = request.getParameter("state");
		String group1 = request.getParameter("group1");
		String group2 = request.getParameter("group2");
		String group3 = request.getParameter("group3");
		//String group4 = request.getParameter("group4");
		String strmin = request.getParameter("min");
		String strmax = request.getParameter("max");
		String searchtext = request.getParameter("searchtext");
		String link2name = null;
		int page = Integer.parseInt(request.getParameter("page"));
		int min = -1;
		int max = -1;
		int searchsize = 0;
		
		if(group3.equals("")) {
			group3 = "등록날짜순";
		}
		
		if(!strmin.equals("")) {
			try {
				min = Integer.parseInt(strmin);
				if(min<0) {
					min=-3;
				}
			}catch (Exception e) {
				min = -2;
			}
		}else {
			min = 0;
		}
		
		if(!strmax.equals("")) {
			try {
				max = Integer.parseInt(strmax);
				if(max<0) {
					max=-3;
				}
			}catch (Exception e) {
				max = -2;
			}
		}else {
			max = 0;
		}
		
		//String query = "user01";
		//(select rownum as rnum, AGENCY_NO,AGENCY_WRITER,AGENCY_TITLE, LINK2_NO,AGENCY_TYPE,AGENCY_LOC,AGENCY_STARTDATE,AGENCY_ENDDATE,AGENCY_ENROLLDATE,AGENCY_PAYTYPE,AGENCY_PAY,AGENCY_STATUS,AGENCY_CONTENT,AGENCY_VEIWS,AGENCY_KEYWORD,AGENCY_OPTION from (select a.AGENCY_NO,a.AGENCY_WRITER,a.AGENCY_TITLE,b.CATEGORY_BIG_NAME as LINK2_NO,a.AGENCY_TYPE,a.AGENCY_LOC,a.AGENCY_STARTDATE,a.AGENCY_ENDDATE,a.AGENCY_ENROLLDATE,a.AGENCY_PAYTYPE,a.AGENCY_PAY,a.AGENCY_STATUS,a.AGENCY_CONTENT,a.AGENCY_VEIWS,a.AGENCY_KEYWORD,a.AGENCY_OPTION from AGENCY a, CATEGORYLINK2 link2, CATEGORYLINK1 link1,BIGCATEGORY b where link2.LINK2_NO = a.LINK2_NO and link2.CATEGORY_MID_CODE = link1.CATEGORY_MID_CODE and link1.CATEGORY_BIG_CODE = b.CATEGORY_BIG_CODE and b.CATEGORY_BIG_NAME = '"+bcate+"' order by a.AGENCY_NO desc)) where rnum >= "+((page*20)-19)+" and rnum <= "+(page*20);
		
		List<Board> searchlist = null;
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("scate", scate);
		map.put("mcate", mcate);
		map.put("bcate", bcate);
		map.put("loc", loc);
		map.put("state", state);
		map.put("group1", group1);
		map.put("group2", group2);
		map.put("group3", group3);
		map.put("strmin", strmin);
		map.put("strmax", strmax);
		map.put("min", min);
		map.put("max", max);
		map.put("searchtext", searchtext);
		map.put("page", page);
		map.put("startrow", (page*20)-19);
		map.put("endrow", (page*20));
		
		//map.put("strquery", query);
		
		int mode = 0;
		//카테고리 종류 별로 검색 쿼리가 달라야함 ㅅㅂ....
		
		if(scate.equals("")) { 
			if(mcate.equals("")) { // bcate 일때
				mode = 10;
				if(group1.equals("")) {
					mode = 11;
				}else if(group1.equals("시급")){
					if(group2.equals("제공")) {
						mode = 21;
					}else if(group2.equals("구인")){
						mode = 22;
					}else {
						mode = 12;
					}
				}else if(group1.equals("일급")){
					if(group2.equals("제공")) {
						mode = 23;
					}else if(group2.equals("구인")){
						mode = 24;
					}else {
						mode = 13;
					}
				}else if(group2.equals("")){
					mode = 14;
				}else if(group2.equals("제공")){
					mode = 15;
				}else if(group2.equals("구인")){
					mode = 16;
				}else if(group3.equals("등록날짜순")){
					mode = 17;
				}else if(group3.equals("시작날짜순")){
					mode = 18;
				}else if(group3.equals("금액낮은순")){
					mode = 19;
				}else if(group3.equals("금액높은순")){
					mode = 20;
				}
			}else { // mcate 일때
				mode = 30;
				if(group1.equals("")) {
					mode = 31;
				}else if(group1.equals("시급")){
					if(group2.equals("제공")) {
						mode = 41;
					}else if(group2.equals("구인")){
						mode = 42;
					}else {
						mode = 32;
					}
				}else if(group1.equals("일급")){
					if(group2.equals("제공")) {
						mode = 43;
					}else if(group2.equals("구인")){
						mode = 44;
					}else {
						mode = 33;
					}
				}else if(group2.equals("")){
					mode = 34;
				}else if(group2.equals("제공")){
					mode = 35;
				}else if(group2.equals("구인")){
					mode = 36;
				}else if(group3.equals("등록날짜순")){
					mode = 37;
				}else if(group3.equals("시작날짜순")){
					mode = 38;
				}else if(group3.equals("금액낮은순")){
					mode = 39;
				}else if(group3.equals("금액높은순")){
					mode = 40;
				}
			}
		}else { // scate 일때
			mode = 50;
			if(group1.equals("")) {
				mode = 51;
			}else if(group1.equals("시급")){
				if(group2.equals("제공")) {
					mode = 61;
				}else if(group2.equals("구인")){
					mode = 62;
				}else {
					mode = 52;
				}
			}else if(group1.equals("일급")){
				if(group2.equals("제공")) {
					mode = 63;
				}else if(group2.equals("구인")){
					mode = 64;
				}else {
					mode = 53;
				}
			}else if(group2.equals("")){
				mode = 54;
			}else if(group2.equals("제공")){
				mode = 55;
			}else if(group2.equals("구인")){
				mode = 56;
			}else if(group3.equals("등록날짜순")){
				mode = 57;
			}else if(group3.equals("시작날짜순")){
				mode = 58;
			}else if(group3.equals("금액낮은순")){
				mode = 59;
			}else if(group3.equals("금액높은순")){
				mode = 60;
			}
		}
		// 10 - bcate
		// 11 - 시급 체크안됨
		// 12 - 시급 체크
		// 13 - 일급 체크
		// 14 - 제공 체크안됨
		// 15 - 제공 체크
		// 16 - 구인 체크
		// 17 - 등록날짜순
		// 18 - 시작날짜순
		// 19 - 금액낮은순
		// 20 - 금액높은순
		// 21 - 시급,제공 둘다 체크됨
		// 22 - 시급,구인 둘다 체크됨
		// 23 - 일급,제공 둘다 체크됨
		// 24 - 일급,구인 둘다 체크됨

		
		// 30 - mcate
		// 31 - 시급 체크안됨
		// 32 - 시급 체크
		// 33 - 일급 체크
		// 34 - 제공 체크안됨
		// 35 - 제공 체크
		// 36 - 구인 체크
		// 37 - 등록날짜순
		// 38 - 시작날짜순
		// 39 - 금액낮은순
		// 40 - 금액높은순
		// 41 - 시급,제공 둘다 체크됨
		// 42 - 시급,구인 둘다 체크됨
		// 43 - 일급,제공 둘다 체크됨
		// 44 - 일급,구인 둘다 체크됨
		
		// 50 - scate
		// 51 - 시급 체크안됨
		// 52 - 시급 체크
		// 53 - 일급 체크
		// 54 - 제공 체크안됨
		// 55 - 제공 체크
		// 56 - 구인 체크
		// 57 - 등록날짜순
		// 58 - 시작날짜순
		// 59 - 금액낮은순
		// 60 - 금액높은순 
		// 61 - 시급,제공 둘다 체크됨
		// 62 - 시급,구인 둘다 체크됨
		// 63 - 일급,제공 둘다 체크됨
		// 64 - 일급,구인 둘다 체크됨
	
		map.put("mode", mode);
		
		System.out.println("bcate:"+bcate);
		System.out.println("mcate:"+mcate);
		System.out.println("scate:"+scate);
		System.out.println("mode : "+mode);
		System.out.println("page:"+page);
		
		if(scate.equals("")) {
			if(mcate.equals("")){
				link2name = bcate;
			}else {
				link2name = mcate;
			}
		}else {
			link2name = scate;
		}
		
		if(min>0) {
			System.out.println("min : "+min);
		}
		if(max>0) {
			System.out.println("max : "+max);
		}
		
		//System.out.println("사이즈:"+searchlist.size());
		searchlist = boardservice.search(map);
		
		System.out.println("searchcount : "+searchlist.size());
		searchsize = (int)((double)(searchlist.size()/20)+1.9);
		System.out.println("searchsize : "+searchsize);
		
		mv.setViewName("A4.BSH/Search");
		
		mv.addObject("bigcategorylist",bigcategorylist);
		mv.addObject("midcategorylist",midcategorylist);
		mv.addObject("smallcategorylist",smallcategorylist);
		mv.addObject("strlist",strlist);
		mv.addObject("link2name", link2name);
		mv.addObject("map", map);
		mv.addObject("searchlist",searchlist);
		mv.addObject("searchsize",searchsize);
		return mv;
	}
	
	@RequestMapping(value="prime.go")
	public void primesearch(HttpServletRequest request,HttpServletResponse response) {
		
		System.out.println("Ajax run------------------");
		
		bigcategorylist = boardservice.selectBigCategoryAll();
		midcategorylist = boardservice.selectMidCategoryAll();
		String category = request.getParameter("category");
		int page = Integer.parseInt(request.getParameter("page"));
		int primecount = 0;
		
		System.out.println("Ajax get param category: "+category);
		System.out.println("Ajax get param page: "+page);

		String link2type = null;
		List<Board> primelist = null;
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		
		map.put("category", category);
		map.put("startrow", ((page*10)-9));
		map.put("endrow", (page*10));
		
		
		for(BigCategory b:bigcategorylist) {
			if(b.getCategory_big_name().equals(category)) {
				link2type ="bigcategory";
				primelist = boardservice.primebig(map);
				primecount = boardservice.primebigcount(map);
				System.out.println("대카 프라임 ㄱ");
			}
		}
		if(link2type == null) {
			for(MidCategory m:midcategorylist) {
				if(m.getCategory_mid_name().equals(category)) {
					link2type ="midcategory";
					primelist = boardservice.primemid(map);
					primecount = boardservice.primemidcount(map);
					System.out.println("중카 프라임 ㄱ");
				}
			}
		}
		if(link2type == null) {
			link2type = "smallcategory";
			primelist = boardservice.primesma(map);
			primecount = boardservice.primesmacount(map);
			System.out.println("소카 프라임 ㄱ");			
		}
		
		System.out.println("link2type : "+link2type);
		System.out.println("primelist.size : "+primelist.size());
		System.out.println("primecount : "+primecount);
		
		JSONObject jobj = new JSONObject();
		JSONArray jarr = new JSONArray();	
		
		for(Board b : primelist) {
			
			JSONObject jsonboard = new JSONObject();
			jsonboard.put("Agency_no", b.getAgency_no());
			jsonboard.put("Agency_writer", b.getAgency_writer());
			jsonboard.put("Agency_title", b.getAgency_title());
			jsonboard.put("link2_no", b.getLink2_no());
			jsonboard.put("Agency_type", b.getAgency_type());
			jsonboard.put("Agency_loc", (b.getAgency_loc()).substring(0, 2));
			jsonboard.put("Agency_startdate", b.getAgency_startdate().toString());
			jsonboard.put("Agency_enddate", b.getAgency_enddate().toString());
			jsonboard.put("Agency_enrolldate", b.getAgency_enrolldate().toString());
			jsonboard.put("Agency_paytype", b.getAgency_paytype());
			jsonboard.put("Agency_pay", b.getAgency_pay());
			jsonboard.put("Agency_status", b.getAgency_status());
			jsonboard.put("Agency_content", b.getAgency_content());
			jsonboard.put("Agency_views", b.getAgency_views());
			jsonboard.put("Agency_keyword", b.getAgency_keyword());
			jsonboard.put("Agency_option", b.getAgency_option());
			
			jarr.add(jsonboard);
		}
		jobj.put("primelist", jarr);
		//jobj.put("primecount", primecount);
		
		PrintWriter out = null;
		
		try {
			out = response.getWriter();
			out.print(jobj);
			out.flush();
			out.close();
		}catch (Exception e) {
			System.out.println("아웃실패");
		}
		
	}
	
}
