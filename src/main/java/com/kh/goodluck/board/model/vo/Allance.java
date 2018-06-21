package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Allance implements Serializable{
	
	private static final long serialVersionUID = 5152L;
	private int ALLIANCE_NO;
	private String ALLIANCE_NAME;
	private String ALLIANCE_URL;
	private String  ALLIANCE_LOC;
	private Date ALLIANCE_EXPIRY_DATE;
	public Allance() {
		// TODO Auto-generated constructor stub
	}
	public int getALLIANCE_NO() {
		return ALLIANCE_NO;
	}
	public void setALLIANCE_NO(int aLLIANCE_NO) {
		ALLIANCE_NO = aLLIANCE_NO;
	}
	public String getALLIANCE_NAME() {
		return ALLIANCE_NAME;
	}
	public void setALLIANCE_NAME(String aLLIANCE_NAME) {
		ALLIANCE_NAME = aLLIANCE_NAME;
	}
	public String getALLIANCE_URL() {
		return ALLIANCE_URL;
	}
	public void setALLIANCE_URL(String aLLIANCE_URL) {
		ALLIANCE_URL = aLLIANCE_URL;
	}
	public String getALLIANCE_LOC() {
		return ALLIANCE_LOC;
	}
	public void setALLIANCE_LOC(String aLLIANCE_LOC) {
		ALLIANCE_LOC = aLLIANCE_LOC;
	}
	public Date getALLIANCE_EXPIRY_DATE() {
		return ALLIANCE_EXPIRY_DATE;
	}
	public void setALLIANCE_EXPIRY_DATE(Date aLLIANCE_EXPIRY_DATE) {
		ALLIANCE_EXPIRY_DATE = aLLIANCE_EXPIRY_DATE;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Allance(int aLLIANCE_NO, String aLLIANCE_NAME, String aLLIANCE_URL, String aLLIANCE_LOC,
			Date aLLIANCE_EXPIRY_DATE) {
		super();
		ALLIANCE_NO = aLLIANCE_NO;
		ALLIANCE_NAME = aLLIANCE_NAME;
		ALLIANCE_URL = aLLIANCE_URL;
		ALLIANCE_LOC = aLLIANCE_LOC;
		ALLIANCE_EXPIRY_DATE = aLLIANCE_EXPIRY_DATE;
	}
	
}
