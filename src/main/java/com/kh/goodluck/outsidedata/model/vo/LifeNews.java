package com.kh.goodluck.outsidedata.model.vo;

import java.sql.Date;

public class LifeNews implements java.io.Serializable{
	
	private static final long seialVersionUID = 5674L;
	private int osp_news_datano; //PK고유번호	
	private String osp_news_data; //관리자가 알아볼 수 있는 데이터설명
	private String osp_news_datatitle; //게시글 제목
	private String osp_news_content1; //게시글 내용1
	private String osp_news_content2; //게시글 내용2
	private String osp_news_content3; //게시글 내용3
	private String osp_news_content4; //게시글 내용4  
	private String osp_news_pic1; //게시글 관련 사진경로1
	private String osp_news_pic2; //게시글 관련 사진경로2
	private String osp_news_pic3; //게시글 관련 사진경로3
	private String osp_news_pic4; //게시글 관련 사진경로4
	private Date osp_news_date;  //게시글 등록일
	private String osp_news_origin; //게시글의 자료의 출처	
	
	public LifeNews() {
		// TODO Auto-generated constructor stub
	}

	public LifeNews(String osp_news_datatitle) {
		super();
		this.osp_news_datatitle = osp_news_datatitle;
	}

	public LifeNews(int osp_news_datano, String osp_news_data, String osp_news_datatitle, String osp_news_content1,
			String osp_news_content2, String osp_news_content3, String osp_news_content4, String osp_news_pic1,
			String osp_news_pic2, String osp_news_pic3, String osp_news_pic4, Date osp_news_date,
			String osp_news_origin) {
		super();
		this.osp_news_datano = osp_news_datano;
		this.osp_news_data = osp_news_data;
		this.osp_news_datatitle = osp_news_datatitle;
		this.osp_news_content1 = osp_news_content1;
		this.osp_news_content2 = osp_news_content2;
		this.osp_news_content3 = osp_news_content3;
		this.osp_news_content4 = osp_news_content4;
		this.osp_news_pic1 = osp_news_pic1;
		this.osp_news_pic2 = osp_news_pic2;
		this.osp_news_pic3 = osp_news_pic3;
		this.osp_news_pic4 = osp_news_pic4;
		this.osp_news_date = osp_news_date;
		this.osp_news_origin = osp_news_origin;
	}

	public int getOsp_news_datano() {
		return osp_news_datano;
	}

	public void setOsp_news_datano(int osp_news_datano) {
		this.osp_news_datano = osp_news_datano;
	}

	public String getOsp_news_data() {
		return osp_news_data;
	}

	public void setOsp_news_data(String osp_news_data) {
		this.osp_news_data = osp_news_data;
	}

	public String getOsp_news_datatitle() {
		return osp_news_datatitle;
	}

	public void setOsp_news_datatitle(String osp_news_datatitle) {
		this.osp_news_datatitle = osp_news_datatitle;
	}

	public String getOsp_news_content1() {
		return osp_news_content1;
	}

	public void setOsp_news_content1(String osp_news_content1) {
		this.osp_news_content1 = osp_news_content1;
	}

	public String getOsp_news_content2() {
		return osp_news_content2;
	}

	public void setOsp_news_content2(String osp_news_content2) {
		this.osp_news_content2 = osp_news_content2;
	}

	public String getOsp_news_content3() {
		return osp_news_content3;
	}

	public void setOsp_news_content3(String osp_news_content3) {
		this.osp_news_content3 = osp_news_content3;
	}

	public String getOsp_news_content4() {
		return osp_news_content4;
	}

	public void setOsp_news_content4(String osp_news_content4) {
		this.osp_news_content4 = osp_news_content4;
	}

	public String getOsp_news_pic1() {
		return osp_news_pic1;
	}

	public void setOsp_news_pic1(String osp_news_pic1) {
		this.osp_news_pic1 = osp_news_pic1;
	}

	public String getOsp_news_pic2() {
		return osp_news_pic2;
	}

	public void setOsp_news_pic2(String osp_news_pic2) {
		this.osp_news_pic2 = osp_news_pic2;
	}

	public String getOsp_news_pic3() {
		return osp_news_pic3;
	}

	public void setOsp_news_pic3(String osp_news_pic3) {
		this.osp_news_pic3 = osp_news_pic3;
	}

	public String getOsp_news_pic4() {
		return osp_news_pic4;
	}

	public void setOsp_news_pic4(String osp_news_pic4) {
		this.osp_news_pic4 = osp_news_pic4;
	}

	public Date getOsp_news_date() {
		return osp_news_date;
	}

	public void setOsp_news_date(Date osp_news_date) {
		this.osp_news_date = osp_news_date;
	}

	public String getOsp_news_origin() {
		return osp_news_origin;
	}

	public void setOsp_news_origin(String osp_news_origin) {
		this.osp_news_origin = osp_news_origin;
	}

	public static long getSeialversionuid() {
		return seialVersionUID;
	}

	@Override
	public String toString() {
		return "LifeNews [osp_news_datano=" + osp_news_datano + ", osp_news_data=" + osp_news_data
				+ ", osp_news_datatitle=" + osp_news_datatitle + ", osp_news_content1=" + osp_news_content1
				+ ", osp_news_content2=" + osp_news_content2 + ", osp_news_content3=" + osp_news_content3
				+ ", osp_news_content4=" + osp_news_content4 + ", osp_news_pic1=" + osp_news_pic1 + ", osp_news_pic2="
				+ osp_news_pic2 + ", osp_news_pic3=" + osp_news_pic3 + ", osp_news_pic4=" + osp_news_pic4
				+ ", osp_news_date=" + osp_news_date + ", osp_news_origin=" + osp_news_origin + "]";
	}	
}
