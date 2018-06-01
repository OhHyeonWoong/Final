package com.kh.goodluck.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberList")
public class MemberList implements Serializable{

	private static final long serialVersionUID = 1112L;

	private String member_id;
	private String member_name;
	private String member_email;
	private int member_regident_number;
	
	public MemberList() {
	}

	public MemberList(String member_id, String member_name, String member_email, int member_regident_number) {
		super();
		this.member_id = member_id;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_regident_number = member_regident_number;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getMember_regident_number() {
		return member_regident_number;
	}

	public void setMember_regident_number(int member_regident_number) {
		this.member_regident_number = member_regident_number;
	}

	@Override
	public String toString() {
		return "MemberList [member_id=" + member_id + ", member_name=" + member_name + ", member_email=" + member_email
				+ ", member_regident_number=" + member_regident_number + "]";
	}

	
}
