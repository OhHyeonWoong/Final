package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("categorylink1")
public class CategoryLink1 implements Serializable{

	private static final long serialVersionUID = 4004L;
	
	public CategoryLink1() {
		
	}
	
	private String link1_no;
	private String category_big_code;
	private String category_mid_code;

	public String getLink1_no() {
		return link1_no;
	}
	public void setLink1_no(String link1_no) {
		this.link1_no = link1_no;
	}
	public String getCategory_big_code() {
		return category_big_code;
	}
	public void setCategory_big_code(String category_big_code) {
		this.category_big_code = category_big_code;
	}
	public String getCategory_mid_code() {
		return category_mid_code;
	}
	public void setCategory_mid_code(String category_mid_code) {
		this.category_mid_code = category_mid_code;
	}
	public CategoryLink1(String link1_no, String category_big_code, String category_mid_code) {
		super();
		this.link1_no = link1_no;
		this.category_big_code = category_big_code;
		this.category_mid_code = category_mid_code;
	}
	@Override
	public String toString() {
		return "CategoryLink1 [link1_no=" + link1_no + ", category_big_code=" + category_big_code
				+ ", category_mid_code=" + category_mid_code + "]";
	}

}
