package com.kh.goodluck.category.controller;

import java.io.*;
import java.util.*;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.kh.goodluck.category.model.service.CategoryService;
import com.kh.goodluck.category.model.vo.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;	
	
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
	
}
