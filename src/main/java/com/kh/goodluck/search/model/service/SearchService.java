package com.kh.goodluck.search.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.search.model.vo.Search;

public interface SearchService {
	
	public List<Search> searchKeyword(String searchKeyword, int pageStart, int pageEnd);

	public int searchListCount(String searchKeyword);

}
