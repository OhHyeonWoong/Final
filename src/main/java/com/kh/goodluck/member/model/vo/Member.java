package com.kh.goodluck.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("member")
public class Member implements Serializable{

	private static final long serialVersionUID = 1111L;
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_address;
	private String member_phone;
	private int member_regident_number;
	private int member_write_count;
	private Date member_enroll_date;
	private Date member_lastlogin;
	private Date member_lastpassword;
	private int member_yellowcard;
	private int member_status;
	
	public Member() {
		
	}

	public Member(String member_id, String member_pw, String member_name, String member_email, String member_address,
			String member_phone, int member_regident_number, int member_write_count, Date member_enroll_date,
			Date member_lastlogin, Date member_lastpassword, int member_yellowcard, int member_status) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_phone = member_phone;
		this.member_regident_number = member_regident_number;
		this.member_write_count = member_write_count;
		this.member_enroll_date = member_enroll_date;
		this.member_lastlogin = member_lastlogin;
		this.member_lastpassword = member_lastpassword;
		this.member_yellowcard = member_yellowcard;
		this.member_status = member_status;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
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

	public String getMember_address() {
		return member_address;
	}

	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public int getMember_regident_number() {
		return member_regident_number;
	}

	public void setMember_regident_number(int member_regident_number) {
		this.member_regident_number = member_regident_number;
	}

	public int getMember_write_count() {
		return member_write_count;
	}

	public void setMember_write_count(int member_write_count) {
		this.member_write_count = member_write_count;
	}

	public Date getMember_enroll_date() {
		return member_enroll_date;
	}

	public void setMember_enroll_date(Date member_enroll_date) {
		this.member_enroll_date = member_enroll_date;
	}

	public Date getMember_lastlogin() {
		return member_lastlogin;
	}

	public void setMember_lastlogin(Date member_lastlogin) {
		this.member_lastlogin = member_lastlogin;
	}

	public Date getMember_lastpassword() {
		return member_lastpassword;
	}

	public void setMember_lastpassword(Date member_lastpassword) {
		this.member_lastpassword = member_lastpassword;
	}

	public int getMember_yellowcard() {
		return member_yellowcard;
	}

	public void setMember_yellowcard(int member_yellowcard) {
		this.member_yellowcard = member_yellowcard;
	}

	public int getMember_status() {
		return member_status;
	}

	public void setMember_status(int member_status) {
		this.member_status = member_status;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_email=" + member_email + ", member_address=" + member_address + ", member_phone="
				+ member_phone + ", member_regident_number=" + member_regident_number + ", member_write_count="
				+ member_write_count + ", member_enroll_date=" + member_enroll_date + ", member_lastlogin="
				+ member_lastlogin + ", member_lastpassword=" + member_lastpassword + ", member_yellowcard="
				+ member_yellowcard + ", member_status=" + member_status + "]";
	}
	
}
