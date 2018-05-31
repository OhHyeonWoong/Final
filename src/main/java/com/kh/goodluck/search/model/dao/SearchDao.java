package com.kh.goodluck.search.model.dao;

import java.util.List;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.search.model.vo.Search;

@Repository("searchDao")
public class SearchDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Search> searchKeyword(String searchKeyword) {		
		return sqlSession.selectList("headerSearchKeyword", searchKeyword);
	}

}
