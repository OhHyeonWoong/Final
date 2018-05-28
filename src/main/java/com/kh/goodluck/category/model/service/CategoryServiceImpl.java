package com.kh.goodluck.category.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.category.model.dao.*;
import com.kh.goodluck.category.model.vo.*;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	
	public CategoryServiceImpl() {
		
	}
	
	public List<Category> headerCategoryBig() {		
		return categoryDao.headerCategoryBig();		
	}
	
	public int bigCategoryCount(String bigCategoryCode) {
		return categoryDao.bigCategoryCount(bigCategoryCode);	
	}	
}
