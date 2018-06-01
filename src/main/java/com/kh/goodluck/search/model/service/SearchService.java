package com.kh.goodluck.search.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.search.model.vo.Search;

public interface SearchService {
	
	List<Search> searchKeyword(HashMap<Object, Object> map);

	int selectSearchListCount(String searchKeyword);

}
