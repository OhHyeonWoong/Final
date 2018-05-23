package com.kh.goodluck.payment.model.vo;

import java.io.Serializable;

public class Payment implements Serializable {
	
	private static final long serialVersionUID = 7011L;
	private String agency_title;
	private String agency_pay;
	private String agency_sale;
	private String member_cash;	
	
	public Payment() {
		
	}

	public Payment(String agency_title, String agency_pay, String agency_sale, String member_cash) {
		super();
		this.agency_title = agency_title;
		this.agency_pay = agency_pay;
		this.agency_sale = agency_sale;
		this.member_cash = member_cash;
	}

	public String getAgency_title() {
		return agency_title;
	}

	public void setAgency_title(String agency_title) {
		this.agency_title = agency_title;
	}

	public String getAgency_pay() {
		return agency_pay;
	}

	public void setAgency_pay(String agency_pay) {
		this.agency_pay = agency_pay;
	}

	public String getAgency_sale() {
		return agency_sale;
	}

	public void setAgency_sale(String agency_sale) {
		this.agency_sale = agency_sale;
	}

	public String getMember_cash() {
		return member_cash;
	}

	public void setMember_cash(String member_cash) {
		this.member_cash = member_cash;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Payment [agency_title=" + agency_title
				+ ", agency_pay=" + agency_pay
				+ ", agency_sale=" + agency_sale
				+ ", member_cash=" + member_cash + "]";
	}
	
}
