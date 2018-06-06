package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

public class GetCategoryForBoardDetail implements Serializable{

	private static final long serialVersionUID = 45457L;
	 
	public GetCategoryForBoardDetail() {
		// TODO Auto-generated constructor stub
	}
	private String CATEGORY_BIG_CODE;
	private String CATEGORY_MID_CODE;
	private String CATEGORY_SMALL_CODE;
	private String CATEGORY_BIG_NAME;
	private String CATEGORY_MID_NAME;
	private String CATEGORY_SMALL_NAME;
	private int LINK1_NO;
	private int LINK2_NO;

	@Override
	public String toString() {
		return "GetCategoryForBoardDetail [CATEGORY_BIG_CODE=" + CATEGORY_BIG_CODE + ", CATEGORY_MID_CODE="
				+ CATEGORY_MID_CODE + ", CATEGORY_SMALL_CODE=" + CATEGORY_SMALL_CODE + ", CATEGORY_BIG_NAME="
				+ CATEGORY_BIG_NAME + ", CATEGORY_MID_NAME=" + CATEGORY_MID_NAME + ", CATEGORY_SMALL_NAME="
				+ CATEGORY_SMALL_NAME + ", LINK1_NO=" + LINK1_NO + ", LINK2_NO=" + LINK2_NO + "]";
	}

	public String getCATEGORY_BIG_CODE() {
		return CATEGORY_BIG_CODE;
	}

	public void setCATEGORY_BIG_CODE(String cATEGORY_BIG_CODE) {
		CATEGORY_BIG_CODE = cATEGORY_BIG_CODE;
	}

	public String getCATEGORY_MID_CODE() {
		return CATEGORY_MID_CODE;
	}

	public void setCATEGORY_MID_CODE(String cATEGORY_MID_CODE) {
		CATEGORY_MID_CODE = cATEGORY_MID_CODE;
	}

	public String getCATEGORY_SMALL_CODE() {
		return CATEGORY_SMALL_CODE;
	}

	public void setCATEGORY_SMALL_CODE(String cATEGORY_SMALL_CODE) {
		CATEGORY_SMALL_CODE = cATEGORY_SMALL_CODE;
	}

	public String getCATEGORY_BIG_NAME() {
		return CATEGORY_BIG_NAME;
	}

	public void setCATEGORY_BIG_NAME(String cATEGORY_BIG_NAME) {
		CATEGORY_BIG_NAME = cATEGORY_BIG_NAME;
	}

	public String getCATEGORY_MID_NAME() {
		return CATEGORY_MID_NAME;
	}

	public void setCATEGORY_MID_NAME(String cATEGORY_MID_NAME) {
		CATEGORY_MID_NAME = cATEGORY_MID_NAME;
	}

	public String getCATEGORY_SMALL_NAME() {
		return CATEGORY_SMALL_NAME;
	}

	public void setCATEGORY_SMALL_NAME(String cATEGORY_SMALL_NAME) {
		CATEGORY_SMALL_NAME = cATEGORY_SMALL_NAME;
	}

	public int getLINK1_NO() {
		return LINK1_NO;
	}

	public void setLINK1_NO(int lINK1_NO) {
		LINK1_NO = lINK1_NO;
	}

	public int getLINK2_NO() {
		return LINK2_NO;
	}

	public void setLINK2_NO(int lINK2_NO) {
		LINK2_NO = lINK2_NO;
	}
	
	
	
}
