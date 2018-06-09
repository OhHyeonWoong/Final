package com.kh.goodluck.board.controller;

import static org.hamcrest.CoreMatchers.is;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public ModelAndView test(HttpServletRequest request,ModelAndView mv) {
		
		String bcate = request.getParameter("bcate");
		String mcate = request.getParameter("mcate");
		String scate = request.getParameter("scate");
		String loc = request.getParameter("loc");
		String status = request.getParameter("status");
		String group1 = request.getParameter("group1");
		String group2 = request.getParameter("group2");
		String group3 = request.getParameter("group3");
		String group4 = request.getParameter("group4");
		String min = request.getParameter("min");
		String max = request.getParameter("max");
		String searchdoc = request.getParameter("searchdoc");
		
		int page = 0;
		
		try{
			page = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e) {
			page = 1;
		}
		
		System.out.println("bcate : "+bcate+"mcate : "+mcate+"scate : "+scate+"loc : "+loc);
		
		bigcategorylist = boardservice.selectBigCategoryAll();
		midcategorylist = boardservice.selectMidCategoryAll();
		smallcategorylist = boardservice.selectSmallCategoryAll();
		categorylink1list = boardservice.selectCategoryLink1();
		categorylink2list = boardservice.selectCategoryLink2();
		ArrayList<String> strlist = new ArrayList<String>();
		
		int pageNum = 0;	
		
		try{
			pageNum = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e) {
			pageNum = 1;
		}
		
		int agencycount = -1;
		String category = null;
		String link2type = null;
		
		/*if(scate.equals("선택하세요")) {
			if(mcate.equals("선택하세요")) {
				category = bcate;
				link2type ="bigcategory";
				agencycount = boardservice.getAgencyCountBig(category);
			}else {
				category = mcate;
				link2type ="midcategory";
				agencycount = boardservice.getAgencyCountMid(category);
			}
		}else {
			category = scate;
			link2type ="smallcategory";
			agencycount = boardservice.getAgencyCount(category);
		}*/
			
		CategoryLink1 catelink1[] = new CategoryLink1[categorylink1list.size()];
		CategoryLink2 catelink2[] = new CategoryLink2[categorylink2list.size()];
				
		System.out.println("link2type:"+link2type+",agencycount:"+agencycount);
		
		
		/*List<Board> boardlist = null;
		HashMap<Object,Object> map = new HashMap<Object,Object>();
		map.put("categoryname", category);
		map.put("startrow", (pageNum*20)-19);
		map.put("endrow", (pageNum*20));
		
		if (link2type.equals("bigcategory")) {
			System.out.println(category);
			boardlist = boardservice.selectCategoryBig(map);
		} else if (link2type.equals("midcategory")) {
			System.out.println(category);
			boardlist = boardservice.selectCategoryMid(map);
		} else {
			System.out.println(category);
			boardlist = boardservice.selectCategory(map);
		}*/
			
		
		
		
		
		
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
		
		
		//mv.addObject("boardlist", boardlist);
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
		mv.addObject("link2name", category);
		mv.addObject("link2type", link2type);
		mv.addObject("pageNum", pageNum);
		mv.addObject("strlistlegnth",strlistlegnth);
		mv.addObject("strlist",strlist);
		//A4.BSH/Board
		return mv;
	}
	
	@RequestMapping(value="bshsearch.go", method=RequestMethod.GET)
	public ModelAndView search(HttpServletRequest request,ModelAndView mv) {
		System.out.println("search start");
		bigcategorylist = boardservice.selectBigCategoryAll();
		midcategorylist = boardservice.selectMidCategoryAll();
		smallcategorylist = boardservice.selectSmallCategoryAll();
		categorylink1list = boardservice.selectCategoryLink1();
		categorylink2list = boardservice.selectCategoryLink2();
		ArrayList<String> strlist = new ArrayList<String>();
		CategoryLink1 catelink1[] = new CategoryLink1[categorylink1list.size()];
		CategoryLink2 catelink2[] = new CategoryLink2[categorylink2list.size()];
		System.out.println("단계1");
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
		System.out.println("단계2");
		mv.setViewName("A4.BSH/Search");
		mv.addObject("strlist",strlist);
		mv.addObject("bigcategorylist",bigcategorylist);
		mv.addObject("midcategorylist",midcategorylist);
		mv.addObject("smallcategorylist",smallcategorylist);
		
		return mv;
	}
	
	
}
