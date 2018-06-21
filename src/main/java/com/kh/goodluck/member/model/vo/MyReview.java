package com.kh.goodluck.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("myReview")
public class MyReview implements Serializable{

	private static final long serialVersionUID = 3981L;
	
	private String agency_title;
	private String review_content;
	private Date review_date;
	
	public MyReview() {
		
	}

	public MyReview(String agency_title, String review_content, Date review_date) {
		super();
		this.agency_title = agency_title;
		this.review_content = review_content;
		this.review_date = review_date;
	}

	public String getAgency_title() {
		return agency_title;
	}

	public void setAgency_title(String agency_title) {
		this.agency_title = agency_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	@Override
	public String toString() {
		return "MyReview [agency_title=" + agency_title + ", review_content=" + review_content + ", review_date="
				+ review_date + "]";
	}
	
	
}
