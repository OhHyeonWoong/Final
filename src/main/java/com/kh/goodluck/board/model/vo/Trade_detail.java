package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Trade_detail  implements Serializable{
	
	private static final long serialVersionUID = 8843L;
  
	private int TRADE_NO;
	private int AGENCY_NO;
	private String TRADE_APPLICANT;
	private Date TRADE_DATE;
	private String TRADE_RESERVATION;
	private Date TRADE_RESERVATION_DATE;
	public Trade_detail() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Trade_detail [TRADE_NO=" + TRADE_NO + ", AGENCY_NO=" + AGENCY_NO + ", TRADE_APPLICANT="
				+ TRADE_APPLICANT + ", TRADE_DATE=" + TRADE_DATE + ", TRADE_RESERVATION=" + TRADE_RESERVATION
				+ ", TRADE_RESERVATION_DATE=" + TRADE_RESERVATION_DATE + "]";
	}
	public int getTRADE_NO() {
		return TRADE_NO;
	}
	public void setTRADE_NO(int tRADE_NO) {
		TRADE_NO = tRADE_NO;
	}
	public int getAGENCY_NO() {
		return AGENCY_NO;
	}
	public void setAGENCY_NO(int aGENCY_NO) {
		AGENCY_NO = aGENCY_NO;
	}
	public String getTRADE_APPLICANT() {
		return TRADE_APPLICANT;
	}
	public void setTRADE_APPLICANT(String tRADE_APPLICANT) {
		TRADE_APPLICANT = tRADE_APPLICANT;
	}
	public Date getTRADE_DATE() {
		return TRADE_DATE;
	}
	public void setTRADE_DATE(Date tRADE_DATE) {
		TRADE_DATE = tRADE_DATE;
	}
	public String getTRADE_RESERVATION() {
		return TRADE_RESERVATION;
	}
	public void setTRADE_RESERVATION(String tRADE_RESERVATION) {
		TRADE_RESERVATION = tRADE_RESERVATION;
	}
	public Date getTRADE_RESERVATION_DATE() {
		return TRADE_RESERVATION_DATE;
	}
	public void setTRADE_RESERVATION_DATE(Date tRADE_RESERVATION_DATE) {
		TRADE_RESERVATION_DATE = tRADE_RESERVATION_DATE;
	}
	public Trade_detail(int tRADE_NO, int aGENCY_NO, String tRADE_APPLICANT, Date tRADE_DATE, String tRADE_RESERVATION,
			Date tRADE_RESERVATION_DATE) {
		super();
		TRADE_NO = tRADE_NO;
		AGENCY_NO = aGENCY_NO;
		TRADE_APPLICANT = tRADE_APPLICANT;
		TRADE_DATE = tRADE_DATE;
		TRADE_RESERVATION = tRADE_RESERVATION;
		TRADE_RESERVATION_DATE = tRADE_RESERVATION_DATE;
	}
	
	
}
