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

	public List<Search> searchMasterKeyword(String searchKeyword, int masterPageBegin, int masterPageEnd) {
		HashMap<String, Object> sendMasterValue = new HashMap<String, Object>();
		sendMasterValue.put("agency_title", searchKeyword);
		sendMasterValue.put("masterPageBegin", masterPageBegin);
		sendMasterValue.put("masterPageEnd", masterPageEnd);
		return sqlSession.selectList("headerSearchMasterKeyword", sendMasterValue);
	}
	
	public List<Search> searchSlaveKeyword(String searchKeyword, int slavePageBegin, int slavePageEnd) {
		HashMap<String, Object> sendSlaveValue = new HashMap<String, Object>();
		sendSlaveValue.put("agency_title", searchKeyword);
		sendSlaveValue.put("slavePageBegin", slavePageBegin);
		sendSlaveValue.put("slavePageEnd", slavePageEnd);
		return sqlSession.selectList("headerSearchSlaveKeyword", sendSlaveValue);
	}

	public int searchMasterListCount(String searchKeyword) {		
		return sqlSession.selectOne("headerSearchMasterListCount", searchKeyword);
	}
	
	public int searchSlaveListCount(String searchKeyword) {		
		return sqlSession.selectOne("headerSearchSlaveListCount", searchKeyword);
	}

}
