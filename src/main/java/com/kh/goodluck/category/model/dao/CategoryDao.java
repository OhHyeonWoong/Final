package com.kh.goodluck.category.model.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.category.model.vo.Category;

@Repository("categoryDao")
public class CategoryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Category> headerCategoryBig() {		
		return sqlSession.selectList("headerCategoryBig");
	}

	public int bigCategoryCount(String bigCategoryCode) {
		/*System.out.println("SendBigCode : " + bigCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("BigCategoryCountUpdate", bigCategoryCode);
	}
	
	public int midCategoryCount(String midCategoryCode) {
		/*System.out.println("SendMidCode : " + midCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("MidCategoryCountUpdate", midCategoryCode);
	}
	
	public int smallCategoryCount(String smallCategoryCode) {		
		/*System.out.println("SendSmallCode : " + smallCategoryCode + " / To.CategoryDao");*/
		return sqlSession.update("SmallCategoryCountUpdate", smallCategoryCode);
	}

	
	//서비스 글 작성페이지에서 select~option에 표시될 mid카테고리 리스트 가져오기 		
	public List<MidCategory> MidcatePick1() {
		return sqlSession.selectList("midlistlife");
	}

	public List<MidCategory> MidcatePick2() {
		return sqlSession.selectList("midlisttravel");
	}

	public List<MidCategory> MidcatePick3() {
		return sqlSession.selectList("midlistmusic");
	}

	public List<MidCategory> MidcatePick4() {
		return sqlSession.selectList("midlistgame");
	}

	public List<MidCategory> MidcatePick5() {
		return sqlSession.selectList("midlistrent");
	}

	public List<MidCategory> MidcatePick6() {
		return sqlSession.selectList("midlistsupply");
	}

	public List<MidCategory> MidcatePick7() {
		return sqlSession.selectList("midlistfree");
	}

	public List<MidCategory> MidcatePick8() {
		return sqlSession.selectList("midlistpet");
	}
	
	//서비스 글 작성페이지에서 select~option에 표시될 small카테고리 리스트 가져오기 	

	public List<SmallCategory> SamllcatePick1() {
		//MidCategory AA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryAA");
	}
	public List<SmallCategory> SamllcatePick2() {
		//MidCategory AB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryAB");
	}
	public List<SmallCategory> SamllcatePick3() {
		//MidCategory AC인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryAC");
	}
	public List<SmallCategory> SamllcatePick4() {
		//MidCategory AD인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryAD");
	}
	public List<SmallCategory> SamllcatePick5() {
		//MidCategory BA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryBA");
	}
	public List<SmallCategory> SamllcatePick6() {
		//MidCategory BB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryBB");
	}
	public List<SmallCategory> SamllcatePick7() {
		//MidCategory CA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryCA");
	}
	public List<SmallCategory> SamllcatePick8() {
		//MidCategory CB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryCB");
	}
	public List<SmallCategory> SamllcatePick9() {
		//MidCategory CC인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryCC");
	}
	public List<SmallCategory> SamllcatePick10() {
		//MidCategory CD인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryCD");
	}
	public List<SmallCategory> SamllcatePick11() {
		//MidCategory DA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryDA");
	}
	public List<SmallCategory> SamllcatePick12() {
		//MidCategory DB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryDB");
	}
	public List<SmallCategory> SamllcatePick13() {
		//MidCategory DC인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryDC");
	}
	public List<SmallCategory> SamllcatePick14() {
		//MidCategory DD인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryDD");
	}
	public List<SmallCategory> SamllcatePick15() {
		//MidCategory EA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryEA");
	}
	public List<SmallCategory> SamllcatePick16() {
		//MidCategory FA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryFA");
	}
	public List<SmallCategory> SamllcatePick17() {
		//MidCategory FB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryFB");
	}
	public List<SmallCategory> SamllcatePick18() {
		//MidCategory GA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryGA");
	}
	public List<SmallCategory> SamllcatePick19() {
		//MidCategory GB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryGB");
	}
	public List<SmallCategory> SamllcatePick20() {
		//MidCategory GC인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryGC");
	}
	public List<SmallCategory> SamllcatePick21() {
		//MidCategory GD인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryGD");
	}	
	public List<SmallCategory> SamllcatePick22() {
		//MidCategory HA인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryHA");
	}		
	public List<SmallCategory> SamllcatePick23() {
		//MidCategory HB인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryHB");
	}
	public List<SmallCategory> SamllcatePick24() {
		//MidCategory HC인 SamllCategory리스트
		return sqlSession.selectList("samllcategoryHC");
	}
}
