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

	public List<Search> searchKeyword(HashMap<Object, Object> map) {		
		return sqlSession.selectList("headerSearchKeyword", map);
	}

	public int selectSearchListCount(String searchKeyword) {		
		return sqlSession.selectOne("headerSearchListCount", searchKeyword);
	}

}
