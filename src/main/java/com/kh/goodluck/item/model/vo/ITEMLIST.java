package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("item")
public class ITEMLIST implements  Serializable{

	private static final long serialVersionUID = 235231L;
	
public ITEMLIST() {
	// TODO Auto-generated constructor stub
}
private int ITEMLIST_NO;
private String ITEMNAME;
private int ITEMPRICE;
private int ITEMPERIOD;
private int ITEMTYPE;
private String ITEMFILENAME;
private int ITEMSELLCOUNT;

@Override
public String toString() {
	return "Item [ITEMLIST_NO=" + ITEMLIST_NO + ", ITEMNAME=" + ITEMNAME + ", ITEMPRICE=" + ITEMPRICE + ", ITEMPERIOD="
			+ ITEMPERIOD + ", ITEMTYPE=" + ITEMTYPE + ", ITEMFILENAME=" + ITEMFILENAME + ", ITEMSELLCOUNT="
			+ ITEMSELLCOUNT + "]";
}

public int getITEMLIST_NO() {
	return ITEMLIST_NO;
}

public void setITEMLIST_NO(int iTEMLIST_NO) {
	ITEMLIST_NO = iTEMLIST_NO;
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

public int getITEMSELLCOUNT() {
	return ITEMSELLCOUNT;
}

public void setITEMSELLCOUNT(int iTEMSELLCOUNT) {
	ITEMSELLCOUNT = iTEMSELLCOUNT;
}

public ITEMLIST(int iTEMLIST_NO, String iTEMNAME, int iTEMPRICE, int iTEMPERIOD, int iTEMTYPE, String iTEMFILENAME,
		int iTEMSELLCOUNT) {
	super();
	ITEMLIST_NO = iTEMLIST_NO;
	ITEMNAME = iTEMNAME;
	ITEMPRICE = iTEMPRICE;
	ITEMPERIOD = iTEMPERIOD;
	ITEMTYPE = iTEMTYPE;
	ITEMFILENAME = iTEMFILENAME;
	ITEMSELLCOUNT = iTEMSELLCOUNT;
}


}
