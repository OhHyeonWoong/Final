package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("midcategory")
public class MidCategory implements Serializable{
	
	private static final long serialVersionUID = 4002L;
	
	public MidCategory() {
		
	}
	
	private String category_mid_code;
	private String category_mid_name;
	private String category_mid_views;

	public String getCategory_mid_code() {
		return category_mid_code;
	}
	public void setCategory_mid_code(String category_mid_code) {
		this.category_mid_code = category_mid_code;
	}
	public String getCategory_mid_name() {
		return category_mid_name;
	}
	public void setCategory_mid_name(String category_mid_name) {
		this.category_mid_name = category_mid_name;
	}
	public String getCategory_mid_views() {
		return category_mid_views;
	}
	public void setCategory_mid_views(String category_mid_views) {
		this.category_mid_views = category_mid_views;
	}
	public MidCategory(String category_mid_code, String category_mid_name, String category_mid_views) {
		super();
		this.category_mid_code = category_mid_code;
		this.category_mid_name = category_mid_name;
		this.category_mid_views = category_mid_views;
	}
	@Override
	public String toString() {
		return "MidCategory [category_mid_code=" + category_mid_code + ", category_mid_name=" + category_mid_name
				+ ", category_mid_views=" + category_mid_views + "]";
	}
}
