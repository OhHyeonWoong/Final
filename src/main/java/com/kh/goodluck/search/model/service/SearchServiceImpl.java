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
	
	public List<Search> searchKeyword(String searchKeyword, int pageStart, int pageEnd) {
		return searchDao.searchKeyword(searchKeyword, pageStart, pageEnd);		
	}
	
	public int searchListCount(String searchKeyword) {
		return searchDao.searchListCount(searchKeyword);
	}	
	
}
