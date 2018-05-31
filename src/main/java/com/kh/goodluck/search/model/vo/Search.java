package com.kh.goodluck.search.model.vo;

import java.sql.Date;

public class Search {
	
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
	
	public Search() {
		
	}

	public Search(int agency_no, String agency_writer, String agency_title, int link2_no, int agency_type,
			String agency_loc, Date agency_startdate, Date agency_enddate, Date agency_enrolldate, int agency_paytype,
			int agency_pay, int agency_status, String agency_content, int agency_views, String agency_keyword,
			String agency_option) {
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
	}
	
	

}
