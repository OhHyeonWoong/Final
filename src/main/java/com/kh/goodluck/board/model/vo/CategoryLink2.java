package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("categorylink2")
public class CategoryLink2  implements Serializable{

	private static final long serialVersionUID = 4005L;
	
	public CategoryLink2() {
		
	}
	
	private String link2_no;
	private String category_mid_code;
	private String category_small_code;

	public String getLink2_no() {
		return link2_no;
	}
	public void setLink2_no(String link2_no) {
		this.link2_no = link2_no;
	}
	public String getCategory_mid_code() {
		return category_mid_code;
	}
	public void setCategory_mid_code(String category_mid_code) {
		this.category_mid_code = category_mid_code;
	}
	public String getCategory_small_code() {
		return category_small_code;
	}
	public void setCategory_small_code(String category_small_code) {
		this.category_small_code = category_small_code;
	}
	public CategoryLink2(String link2_no, String category_mid_code, String category_small_code) {
		super();
		this.link2_no = link2_no;
		this.category_mid_code = category_mid_code;
		this.category_small_code = category_small_code;
	}
	@Override
	public String toString() {
		return "CategoryLink2 [link2_no=" + link2_no + ", category_mid_code=" + category_mid_code
				+ ", category_small_code=" + category_small_code + "]";
	}
}
