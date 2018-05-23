package com.kh.goodluck.item.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ItemNotice implements  Serializable{

	private static final long serialVersionUID = 26547L;
	
	public ItemNotice() {}
	
	private int ITEMNOTICE_NO;
	private String ITEMNOTICE_TITLE;
	private String ITEMNOTICE_CONTENTS;
	private String ITEMNOTICE_DATE;

	@Override
	public String toString() {
		return "ItemNotice [ITEMNOTICE_NO=" + ITEMNOTICE_NO + ", ITEMNOTICE_TITLE=" + ITEMNOTICE_TITLE
				+ ", ITEMNOTICE_CONTENTS=" + ITEMNOTICE_CONTENTS + ", ITEMNOTICE_DATE=" + ITEMNOTICE_DATE + "]";
	}

	public int getITEMNOTICE_NO() {
		return ITEMNOTICE_NO;
	}

	public void setITEMNOTICE_NO(int iTEMNOTICE_NO) {
		ITEMNOTICE_NO = iTEMNOTICE_NO;
	}

	public String getITEMNOTICE_TITLE() {
		return ITEMNOTICE_TITLE;
	}

	public void setITEMNOTICE_TITLE(String iTEMNOTICE_TITLE) {
		ITEMNOTICE_TITLE = iTEMNOTICE_TITLE;
	}

	public String getITEMNOTICE_CONTENTS() {
		return ITEMNOTICE_CONTENTS;
	}

	public void setITEMNOTICE_CONTENTS(String iTEMNOTICE_CONTENTS) {
		ITEMNOTICE_CONTENTS = iTEMNOTICE_CONTENTS;
	}

	public String getITEMNOTICE_DATE() {
		return ITEMNOTICE_DATE;
	}

	public void setITEMNOTICE_DATE(String string) {
		ITEMNOTICE_DATE = string;
	}

	public ItemNotice(int iTEMNOTICE_NO, String iTEMNOTICE_TITLE, String iTEMNOTICE_CONTENTS, String iTEMNOTICE_DATE) {
		super();
		ITEMNOTICE_NO = iTEMNOTICE_NO;
		ITEMNOTICE_TITLE = iTEMNOTICE_TITLE;
		ITEMNOTICE_CONTENTS = iTEMNOTICE_CONTENTS;
		ITEMNOTICE_DATE = iTEMNOTICE_DATE;
	}
	 
	
}
