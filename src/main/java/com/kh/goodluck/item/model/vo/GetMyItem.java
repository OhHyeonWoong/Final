package com.kh.goodluck.item.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("getmyitem")
public class GetMyItem implements Serializable{

	private static final long serialVersionUID = 26331L;
	
	public GetMyItem() {
	//myitem테이블과 itemlist테이블의 조인 클래스
	}
	
	private int MYITEM_NO;
	private String MEMBER_ID;
	private int ITEMLIST_NO;
	private Date BUY_DATE;
	private int MYITEM_STATUS;
	private String ITEMNAME;
	private int ITEMPRICE;
	private int ITEMPERIOD;
	private int ITEMTYPE;
	private String ITEMFILENAME;
	private int currentPage;
	private int limit;
	private int startRow;
	private int endRow;
	private int maxpage;

	public int getMYITEM_NO() {
		return MYITEM_NO;
	}
	public void setMYITEM_NO(int mYITEM_NO) {
		MYITEM_NO = mYITEM_NO;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public int getITEMLIST_NO() {
		return ITEMLIST_NO;
	}
	public void setITEMLIST_NO(int iTEMLIST_NO) {
		ITEMLIST_NO = iTEMLIST_NO;
	}
	public Date getBUY_DATE() {
		return BUY_DATE;
	}
	public void setBUY_DATE(Date bUY_DATE) {
		BUY_DATE = bUY_DATE;
	}
	public int getMYITEM_STATUS() {
		return MYITEM_STATUS;
	}
	public void setMYITEM_STATUS(int mYITEM_STATUS) {
		MYITEM_STATUS = mYITEM_STATUS;
	}
	public String getITEMNAME() {
		return ITEMNAME;
	}
	public void setITEMNAME(String iTEMNAME) {
		ITEMNAME = iTEMNAME;
	}
	public int getITEMPRICE() {
		return ITEMPRICE;
	}
	public void setITEMPRICE(int iTEMPRICE) {
		ITEMPRICE = iTEMPRICE;
	}
	public int getITEMPERIOD() {
		return ITEMPERIOD;
	}
	public void setITEMPERIOD(int iTEMPERIOD) {
		ITEMPERIOD = iTEMPERIOD;
	}
	public int getITEMTYPE() {
		return ITEMTYPE;
	}
	public void setITEMTYPE(int iTEMTYPE) {
		ITEMTYPE = iTEMTYPE;
	}
	public String getITEMFILENAME() {
		return ITEMFILENAME;
	}
	public void setITEMFILENAME(String iTEMFILENAME) {
		ITEMFILENAME = iTEMFILENAME;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getMaxpage() {
		return maxpage;
	}
	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}
	public GetMyItem(int mYITEM_NO, String mEMBER_ID, int iTEMLIST_NO, Date bUY_DATE, int mYITEM_STATUS,
			String iTEMNAME, int iTEMPRICE, int iTEMPERIOD, int iTEMTYPE, String iTEMFILENAME, int currentPage,
			int limit, int startRow, int endRow, int maxpage) {
		super();
		MYITEM_NO = mYITEM_NO;
		MEMBER_ID = mEMBER_ID;
		ITEMLIST_NO = iTEMLIST_NO;
		BUY_DATE = bUY_DATE;
		MYITEM_STATUS = mYITEM_STATUS;
		ITEMNAME = iTEMNAME;
		ITEMPRICE = iTEMPRICE;
		ITEMPERIOD = iTEMPERIOD;
		ITEMTYPE = iTEMTYPE;
		ITEMFILENAME = iTEMFILENAME;
		this.currentPage = currentPage;
		this.limit = limit;
		this.startRow = startRow;
		this.endRow = endRow;
		this.maxpage = maxpage;
	}

	@Override
	public String toString() {
		return "Item [ITEMLIST_NO=" + ITEMLIST_NO + ", ITEMNAME=" + ITEMNAME + ", ITEMPRICE=" + ITEMPRICE + ", ITEMPERIOD="
				+ ITEMPERIOD + ", ITEMTYPE=" + ITEMTYPE + ", ITEMFILENAME=" + ITEMFILENAME + ", ITEMSELLCOUNT="
				+ "]";
	}
	
}
