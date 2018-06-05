package com.kh.goodluck.outsidedata.model.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodluck.outsidedata.model.dao.OutsidedataDao;
import com.kh.goodluck.outsidedata.model.vo.PetNews;


@Service("OutsidedataService")
public class OutsidedataServiceImpl implements OutsidedataService {

	@Autowired
	OutsidedataDao outsidedataDao;
	
	public OutsidedataServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	  
	@Override
	public List<PetNews> petNewsDataThrows() {
		// PetNew에 관한 정보를 받아오는 메소드
		return outsidedataDao.petNewsDataThrows();
	}
	
	@Override
	public PetNews petNewsDetail(int petpk) {
		// PetNew에 대하여 상세조회를 하는 메소드
		return outsidedataDao.petNewsDetail(petpk);
	}


}