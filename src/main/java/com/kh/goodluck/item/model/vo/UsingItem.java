package com.kh.goodluck.item.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class UsingItem implements Serializable{

	private static final long serialVersionUID =78934L;
public UsingItem() {}
	
	
	private String ITEMFILENAME;
	private String ITEMNAME;
	private Date END_DATE;
	public String getITEMFILENAME() {
		return ITEMFILENAME;
	}
	public void setITEMFILENAME(String iTEMFILENAME) {
		ITEMFILENAME = iTEMFILENAME;
	}
	public String getITEMNAME() {
		return ITEMNAME;
	}
	public void setITEMNAME(String iTEMNAME) {
		ITEMNAME = iTEMNAME;
	}
	public Date getEND_DATE() {
		return END_DATE;
	}
	public void setEND_DATE(Date eND_DATE) {
		END_DATE = eND_DATE;
	}
	@Override
	public String toString() {
		return "UsingItem [ITEMFILENAME=" + ITEMFILENAME + ", ITEMNAME=" + ITEMNAME + ", END_DATE=" + END_DATE + "]";
	}
	public UsingItem(String iTEMFILENAME, String iTEMNAME, Date eND_DATE) {
		super();
		ITEMFILENAME = iTEMFILENAME;
		ITEMNAME = iTEMNAME;
		END_DATE = eND_DATE;
	}
	
	
}
