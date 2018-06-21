package com.kh.goodluck.outsidedata.model.vo;

import java.sql.Date;

public class PetNews_Cocoment implements java.io.Serializable {
	private static final long SerVersionUID = 7800L;
	
	private int pet_cocomment_no;
	private String pet_cocomment_contents;
	private String pet_cocomment_writer;
	private int pet_cocomment_newsno;
	private int pet_cocommnet_comno;
	private Date pet_cocomment_writedate;
	  
	public PetNews_Cocoment() {
		// TODO Auto-generated constructor stub
	}
	
	public PetNews_Cocoment(int pet_cocomment_newsno, int pet_cocommnet_comno) {
		super();
		this.pet_cocomment_newsno = pet_cocomment_newsno;
		this.pet_cocommnet_comno = pet_cocommnet_comno;
	}

	public PetNews_Cocoment(int pet_cocomment_no, String pet_cocomment_contents, String pet_cocomment_writer,
			int pet_cocomment_newsno, int pet_cocommnet_comno, Date pet_cocomment_writedate) {
		super();
		this.pet_cocomment_no = pet_cocomment_no;
		this.pet_cocomment_contents = pet_cocomment_contents;
		this.pet_cocomment_writer = pet_cocomment_writer;
		this.pet_cocomment_newsno = pet_cocomment_newsno;
		this.pet_cocommnet_comno = pet_cocommnet_comno;
		this.pet_cocomment_writedate = pet_cocomment_writedate;
	}

	public int getPet_cocomment_no() {
		return pet_cocomment_no;
	}

	public void setPet_cocomment_no(int pet_cocomment_no) {
		this.pet_cocomment_no = pet_cocomment_no;
	}

	public String getPet_cocomment_contents() {
		return pet_cocomment_contents;
	}

	public void setPet_cocomment_contents(String pet_cocomment_contents) {
		this.pet_cocomment_contents = pet_cocomment_contents;
	}

	public String getPet_cocomment_writer() {
		return pet_cocomment_writer;
	}

	public void setPet_cocomment_writer(String pet_cocomment_writer) {
		this.pet_cocomment_writer = pet_cocomment_writer;
	}

	public int getPet_cocomment_newsno() {
		return pet_cocomment_newsno;
	}

	public void setPet_cocomment_newsno(int pet_cocomment_newsno) {
		this.pet_cocomment_newsno = pet_cocomment_newsno;
	}

	public int getPet_cocommnet_comno() {
		return pet_cocommnet_comno;
	}

	public void setPet_cocommnet_comno(int pet_cocommnet_comno) {
		this.pet_cocommnet_comno = pet_cocommnet_comno;
	}

	public Date getPet_cocomment_writedate() {
		return pet_cocomment_writedate;
	}

	public void setPet_cocomment_writedate(Date pet_cocomment_writedate) {
		this.pet_cocomment_writedate = pet_cocomment_writedate;
	}

	public static long getServersionuid() {
		return SerVersionUID;
	}

	@Override
	public String toString() {
		return "PetNews_Cocoment [pet_cocomment_no=" + pet_cocomment_no + ", pet_cocomment_contents="
				+ pet_cocomment_contents + ", pet_cocomment_writer=" + pet_cocomment_writer + ", pet_cocomment_newsno="
				+ pet_cocomment_newsno + ", pet_cocommnet_comno=" + pet_cocommnet_comno + ", pet_cocomment_writedate="
				+ pet_cocomment_writedate + "]";
	}
	
	

}


