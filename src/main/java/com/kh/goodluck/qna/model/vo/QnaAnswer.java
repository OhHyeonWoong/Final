package com.kh.goodluck.qna.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("qnaAnswer")
public class QnaAnswer implements Serializable{

	private static final long serialVersionUID = 7373L;
	
	private int answer_no;
	private String answer_content;
	private String answer_writer;
	private int question_no;
	private Date answer_date;
	private String answer_good;
	
	public QnaAnswer() {
		
	}

	public QnaAnswer(int answer_no, String answer_content, String answer_writer, int question_no, Date answer_date,
			String answer_good) {
		super();
		this.answer_no = answer_no;
		this.answer_content = answer_content;
		this.answer_writer = answer_writer;
		this.question_no = question_no;
		this.answer_date = answer_date;
		this.answer_good = answer_good;
	}

	public int getAnswer_no() {
		return answer_no;
	}

	public void setAnswer_no(int answer_no) {
		this.answer_no = answer_no;
	}

	public String getAnswer_content() {
		return answer_content;
	}

	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}

	public String getAnswer_writer() {
		return answer_writer;
	}

	public void setAnswer_writer(String answer_writer) {
		this.answer_writer = answer_writer;
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public Date getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

	public String getAnswer_good() {
		return answer_good;
	}

	public void setAnswer_good(String answer_good) {
		this.answer_good = answer_good;
	}

	@Override
	public String toString() {
		return "QnaAnswer [answer_no=" + answer_no + ", answer_content=" + answer_content + ", answer_writer="
				+ answer_writer + ", question_no=" + question_no + ", answer_date=" + answer_date + ", answer_good="
				+ answer_good + "]";
	}
	
}
