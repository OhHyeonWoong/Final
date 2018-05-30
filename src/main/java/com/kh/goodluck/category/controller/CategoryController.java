package com.kh.goodluck.category.controller;

import java.io.*;
import java.net.URLEncoder;
import java.util.*;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.category.model.service.CategoryService;
import com.kh.goodluck.category.model.vo.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "categoryBig.go", method = RequestMethod.POST)
	public void headerCategoryBig(HttpServletResponse response) throws Exception {
		System.out.println("CategoryController Run!");
		List<Category> headerCategoryBig = categoryService.headerCategoryBig();
		/*System.out.println("HeaderCategoryBig : " + headerCategoryBig + " / To.CategoryController");*/
		
		JSONObject json = new JSONObject();		
		JSONArray jarr = new JSONArray();
					
		for(Category category : headerCategoryBig) {
			
			JSONObject job = new JSONObject();			
			job.put("headerCategoryBigCode",category.getCategory_big_code());
			job.put("headerCategoryBigName",category.getCategory_big_name());
			job.put("headerCategoryBigViews",category.getCategory_big_views());
			job.put("headerCategoryBigCount",category.getCategory_big_count());
			
			jarr.add(job);			
		}					
			
			json.put("headerCategoryBig", jarr);
			/*System.out.println("HeaderCategoryBigJson : " + json.toJSONString() + " / To.CategoryController");*/			
			
			PrintWriter out = response.getWriter();
			out.println(json.toJSONString());
			out.flush();
			out.close();		
	}	
	
	@RequestMapping(value = "BigCategoryCount.go", method = RequestMethod.GET)
	public void BigCategoryCount(HttpServletResponse response, @RequestParam("bigCode") String bigCategoryCode) throws Exception {		
		System.out.println("BigCode : " + bigCategoryCode + " / To.CategoryController");
		int result = categoryService.bigCategoryCount(bigCategoryCode);
		System.out.println("Result : " + result + " / To.CategoryController");
		
		response.sendRedirect("/goodluck/bshtest.go?link2_no=" + URLEncoder.encode(bigCategoryCode, "UTF-8"));
	}
	
	@RequestMapping(value = "MidCategoryCount.go", method = RequestMethod.GET)
	public void MidCategoryCount(HttpServletResponse response, @RequestParam("midCode") String midCategoryCode) throws Exception {		
		/*System.out.println("MidCode : " + midCategoryCode + " / To.CategoryController");*/
		int result = categoryService.midCategoryCount(midCategoryCode);
		/*System.out.println("Result : " + result + " / To.CategoryController");*/
		
		response.sendRedirect("/goodluck/bshtest.go?link2_no=" + URLEncoder.encode(midCategoryCode, "UTF-8"));
	}
	
	@RequestMapping(value = "SmallCategoryCount.go", method = RequestMethod.GET)
	public void SmallCategoryCount(HttpServletResponse response, @RequestParam("smallCode") String smallCategoryCode) throws Exception {		
		System.out.println("SmallCode : " + smallCategoryCode + " / To.CategoryController");
		int result = categoryService.smallCategoryCount(smallCategoryCode);
		System.out.println("Result : " + result + " / To.CategoryController");
		
		response.sendRedirect("/goodluck/bshtest.go?link2_no=" + URLEncoder.encode(smallCategoryCode, "UTF-8"));
	}
}
