package com.kh.goodluck.faq.model.vo;

public class FAQ implements java.io.Serializable{
	
	private static final long serialVersionUID = 123L;
	
	private int faq_no; //게시글 고유번호
	private String faq_category; //게시글 카테고리
	private String faq_title; //게시글 제목
	private String faq_content; //게시글 내용
	
	public FAQ() { }

	public FAQ(int faq_no, String faq_category, String faq_title, String faq_content) {
		super();
		this.faq_no = faq_no;
		this.faq_category = faq_category;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
	}

	public int getFaq_no() {
		return faq_no;
	}

	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}

	public String getFaq_category() {
		return faq_category;
	}

	public void setFaq_category(String faq_category) {
		this.faq_category = faq_category;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "FAQ [faq_no=" + faq_no + ", faq_category=" + faq_category + ", faq_title=" + faq_title
				+ ", faq_content=" + faq_content + "]";
	}

}
