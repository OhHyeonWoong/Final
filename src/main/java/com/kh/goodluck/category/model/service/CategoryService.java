package com.kh.goodluck.category.model.service;

import java.util.*;

import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.category.model.vo.Category;

public interface CategoryService {
	
	List<Category> headerCategoryBig();

	int bigCategoryCount(String bigCategoryCode);
	
	int midCategoryCount(String midCategoryCode);
	
	int smallCategoryCount(String smallCategoryCode);

	//서비스 글 작성페이지에서 select~option에 표시될 mid카테고리 리스트 가져오기 
	List<MidCategory> MidcatePick1(); //MidCategory 생활list
	List<MidCategory> MidcatePick2(); //MidCategory 여행list
	List<MidCategory> MidcatePick3(); //MidCategory 음악list
	List<MidCategory> MidcatePick4(); //MidCategory 게임list
	List<MidCategory> MidcatePick5(); //MidCategory 렌탈list
	List<MidCategory> MidcatePick6(); //MidCategory 대행list
	List<MidCategory> MidcatePick7(); //MidCategory 프리랜서list
	List<MidCategory> MidcatePick8(); //MidCategory 반려동물list

	//서비스 글 작성페이지에서 select~option에 표시될 small카테고리 리스트 가져오기 
	List<SmallCategory> SamllcatePick1(); //MidCategory AA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick2(); //MidCategory AB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick3(); //MidCategory AC인 SamllCategory리스트
	List<SmallCategory> SamllcatePick4(); //MidCategory AD인 SamllCategory리스트
	List<SmallCategory> SamllcatePick5(); //MidCategory BA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick6(); //MidCategory BB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick7(); //MidCategory CA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick8(); //MidCategory CB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick9(); //MidCategory CC인 SamllCategory리스트
	List<SmallCategory> SamllcatePick10(); //MidCategory CD인 SamllCategory리스트
	List<SmallCategory> SamllcatePick11(); //MidCategory DA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick12(); //MidCategory DB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick13(); //MidCategory DC인 SamllCategory리스트
	List<SmallCategory> SamllcatePick14(); //MidCategory DD인 SamllCategory리스트
	List<SmallCategory> SamllcatePick15(); //MidCategory EA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick16(); //MidCategory FA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick17(); //MidCategory FB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick18(); //MidCategory GA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick19(); //MidCategory GB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick20(); //MidCategory GC인 SamllCategory리스트
	List<SmallCategory> SamllcatePick21(); //MidCategory GD인 SamllCategory리스트
	List<SmallCategory> SamllcatePick22(); //MidCategory HA인 SamllCategory리스트
	List<SmallCategory> SamllcatePick23(); //MidCategory HB인 SamllCategory리스트
	List<SmallCategory> SamllcatePick24(); //MidCategory HC인 SamllCategory리스트

	
}
