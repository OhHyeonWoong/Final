package com.kh.goodluck.board.controller;

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

		List<BigCategory> bigcategorylist = boardservice.selectBigCategoryAll();
		List<MidCategory> midcategorylist = boardservice.selectMidCategoryAll();
		List<SmallCategory> smallcategorylist = boardservice.selectSmallCategoryAll();
		List<CategoryLink1> categorylink1list = boardservice.selectCategoryLink1();
		List<CategoryLink2> categorylink2list = boardservice.selectCategoryLink2();
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
	
	@RequestMapping(value="bshgetpagecount.go")
	public void getpagecount(HttpServletRequest request,HttpServletResponse response) {
		int currentPagecount = 1;
		if(request.getParameter("page") != null) {
			currentPagecount = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("currentPagecount = " + currentPagecount);
		
		int limit = 20;
		
		int agencyCount = boardservice.getAgencyCount(request.getParameter("category").toString());
		
	}
	
	
}
