package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("bigcategory")
public class BigCategory implements Serializable{
	
	private static final long serialVersionUID = 4001L;
	
	public BigCategory() {
		
	}
	
	private String category_big_code;
	private String category_big_name;
	private String category_big_views;

	public String getCategory_big_code() {
		return category_big_code;
	}
	public void setCategory_big_code(String category_big_code) {
		this.category_big_code = category_big_code;
	}
	public String getCategory_big_name() {
		return category_big_name;
	}
	public void setCategory_big_name(String category_big_name) {
		this.category_big_name = category_big_name;
	}
	public String getCategory_big_views() {
		return category_big_views;
	}
	public void setCategory_big_views(String category_big_views) {
		this.category_big_views = category_big_views;
	}
	public BigCategory(String category_big_code, String category_big_name, String category_big_views) {
		super();
		this.category_big_code = category_big_code;
		this.category_big_name = category_big_name;
		this.category_big_views = category_big_views;
	}
	@Override
	public String toString() {
		return "BigCategory [category_big_code=" + category_big_code + ", category_big_name=" + category_big_name
				+ ", category_big_views=" + category_big_views + "]";
	}	
}
