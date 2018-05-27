package com.kh.goodluck.qna.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("qnaWrite")
public class QnaWrite implements Serializable{

	private static final long serialVersionUID = 7712L;
	
	private int question_no;
	private String question_title;
	private String question_content;
	private String question_writer;
	//qna랑 다르게 멤버 아이디 추가
	private String member_id;
	/////////////////////////
	private String question_category;
	private Date question_date;
	private String question_answer_state;
	
	public QnaWrite() {
		
	}

	public QnaWrite(int question_no, String question_title, String question_content, String question_writer,
			String member_id, String question_category, Date question_date, String question_answer_state) {
		super();
		this.question_no = question_no;
		this.question_title = question_title;
		this.question_content = question_content;
		this.question_writer = question_writer;
		this.member_id = member_id;
		this.question_category = question_category;
		this.question_date = question_date;
		this.question_answer_state = question_answer_state;
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public String getQuestion_title() {
		return question_title;
	}

	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public String getQuestion_writer() {
		return question_writer;
	}

	public void setQuestion_writer(String question_writer) {
		this.question_writer = question_writer;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getQuestion_category() {
		return question_category;
	}

	public void setQuestion_category(String question_category) {
		this.question_category = question_category;
	}

	public Date getQuestion_date() {
		return question_date;
	}

	public void setQuestion_date(Date question_date) {
		this.question_date = question_date;
	}

	public String getQuestion_answer_state() {
		return question_answer_state;
	}

	public void setQuestion_answer_state(String question_answer_state) {
		this.question_answer_state = question_answer_state;
	}

	@Override
	public String toString() {
		return "QnaWrite [question_no=" + question_no + ", question_title=" + question_title + ", question_content="
				+ question_content + ", question_writer=" + question_writer + ", member_id=" + member_id
				+ ", question_category=" + question_category + ", question_date=" + question_date
				+ ", question_answer_state=" + question_answer_state + "]";
	}
	
}
