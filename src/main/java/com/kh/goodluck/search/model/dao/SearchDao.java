package com.kh.goodluck.search.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.search.model.vo.Search;

@Repository("searchDao")
public class SearchDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Search> searchKeyword(String searchKeyword, int pageStart, int pageEnd) {
		HashMap<String, Object> sendValue = new HashMap<String, Object>();
		sendValue.put("searchKeyword", searchKeyword);
		sendValue.put("pageStart", pageStart);
		sendValue.put("pageEnd", pageEnd);
		return sqlSession.selectList("headerSearchKeyword", sendValue);
	}

	public int searchListCount(String searchKeyword) {
		
		return sqlSession.selectOne("headerSearchListCount", searchKeyword);
	}

}
