package com.kh.goodluck.category.model.vo;

import java.io.Serializable;


import org.springframework.stereotype.*;

@Component("category")
public class Category implements Serializable {	
	private static final long serialVersionUID = 70111L;
	private String category_big_code;
	private String category_big_name;
	private int category_big_views;
	private int category_big_count;
	private String category_mid_code;
	private String category_mid_name;
	private int category_mid_views;
	private int category_mid_count;
	private String category_small_code;
	private String category_small_name;
	private int category_small_views;
	private int category_small_count;
	
	public Category() {
		
	}

	public Category(String category_big_code, String category_big_name, int category_big_views, int category_big_count,
			String category_mid_code, String category_mid_name, int category_mid_views, int category_mid_count,
			String category_small_code, String category_small_name, int category_small_views,
			int category_small_count) {
		super();
		this.category_big_code = category_big_code;
		this.category_big_name = category_big_name;
		this.category_big_views = category_big_views;
		this.category_big_count = category_big_count;
		this.category_mid_code = category_mid_code;
		this.category_mid_name = category_mid_name;
		this.category_mid_views = category_mid_views;
		this.category_mid_count = category_mid_count;
		this.category_small_code = category_small_code;
		this.category_small_name = category_small_name;
		this.category_small_views = category_small_views;
		this.category_small_count = category_small_count;
	}
	
	public Category(String category_big_code, String category_big_name, int category_big_views, int category_big_count) {
		super();
		this.category_big_code = category_big_code;
		this.category_big_name = category_big_name;
		this.category_big_views = category_big_views;
		this.category_big_count = category_big_count;
	}

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

	public int getCategory_big_views() {
		return category_big_views;
	}

	public void setCategory_big_views(int category_big_views) {
		this.category_big_views = category_big_views;
	}

	public int getCategory_big_count() {
		return category_big_count;
	}

	public void setCategory_big_count(int category_big_count) {
		this.category_big_count = category_big_count;
	}

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

	public int getCategory_mid_views() {
		return category_mid_views;
	}

	public void setCategory_mid_views(int category_mid_views) {
		this.category_mid_views = category_mid_views;
	}

	public int getCategory_mid_count() {
		return category_mid_count;
	}

	public void setCategory_mid_count(int category_mid_count) {
		this.category_mid_count = category_mid_count;
	}

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

	public int getCategory_small_views() {
		return category_small_views;
	}

	public void setCategory_small_views(int category_small_views) {
		this.category_small_views = category_small_views;
	}

	public int getCategory_small_count() {
		return category_small_count;
	}

	public void setCategory_small_count(int category_small_count) {
		this.category_small_count = category_small_count;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Category [category_big_code=" + category_big_code 
				+ ", category_big_name=" + category_big_name
				+ ", category_big_views=" + category_big_views 
				+ ", category_big_count=" + category_big_count
				+ ", category_mid_code=" + category_mid_code 
				+ ", category_mid_name=" + category_mid_name
				+ ", category_mid_views=" + category_mid_views 
				+ ", category_mid_count=" + category_mid_count
				+ ", category_small_code=" + category_small_code 
				+ ", category_small_name=" + category_small_name
				+ ", category_small_views=" + category_small_views 
				+ ", category_small_count=" + category_small_count
				+ "]";
	}
}
