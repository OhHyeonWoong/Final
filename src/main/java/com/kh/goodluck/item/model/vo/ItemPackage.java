package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

public class ItemPackage implements  Serializable{

	private static final long serialVersionUID =93674L;

	private  int PACKAGEPK;
	private String PACKAGE_NAME;
	private  String ITEMLIST_NO;
	private  int PACKAGE_PRICE;
	private  int ori_PRICE;
	public ItemPackage() {
		// TODO Auto-generated constructor stub
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
	public int getOri_PRICE() {
		return ori_PRICE;
	}
	public void setOri_PRICE(int ori_PRICE) {
		this.ori_PRICE = ori_PRICE;
	}
	public ItemPackage(int pACKAGEPK, String pACKAGE_NAME, String iTEMLIST_NO, int pACKAGE_PRICE, int ori_PRICE) {
		super();
		PACKAGEPK = pACKAGEPK;
		PACKAGE_NAME = pACKAGE_NAME;
		ITEMLIST_NO = iTEMLIST_NO;
		PACKAGE_PRICE = pACKAGE_PRICE;
		this.ori_PRICE = ori_PRICE;
	}
	
}
