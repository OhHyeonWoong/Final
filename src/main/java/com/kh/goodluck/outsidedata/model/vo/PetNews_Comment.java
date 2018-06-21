package com.kh.goodluck.outsidedata.model.vo;

import java.sql.Date;

public class PetNews_Comment implements java.io.Serializable {
	  
	private static final long SerialVersionUID = 7920L;
	
	private int pet_comment_no;
	private int pet_comment_status;
	private String pet_comment_contents;
	private String pet_comment_writer;
	private int pet_comment_newsno;
	private Date pet_comment_writedate;
	
	public PetNews_Comment() {
		// TODO Auto-generated constructor stub
	}

	
	
	public PetNews_Comment(int pet_comment_no, int pet_comment_status, int pet_comment_newsno) {
		super();
		this.pet_comment_no = pet_comment_no;
		this.pet_comment_status = pet_comment_status;
		this.pet_comment_newsno = pet_comment_newsno;
	}



	public PetNews_Comment(int pet_comment_status, String pet_comment_contents, String pet_comment_writer,
			int pet_comment_newsno) {
		super();
		this.pet_comment_status = pet_comment_status;
		this.pet_comment_contents = pet_comment_contents;
		this.pet_comment_writer = pet_comment_writer;
		this.pet_comment_newsno = pet_comment_newsno;
	}



	public PetNews_Comment(int pet_comment_no, int pet_comment_status, String pet_comment_contents,
			String pet_comment_writer, int pet_comment_newsno, Date pet_comment_writedate) {
		super();
		this.pet_comment_no = pet_comment_no;
		this.pet_comment_status = pet_comment_status;
		this.pet_comment_contents = pet_comment_contents;
		this.pet_comment_writer = pet_comment_writer;
		this.pet_comment_newsno = pet_comment_newsno;
		this.pet_comment_writedate = pet_comment_writedate;
	}

	
	


	public int getPet_comment_no() {
		return pet_comment_no;
	}



	public void setPet_comment_no(int pet_comment_no) {
		this.pet_comment_no = pet_comment_no;
	}



	public int getPet_comment_status() {
		return pet_comment_status;
	}



	public void setPet_comment_status(int pet_comment_status) {
		this.pet_comment_status = pet_comment_status;
	}



	public String getPet_comment_contents() {
		return pet_comment_contents;
	}



	public void setPet_comment_contents(String pet_comment_contents) {
		this.pet_comment_contents = pet_comment_contents;
	}



	public String getPet_comment_writer() {
		return pet_comment_writer;
	}



	public void setPet_comment_writer(String pet_comment_writer) {
		this.pet_comment_writer = pet_comment_writer;
	}



	public int getpet_comment_newsno() {
		return pet_comment_newsno;
	}



	public void setpet_comment_newsno(int pet_comment_newsno) {
		this.pet_comment_newsno = pet_comment_newsno;
	}



	public Date getPet_comment_writedate() {
		return pet_comment_writedate;
	}



	public void setPet_comment_writedate(Date pet_comment_writedate) {
		this.pet_comment_writedate = pet_comment_writedate;
	}



	public static long getSerialversionuid() {
		return SerialVersionUID;
	}



	@Override
	public String toString() {
		return "PetNews_Comment [pet_comment_no=" + pet_comment_no + ", pet_comment_status=" + pet_comment_status
				+ ", pet_comment_contents=" + pet_comment_contents + ", pet_comment_writer=" + pet_comment_writer
				+ ", pet_comment_newsno=" + pet_comment_newsno + ", pet_comment_writedate="
				+ pet_comment_writedate + "]";
	}
	
	


}
