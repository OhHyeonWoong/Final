package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

public class RanDomBoxChance implements Serializable{

	private static final long serialVersionUID =49815L;
	public RanDomBoxChance() {
		// TODO Auto-generated constructor stub
	}
	private int RANDOMBOX_PK;
	private int ITEMLIST_NO;
	private Double CHANCE;
	private String itemname;
	private String ITEMFILENAME;
	public RanDomBoxChance(int rANDOMBOX_PK, int iTEMLIST_NO, Double cHANCE, String itemname, String iTEMFILENAME) {
		super();
		RANDOMBOX_PK = rANDOMBOX_PK;
		ITEMLIST_NO = iTEMLIST_NO;
		CHANCE = cHANCE;
		this.itemname = itemname;
		ITEMFILENAME = iTEMFILENAME;
	}
	public int getRANDOMBOX_PK() {
		return RANDOMBOX_PK;
	}
	public void setRANDOMBOX_PK(int rANDOMBOX_PK) {
		RANDOMBOX_PK = rANDOMBOX_PK;
	}
	public int getITEMLIST_NO() {
		return ITEMLIST_NO;
	}
	public void setITEMLIST_NO(int iTEMLIST_NO) {
		ITEMLIST_NO = iTEMLIST_NO;
	}
	public Double getCHANCE() {
		return CHANCE;
	}
	public void setCHANCE(Double cHANCE) {
		CHANCE = cHANCE;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getITEMFILENAME() {
		return ITEMFILENAME;
	}
	public void setITEMFILENAME(String iTEMFILENAME) {
		ITEMFILENAME = iTEMFILENAME;
	}
	


}
