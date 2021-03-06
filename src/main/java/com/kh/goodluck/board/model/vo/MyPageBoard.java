package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("myPageBoard")
public class MyPageBoard implements Serializable{

	private static final long serialVersionUID = 8263L;
	
	private int agency_no;
	private String agency_writer;
	private String agency_title;
	private int link2_no;
	private int agency_type;
	private String agency_loc;
	private Date agency_startdate;
	private Date agency_enddate;
	private Date agency_enrolldate;
	private int agency_paytype;
	private int agency_pay;
	private int agency_status;
	private String agency_content;
	private int agency_views;
	private String agency_keyword;
	private String agency_option;
	private String category_small_name;
	
	public MyPageBoard() {
		
	}

	public MyPageBoard(int agency_no, String agency_writer, String agency_title, int link2_no, int agency_type,
			String agency_loc, Date agency_startdate, Date agency_enddate, Date agency_enrolldate, int agency_paytype,
			int agency_pay, int agency_status, String agency_content, int agency_views, String agency_keyword,
			String agency_option, String category_small_name) {
		super();
		this.agency_no = agency_no;
		this.agency_writer = agency_writer;
		this.agency_title = agency_title;
		this.link2_no = link2_no;
		this.agency_type = agency_type;
		this.agency_loc = agency_loc;
		this.agency_startdate = agency_startdate;
		this.agency_enddate = agency_enddate;
		this.agency_enrolldate = agency_enrolldate;
		this.agency_paytype = agency_paytype;
		this.agency_pay = agency_pay;
		this.agency_status = agency_status;
		this.agency_content = agency_content;
		this.agency_views = agency_views;
		this.agency_keyword = agency_keyword;
		this.agency_option = agency_option;
		this.category_small_name = category_small_name;
	}

	public int getAgency_no() {
		return agency_no;
	}

	public void setAgency_no(int agency_no) {
		this.agency_no = agency_no;
	}

	public String getAgency_writer() {
		return agency_writer;
	}

	public void setAgency_writer(String agency_writer) {
		this.agency_writer = agency_writer;
	}

	public String getAgency_title() {
		return agency_title;
	}

	public void setAgency_title(String agency_title) {
		this.agency_title = agency_title;
	}

	public int getLink2_no() {
		return link2_no;
	}

	public void setLink2_no(int link2_no) {
		this.link2_no = link2_no;
	}

	public int getAgency_type() {
		return agency_type;
	}

	public void setAgency_type(int agency_type) {
		this.agency_type = agency_type;
	}

	public String getAgency_loc() {
		return agency_loc;
	}

	public void setAgency_loc(String agency_loc) {
		this.agency_loc = agency_loc;
	}

	public Date getAgency_startdate() {
		return agency_startdate;
	}

	public void setAgency_startdate(Date agency_startdate) {
		this.agency_startdate = agency_startdate;
	}

	public Date getAgency_enddate() {
		return agency_enddate;
	}

	public void setAgency_enddate(Date agency_enddate) {
		this.agency_enddate = agency_enddate;
	}

	public Date getAgency_enrolldate() {
		return agency_enrolldate;
	}

	public void setAgency_enrolldate(Date agency_enrolldate) {
		this.agency_enrolldate = agency_enrolldate;
	}

	public int getAgency_paytype() {
		return agency_paytype;
	}

	public void setAgency_paytype(int agency_paytype) {
		this.agency_paytype = agency_paytype;
	}

	public int getAgency_pay() {
		return agency_pay;
	}

	public void setAgency_pay(int agency_pay) {
		this.agency_pay = agency_pay;
	}

	public int getAgency_status() {
		return agency_status;
	}

	public void setAgency_status(int agency_status) {
		this.agency_status = agency_status;
	}

	public String getAgency_content() {
		return agency_content;
	}

	public void setAgency_content(String agency_content) {
		this.agency_content = agency_content;
	}

	public int getAgency_views() {
		return agency_views;
	}

	public void setAgency_views(int agency_views) {
		this.agency_views = agency_views;
	}

	public String getAgency_keyword() {
		return agency_keyword;
	}

	public void setAgency_keyword(String agency_keyword) {
		this.agency_keyword = agency_keyword;
	}

	public String getAgency_option() {
		return agency_option;
	}

	public void setAgency_option(String agency_option) {
		this.agency_option = agency_option;
	}

	public String getCategory_small_name() {
		return category_small_name;
	}

	public void setCategory_small_name(String category_small_name) {
		this.category_small_name = category_small_name;
	}

	@Override
	public String toString() {
		return "MyPageBoard [agency_no=" + agency_no + ", agency_writer=" + agency_writer + ", agency_title="
				+ agency_title + ", link2_no=" + link2_no + ", agency_type=" + agency_type + ", agency_loc="
				+ agency_loc + ", agency_startdate=" + agency_startdate + ", agency_enddate=" + agency_enddate
				+ ", agency_enrolldate=" + agency_enrolldate + ", agency_paytype=" + agency_paytype + ", agency_pay="
				+ agency_pay + ", agency_status=" + agency_status + ", agency_content=" + agency_content
				+ ", agency_views=" + agency_views + ", agency_keyword=" + agency_keyword + ", agency_option="
				+ agency_option + ", category_small_name=" + category_small_name + "]";
	}
	
}
