package com.kh.goodluck.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("payLog")
public class Paylog implements Serializable{

	private static final long serialVersionUID = 6241L;
	
	private int paylog_no;
	private String paylog_from;
	private String paylog_to;
	private int paylog_money;
	private Date paylog_when;
	
	public Paylog() {
		
	}

	public Paylog(int paylog_no, String paylog_from, String paylog_to, int paylog_money, Date paylog_when) {
		super();
		this.paylog_no = paylog_no;
		this.paylog_from = paylog_from;
		this.paylog_to = paylog_to;
		this.paylog_money = paylog_money;
		this.paylog_when = paylog_when;
	}

	public int getPaylog_no() {
		return paylog_no;
	}

	public void setPaylog_no(int paylog_no) {
		this.paylog_no = paylog_no;
	}

	public String getPaylog_from() {
		return paylog_from;
	}

	public void setPaylog_from(String paylog_from) {
		this.paylog_from = paylog_from;
	}

	public String getPaylog_to() {
		return paylog_to;
	}

	public void setPaylog_to(String paylog_to) {
		this.paylog_to = paylog_to;
	}

	public int getPaylog_money() {
		return paylog_money;
	}

	public void setPaylog_money(int paylog_money) {
		this.paylog_money = paylog_money;
	}

	public Date getPaylog_when() {
		return paylog_when;
	}

	public void setPaylog_when(Date paylog_when) {
		this.paylog_when = paylog_when;
	}

	@Override
	public String toString() {
		return "Paylog [paylog_no=" + paylog_no + ", paylog_from=" + paylog_from + ", paylog_to=" + paylog_to
				+ ", paylog_money=" + paylog_money + ", paylog_when=" + paylog_when + "]";
	}
	
}
