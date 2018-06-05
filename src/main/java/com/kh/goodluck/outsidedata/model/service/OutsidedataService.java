package com.kh.goodluck.outsidedata.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.goodluck.outsidedata.model.vo.PetNews;

public interface OutsidedataService {

	List<PetNews> petNewsDataThrows();

	PetNews petNewsDetail(int petpk);

}
