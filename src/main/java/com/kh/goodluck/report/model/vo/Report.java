package com.kh.goodluck.report.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("report")
public class Report implements Serializable{

	private static final long serialVersionUID = 1423L;
	
	private int report_no;
	private String report_title;
	private String report_content;
	private String report_writer;
	private int report_category;
	private Date report_date;
	private String report_rename_filename;
	
	public Report() {
		
	}

	public Report(int report_no, String report_title, String report_content, String report_writer, int report_category,
			Date report_date, String report_rename_filename) {
		super();
		this.report_no = report_no;
		this.report_title = report_title;
		this.report_content = report_content;
		this.report_writer = report_writer;
		this.report_category = report_category;
		this.report_date = report_date;
		this.report_rename_filename = report_rename_filename;
	}

	public int getReport_no() {
		return report_no;
	}

	public void setReport_no(int report_no) {
		this.report_no = report_no;
	}

	public String getReport_title() {
		return report_title;
	}

	public void setReport_title(String report_title) {
		this.report_title = report_title;
	}

	public String getReport_content() {
		return report_content;
	}

	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}

	public String getReport_writer() {
		return report_writer;
	}

	public void setReport_writer(String report_writer) {
		this.report_writer = report_writer;
	}

	public int getReport_category() {
		return report_category;
	}

	public void setReport_category(int report_category) {
		this.report_category = report_category;
	}

	public Date getReport_date() {
		return report_date;
	}

	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}

	public String getReport_rename_filename() {
		return report_rename_filename;
	}

	public void setReport_rename_filename(String report_rename_filename) {
		this.report_rename_filename = report_rename_filename;
	}

	@Override
	public String toString() {
		return "Report [report_no=" + report_no + ", report_title=" + report_title + ", report_content="
				+ report_content + ", report_writer=" + report_writer + ", report_category=" + report_category
				+ ", report_date=" + report_date + ", report_rename_filename=" + report_rename_filename + "]";
	}
	
}
