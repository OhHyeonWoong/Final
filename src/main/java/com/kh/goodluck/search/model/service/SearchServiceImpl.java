package com.kh.goodluck.search.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.search.model.dao.SearchDao;
import com.kh.goodluck.search.model.vo.Search;

@Service("searchService")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao searchDao;
	
	public SearchServiceImpl() {
		
	}
	
	public List<Search> searchKeyword(HashMap<Object, Object> map) {
		return searchDao.searchKeyword(map);		
	}
	
	public int selectSearchListCount(String searchKeyword) {
		return searchDao.selectSearchListCount(searchKeyword);
	}
	
}
