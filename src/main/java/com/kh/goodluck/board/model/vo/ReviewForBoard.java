package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ReviewForBoard implements Serializable{
	
	private static final long serialVersionUID = 578617L;

	
	private Date REVIEW_DATE;
	private String REVIEW_CONTENT;
	private String 	MEMBER_ID;
	private String CATEGORY_SMALL_NAME;
	private String MEMBER_RENAMEPHOTO;
	private int REVIEW_RATE;
	public ReviewForBoard() {
		// TODO Auto-generated constructor stub
	}
	public int getREVIEW_RATE() {
		return REVIEW_RATE;
	}
	public void setREVIEW_RATE(int rEVIEW_RATE) {
		REVIEW_RATE = rEVIEW_RATE;
	}
	public Date getREVIEW_DATE() {
		return REVIEW_DATE;
	}
	public void setREVIEW_DATE(Date rEVIEW_DATE) {
		REVIEW_DATE = rEVIEW_DATE;
	}
	public String getREVIEW_CONTENT() {
		return REVIEW_CONTENT;
	}
	public void setREVIEW_CONTENT(String rEVIEW_CONTENT) {
		REVIEW_CONTENT = rEVIEW_CONTENT;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getCATEGORY_SMALL_NAME() {
		return CATEGORY_SMALL_NAME;
	}
	public void setCATEGORY_SMALL_NAME(String cATEGORY_SMALL_NAME) {
		CATEGORY_SMALL_NAME = cATEGORY_SMALL_NAME;
	}
	public String getMEMBER_RENAMEPHOTO() {
		return MEMBER_RENAMEPHOTO;
	}
	public void setMEMBER_RENAMEPHOTO(String mEMBER_RENAMEPHOTO) {
		MEMBER_RENAMEPHOTO = mEMBER_RENAMEPHOTO;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public ReviewForBoard(Date rEVIEW_DATE, String rEVIEW_CONTENT, String mEMBER_ID, String cATEGORY_SMALL_NAME,
			String mEMBER_RENAMEPHOTO) {
		super();
		REVIEW_DATE = rEVIEW_DATE;
		REVIEW_CONTENT = rEVIEW_CONTENT;
		MEMBER_ID = mEMBER_ID;
		CATEGORY_SMALL_NAME = cATEGORY_SMALL_NAME;
		MEMBER_RENAMEPHOTO = mEMBER_RENAMEPHOTO;
	}
	
}
