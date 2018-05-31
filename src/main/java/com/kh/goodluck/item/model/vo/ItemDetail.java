package com.kh.goodluck.item.model.vo;

import java.io.Serializable;

public class ItemDetail implements Serializable{

	private static final long serialVersionUID = 2637L;
	public ItemDetail() {
		// TODO Auto-generated constructor stub
	}
	private int ITEMDETAIL_NO;
	private int ITEMTYPE;
	private String DETAIL_1;
	private String DETAIL_2;
	private String DETAIL_3;
	private String DETAIL_4;
	public int getITEMDETAIL_NO() {
		return ITEMDETAIL_NO;
	}
	public void setITEMDETAIL_NO(int iTEMDETAIL_NO) {
		ITEMDETAIL_NO = iTEMDETAIL_NO;
	}
	public int getITEMTYPE() {
		return ITEMTYPE;
	}
	public void setITEMTYPE(int iTEMTYPE) {
		ITEMTYPE = iTEMTYPE;
	}
	public String getDETAIL_1() {
		return DETAIL_1;
	}
	public void setDETAIL_1(String dETAIL_1) {
		DETAIL_1 = dETAIL_1;
	}
	public String getDETAIL_2() {
		return DETAIL_2;
	}
	public void setDETAIL_2(String dETAIL_2) {
		DETAIL_2 = dETAIL_2;
	}
	public String getDETAIL_3() {
		return DETAIL_3;
	}
	public void setDETAIL_3(String dETAIL_3) {
		DETAIL_3 = dETAIL_3;
	}
	public String getDETAIL_4() {
		return DETAIL_4;
	}
	public void setDETAIL_4(String dETAIL_4) {
		DETAIL_4 = dETAIL_4;
	}
	@Override
	public String toString() {
		return "ItemDetail [ITEMDETAIL_NO=" + ITEMDETAIL_NO + ", ITEMTYPE=" + ITEMTYPE + ", DETAIL_1=" + DETAIL_1
				+ ", DETAIL_2=" + DETAIL_2 + ", DETAIL_3=" + DETAIL_3 + ", DETAIL_4=" + DETAIL_4 + "]";
	}
	public ItemDetail(int iTEMDETAIL_NO, int iTEMTYPE, String dETAIL_1, String dETAIL_2, String dETAIL_3,
			String dETAIL_4) {
		super();
		ITEMDETAIL_NO = iTEMDETAIL_NO;
		ITEMTYPE = iTEMTYPE;
		DETAIL_1 = dETAIL_1;
		DETAIL_2 = dETAIL_2;
		DETAIL_3 = dETAIL_3;
		DETAIL_4 = dETAIL_4;
	}
	
	
}
