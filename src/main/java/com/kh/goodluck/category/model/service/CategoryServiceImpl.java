package com.kh.goodluck.category.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.kh.goodluck.board.model.vo.MidCategory;
import com.kh.goodluck.board.model.vo.SmallCategory;
import com.kh.goodluck.category.model.dao.*;
import com.kh.goodluck.category.model.vo.*;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	
	public CategoryServiceImpl() {
		
	}
	
	public List<Category> headerCategoryBig() {		
		return categoryDao.headerCategoryBig();		
	}
	
	public List<Category> headerCategorySmall() {		
		return categoryDao.headerCategorySmall();		
	}
	
	public int bigCategoryCount(String bigCategoryCode) {
		/*System.out.println("SendBigCode : " + bigCategoryCode + " / To.CategoryServiceImpl");*/
		return categoryDao.bigCategoryCount(bigCategoryCode);	
	}
	
	public int midCategoryCount(String midCategoryCode) {
		/*System.out.println("SendMidCode : " + midCategoryCode + " / To.CategoryServiceImpl");*/
		return categoryDao.midCategoryCount(midCategoryCode);	
	}
	
	public int smallCategoryCount(String smallCategoryCode) {
		/*System.out.println("SendSmallCode : " + smallCategoryCode + " / To.CategoryServiceImpl");*/
		return categoryDao.smallCategoryCount(smallCategoryCode);	
	}	
	
	//서비스 글 작성페이지에서 select~option에 표시될 mid카테고리 리스트 가져오기 	
	@Override
	public List<MidCategory> MidcatePick1() {
		return categoryDao.MidcatePick1();
	}
	@Override
	public List<MidCategory> MidcatePick2() {
		return categoryDao.MidcatePick2();
	}
	@Override
	public List<MidCategory> MidcatePick3() {
		return categoryDao.MidcatePick3();
	}
	@Override
	public List<MidCategory> MidcatePick4() {
		return categoryDao.MidcatePick4();
	}
	@Override
	public List<MidCategory> MidcatePick5() {
		return categoryDao.MidcatePick5();
	}
	@Override
	public List<MidCategory> MidcatePick6() {
		return categoryDao.MidcatePick6();
	}
	@Override
	public List<MidCategory> MidcatePick7() {
		return categoryDao.MidcatePick7();
	}
	@Override
	public List<MidCategory> MidcatePick8() {
		return categoryDao.MidcatePick8();
	}
	//서비스 글 작성페이지에서 select~option에 표시될 mid카테고리 리스트 가져오기(END)
	
	
	//서비스 글 작성페이지에서 select~option에 표시될 small카테고리 리스트 가져오기 	
	@Override
	public List<SmallCategory> SamllcatePick1() {
		//MidCategory AA인 SamllCategory리스트
		return categoryDao.SamllcatePick1();
	}
	@Override
	public List<SmallCategory> SamllcatePick2() {
		//MidCategory AB인 SamllCategory리스트
		return categoryDao.SamllcatePick2();
	}
	@Override
	public List<SmallCategory> SamllcatePick3() {
		//MidCategory AC인 SamllCategory리스트
		return categoryDao.SamllcatePick3();
	}
	@Override
	public List<SmallCategory> SamllcatePick4() {
		//MidCategory AD인 SamllCategory리스트
		return categoryDao.SamllcatePick4();
	}
	@Override
	public List<SmallCategory> SamllcatePick5() {
		//MidCategory BA인 SamllCategory리스트
		return categoryDao.SamllcatePick5();
	}
	@Override
	public List<SmallCategory> SamllcatePick6() {
		//MidCategory BB인 SamllCategory리스트
		return categoryDao.SamllcatePick6();
	}
	@Override
	public List<SmallCategory> SamllcatePick7() {
		//MidCategory CA인 SamllCategory리스트
		return categoryDao.SamllcatePick7();
	}
	@Override
	public List<SmallCategory> SamllcatePick8() {
		//MidCategory CB인 SamllCategory리스트
		return categoryDao.SamllcatePick8();
	}
	@Override
	public List<SmallCategory> SamllcatePick9() {
		//MidCategory CC인 SamllCategory리스트
		return categoryDao.SamllcatePick9();
	}
	@Override
	public List<SmallCategory> SamllcatePick10() {
		//MidCategory CD인 SamllCategory리스트
		return categoryDao.SamllcatePick10();
	}
	@Override
	public List<SmallCategory> SamllcatePick11() {
		//MidCategory DA인 SamllCategory리스트
		return categoryDao.SamllcatePick11();
	}
	@Override
	public List<SmallCategory> SamllcatePick12() {
		//MidCategory DB인 SamllCategory리스트
		return categoryDao.SamllcatePick12();
	}
	@Override
	public List<SmallCategory> SamllcatePick13() {
		//MidCategory DC인 SamllCategory리스트
		return categoryDao.SamllcatePick13();
	}
	@Override
	public List<SmallCategory> SamllcatePick14() {
		//MidCategory DD인 SamllCategory리스트
		return categoryDao.SamllcatePick14();
	}
	@Override
	public List<SmallCategory> SamllcatePick15() {
		//MidCategory EA인 SamllCategory리스트
		return categoryDao.SamllcatePick15();
	}
	@Override
	public List<SmallCategory> SamllcatePick16() {
		//MidCategory FA인 SamllCategory리스트
		return categoryDao.SamllcatePick16();
	}
	@Override
	public List<SmallCategory> SamllcatePick17() {
		//MidCategory FB인 SamllCategory리스트
		return categoryDao.SamllcatePick17();
	}
	@Override
	public List<SmallCategory> SamllcatePick18() {
		//MidCategory GA인 SamllCategory리스트
		return categoryDao.SamllcatePick18();
	}
	@Override
	public List<SmallCategory> SamllcatePick19() {
		//MidCategory GB인 SamllCategory리스트
		return categoryDao.SamllcatePick19();
	}
	@Override
	public List<SmallCategory> SamllcatePick20() {
		//MidCategory GC인 SamllCategory리스트
		return categoryDao.SamllcatePick20();
	}
	@Override
	public List<SmallCategory> SamllcatePick21() {
		//MidCategory GD인 SamllCategory리스트
		return categoryDao.SamllcatePick21();
	}
	@Override
	public List<SmallCategory> SamllcatePick22() {
		//MidCategory HA인 SamllCategory리스트
		return categoryDao.SamllcatePick22();
	}
	@Override
	public List<SmallCategory> SamllcatePick23() {
		//MidCategory HB인 SamllCategory리스트
		return categoryDao.SamllcatePick23();
	}
	@Override
	public List<SmallCategory> SamllcatePick24() {
		//MidCategory HC인 SamllCategory리스트
		return categoryDao.SamllcatePick24();
	}
	
	//서비스 글 작성페이지에서 select~option에 표시될 small카테고리 리스트 가져오기 
	
}
