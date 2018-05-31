package com.kh.goodluck.search.model.service;

import java.util.List;

import com.kh.goodluck.search.model.vo.Search;

public interface SearchService {
	
	List<Search> searchKeyword(String searchKeyword);

}
