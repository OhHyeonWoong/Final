package com.kh.goodluck.category.model.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.category.model.vo.Category;

@Repository("categoryDao")
public class CategoryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Category> headerCategoryBig() {		
		return sqlSession.selectList("headerCategoryBig");
	}

	public int bigCategoryCount(String bigCategoryCode) {
		/*System.out.println("SendBigCode : " + bigCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("BigCategoryCountUpdate", bigCategoryCode);
	}
	
	public int midCategoryCount(String midCategoryCode) {
		/*System.out.println("SendMidCode : " + midCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("MidCategoryCountUpdate", midCategoryCode);
	}
	
	public int smallCategoryCount(String smallCategoryCode) {		
		/*System.out.println("SendSmallCode : " + smallCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("SmallCategoryCountUpdate", smallCategoryCode);
	}
}
