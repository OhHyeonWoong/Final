package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("smallcategory")
public class SmallCategory  implements Serializable{
	
	private static final long serialVersionUID = 4003L;
	
	public SmallCategory() {
		
	}
	
	private String category_small_code;
	private String category_small_name;
	private String category_small_views;

	public String getCategory_small_code() {
		return category_small_code;
	}
	public void setCategory_small_code(String category_small_code) {
		this.category_small_code = category_small_code;
	}
	public String getCategory_small_name() {
		return category_small_name;
	}
	public void setCategory_small_name(String category_small_name) {
		this.category_small_name = category_small_name;
	}
	public String getCategory_small_views() {
		return category_small_views;
	}
	public void setCategory_small_views(String category_small_views) {
		this.category_small_views = category_small_views;
	}
	public SmallCategory(String category_small_code, String category_small_name, String category_small_views) {
		super();
		this.category_small_code = category_small_code;
		this.category_small_name = category_small_name;
		this.category_small_views = category_small_views;
	}
	@Override
	public String toString() {
		return "SmallCategory [category_small_code=" + category_small_code + ", category_small_name="
				+ category_small_name + ", category_small_views=" + category_small_views + "]";
	}
}
