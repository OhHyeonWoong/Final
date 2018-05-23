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

}
