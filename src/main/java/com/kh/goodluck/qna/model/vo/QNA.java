package com.kh.goodluck.qna.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("qna")
public class QNA implements Serializable{

	private static final long serialVersionUID = 7676L;
	
	private int question_no;
	private String question_title;
	private String question_content;
	private String question_writer;
	private String question_category;
	private Date question_date;
	private String question_answer_state;
	//페이지 처리용 메소드
	private int qnaMaxPage;
	private int qnaStartRow;
	private int qnaEndRow;
	private int qnaCurrentPage;
	private int qnaListCount;
	
	public QNA() {
		
	}

	public QNA(int question_no, String question_title, String question_content, String question_writer,
			String question_category, Date question_date, String question_answer_state, int qnaMaxPage, int qnaStartRow,
			int qnaEndRow, int qnaCurrentPage, int qnaListCount) {
		super();
		this.question_no = question_no;
		this.question_title = question_title;
		this.question_content = question_content;
		this.question_writer = question_writer;
		this.question_category = question_category;
		this.question_date = question_date;
		this.question_answer_state = question_answer_state;
		this.qnaMaxPage = qnaMaxPage;
		this.qnaStartRow = qnaStartRow;
		this.qnaEndRow = qnaEndRow;
		this.qnaCurrentPage = qnaCurrentPage;
		this.qnaListCount = qnaListCount;
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

	public int getQnaMaxPage() {
		return qnaMaxPage;
	}

	public void setQnaMaxPage(int qnaMaxPage) {
		this.qnaMaxPage = qnaMaxPage;
	}

	public int getQnaStartRow() {
		return qnaStartRow;
	}

	public void setQnaStartRow(int qnaStartRow) {
		this.qnaStartRow = qnaStartRow;
	}

	public int getQnaEndRow() {
		return qnaEndRow;
	}

	public void setQnaEndRow(int qnaEndRow) {
		this.qnaEndRow = qnaEndRow;
	}

	public int getQnaCurrentPage() {
		return qnaCurrentPage;
	}

	public void setQnaCurrentPage(int qnaCurrentPage) {
		this.qnaCurrentPage = qnaCurrentPage;
	}

	public int getQnaListCount() {
		return qnaListCount;
	}

	public void setQnaListCount(int qnaListCount) {
		this.qnaListCount = qnaListCount;
	}

	@Override
	public String toString() {
		return "QNA [question_no=" + question_no + ", question_title=" + question_title + ", question_content="
				+ question_content + ", question_writer=" + question_writer + ", question_category=" + question_category
				+ ", question_date=" + question_date + ", question_answer_state=" + question_answer_state
				+ ", qnaMaxPage=" + qnaMaxPage + ", qnaStartRow=" + qnaStartRow + ", qnaEndRow=" + qnaEndRow
				+ ", qnaCurrentPage=" + qnaCurrentPage + ", qnaListCount=" + qnaListCount + "]";
	}

}
