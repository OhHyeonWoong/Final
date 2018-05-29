package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

public class ItemPackage implements  Serializable{

	private static final long serialVersionUID =9674L;
	public ItemPackage() {
		// TODO Auto-generated constructor stub
	}
	private  int PACKAGEPK;
	private String PACKAGE_NAME;
	private  String ITEMLIST_NO;
	private  int PACKAGE_PRICE;
	@Override
	public String toString() {
		return "ItemPackage [PACKAGEPK=" + PACKAGEPK + ", PACKAGE_NAME=" + PACKAGE_NAME + ", ITEMLIST_NO=" + ITEMLIST_NO
				+ ", PACKAGE_PRICE=" + PACKAGE_PRICE + "]";
	}
	public int getPACKAGEPK() {
		return PACKAGEPK;
	}
	public void setPACKAGEPK(int pACKAGEPK) {
		PACKAGEPK = pACKAGEPK;
	}
	public String getPACKAGE_NAME() {
		return PACKAGE_NAME;
	}
	public void setPACKAGE_NAME(String pACKAGE_NAME) {
		PACKAGE_NAME = pACKAGE_NAME;
	}
	public String getITEMLIST_NO() {
		return ITEMLIST_NO;
	}
	public void setITEMLIST_NO(String iTEMLIST_NO) {
		ITEMLIST_NO = iTEMLIST_NO;
	}
	public int getPACKAGE_PRICE() {
		return PACKAGE_PRICE;
	}
	public void setPACKAGE_PRICE(int pACKAGE_PRICE) {
		PACKAGE_PRICE = pACKAGE_PRICE;
	}
	public ItemPackage(int pACKAGEPK, String pACKAGE_NAME, String iTEMLIST_NO, int pACKAGE_PRICE) {
		super();
		PACKAGEPK = pACKAGEPK;
		PACKAGE_NAME = pACKAGE_NAME;
		ITEMLIST_NO = iTEMLIST_NO;
		PACKAGE_PRICE = pACKAGE_PRICE;
	}
	
}
