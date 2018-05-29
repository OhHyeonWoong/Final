package com.kh.goodluck.category.model.service;

import java.util.*;


import com.kh.goodluck.category.model.vo.Category;

public interface CategoryService {
	
	List<Category> headerCategoryBig();

	int bigCategoryCount(String bigCategoryCode);
	
	int midCategoryCount(String midCategoryCode);
	
	int smallCategoryCount(String smallCategoryCode);
	
}
