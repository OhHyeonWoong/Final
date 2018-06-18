package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("myPageBoardHistory")
public class MyPageBoardHistory implements Serializable{

	private static final long serialVersionUID = 9124L;
	
	private int agencylog_finalstatus;
	private int agency_type;
	private String agency_title;
	private String trade_applicant;
	private Date agencylog_date;
	private int agency_pay;
	private int agency_paytype;
	
	public MyPageBoardHistory() {
		
	}

	public MyPageBoardHistory(int agencylog_finalstatus, int agency_type, String agency_title, String trade_applicant,
			Date agencylog_date, int agency_pay, int agency_paytype) {
		super();
		this.agencylog_finalstatus = agencylog_finalstatus;
		this.agency_type = agency_type;
		this.agency_title = agency_title;
		this.trade_applicant = trade_applicant;
		this.agencylog_date = agencylog_date;
		this.agency_pay = agency_pay;
		this.agency_paytype = agency_paytype;
	}

	public int getAgencylog_finalstatus() {
		return agencylog_finalstatus;
	}

	public void setAgencylog_finalstatus(int agencylog_finalstatus) {
		this.agencylog_finalstatus = agencylog_finalstatus;
	}

	public int getAgency_type() {
		return agency_type;
	}

	public void setAgency_type(int agency_type) {
		this.agency_type = agency_type;
	}

	public String getAgency_title() {
		return agency_title;
	}

	public void setAgency_title(String agency_title) {
		this.agency_title = agency_title;
	}

	public String getTrade_applicant() {
		return trade_applicant;
	}

	public void setTrade_applicant(String trade_applicant) {
		this.trade_applicant = trade_applicant;
	}

	public Date getAgencylog_date() {
		return agencylog_date;
	}

	public void setAgencylog_date(Date agencylog_date) {
		this.agencylog_date = agencylog_date;
	}

	public int getAgency_pay() {
		return agency_pay;
	}

	public void setAgency_pay(int agency_pay) {
		this.agency_pay = agency_pay;
	}

	public int getAgency_paytype() {
		return agency_paytype;
	}

	public void setAgency_paytype(int agency_paytype) {
		this.agency_paytype = agency_paytype;
	}

	@Override
	public String toString() {
		return "MyPageBoardHistory [agencylog_finalstatus=" + agencylog_finalstatus + ", agency_type=" + agency_type
				+ ", agency_title=" + agency_title + ", trade_applicant=" + trade_applicant + ", agencylog_date="
				+ agencylog_date + ", agency_pay=" + agency_pay + ", agency_paytype=" + agency_paytype + "]";
	}
	
}
