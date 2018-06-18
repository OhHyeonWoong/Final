package com.kh.goodluck.search.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.goodluck.search.model.vo.Search;

public interface SearchService {
	
	public List<Search> searchMasterKeyword(String searchKeyword, int masterPageBegin, int masterPageEnd);
	public List<Search> searchSlaveKeyword(String searchKeyword, int slavePageBegin, int slavePageEnd);

	public int searchMasterListCount(String searchKeyword);
	public int searchSlaveListCount(String searchKeyword);

}
