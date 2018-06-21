package com.kh.goodluck.search.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.search.model.dao.SearchDao;
import com.kh.goodluck.search.model.vo.Search;
import com.kh.goodluck.search.model.vo.SearchSideBar;

@Service("searchService")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao searchDao;
	
	public SearchServiceImpl() {
		
	}
	
	public List<Search> searchMasterKeyword(String searchKeyword, int masterPageBegin, int masterPageEnd) {
		return searchDao.searchMasterKeyword(searchKeyword, masterPageBegin, masterPageEnd);		
	}
	
	public List<Search> searchSlaveKeyword(String searchKeyword, int slavePageBegin, int slavePageEnd) {
		return searchDao.searchSlaveKeyword(searchKeyword, slavePageBegin, slavePageEnd);		
	}
	
	public int searchMasterListCount(String searchKeyword) {
		return searchDao.searchMasterListCount(searchKeyword);
	}
	
	public int searchSlaveListCount(String searchKeyword) {
		return searchDao.searchSlaveListCount(searchKeyword);
	}
	
	public List<SearchSideBar> searchSideBarList(String sessionId) {
		return searchDao.searchSideBarList(sessionId);
	}	
}
