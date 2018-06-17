package com.kh.goodluck.board.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component("KaKaoMessage")
public class KaKaoMessage  implements Serializable{

	private static final long serialVersionUID = 20298L;
public KaKaoMessage() {
	// TODO Auto-generated constructor stub
}

private String boardtitle;
private String message;
private String token;
private String retken;
public String getRetken() {
	return retken;
}
public void setRetken(String retken) {
	this.retken = retken;
}

private int boardno;
private String MEMBER_PHONE;

public String getMEMBER_PHONE() {
	return MEMBER_PHONE;
}
public void setMEMBER_PHONE(String mEMBER_PHONE) {
	MEMBER_PHONE = mEMBER_PHONE;
}
public int getBoardno() {
	return boardno;
}
public void setBoardno(int boardno) {
	this.boardno = boardno;
}
public String getToken() {
	return token;
}
public void setToken(String token) {
	this.token = token;
}
public String getBoardtitle() {
	return boardtitle;
}
public void setBoardtitle(String boardtitle) {
	this.boardtitle = boardtitle;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public KaKaoMessage(String boardtitle, String message) {
	super();
	this.boardtitle = boardtitle;
	this.message = message;
}


}
