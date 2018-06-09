package com.kh.goodluck.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("loginStatistics")
public class LoginStatistics implements Serializable{

	private static final long serialVersionUID = 6464L;
	
	private Date ls_date;
	private String member_id;
	private int visitCount;
	
	public LoginStatistics() {
		
	}

	public LoginStatistics(Date ls_date, String member_id, int visitCount) {
		super();
		this.ls_date = ls_date;
		this.member_id = member_id;
		this.visitCount = visitCount;
	}

	public Date getLs_date() {
		return ls_date;
	}

	public void setLs_date(Date ls_date) {
		this.ls_date = ls_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public int getVisitCount() {
		return visitCount;
	}

	public void setVisitCount(int visitCount) {
		this.visitCount = visitCount;
	}

	@Override
	public String toString() {
		return "LoginStatistics [ls_date=" + ls_date + ", member_id=" + member_id + ", visitCount=" + visitCount + "]";
	}

}
