package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Chat implements Serializable{
	
	private static final long serialVersionUID = 87041L;
 public Chat() {
	// TODO Auto-generated constructor stub
}
 private int CHATDEATIL_NO;
 private int  CHATROOM_NO;
 private int  AGENCY_NO;
 private String CHATDEATIL_CONTENT;
 private String CHATDEATIL_MEMBER;
 private Date CHATDEATIL_DATE;
 private String CHATROOM_MEMBER1;
 private String CHATROOM_MEMBER2;
public int getCHATDEATIL_NO() {
	return CHATDEATIL_NO;
}
public void setCHATDEATIL_NO(int cHATDEATIL_NO) {
	CHATDEATIL_NO = cHATDEATIL_NO;
}
public int getCHATROOM_NO() {
	return CHATROOM_NO;
}
public void setCHATROOM_NO(int cHATROOM_NO) {
	CHATROOM_NO = cHATROOM_NO;
}
public int getAGENCY_NO() {
	return AGENCY_NO;
}
public void setAGENCY_NO(int aGENCY_NO) {
	AGENCY_NO = aGENCY_NO;
}
public String getCHATDEATIL_CONTENT() {
	return CHATDEATIL_CONTENT;
}
public void setCHATDEATIL_CONTENT(String cHATDEATIL_CONTENT) {
	CHATDEATIL_CONTENT = cHATDEATIL_CONTENT;
}
public String getCHATDEATIL_MEMBER() {
	return CHATDEATIL_MEMBER;
}
public void setCHATDEATIL_MEMBER(String cHATDEATIL_MEMBER) {
	CHATDEATIL_MEMBER = cHATDEATIL_MEMBER;
}
public Date getCHATDEATIL_DATE() {
	return CHATDEATIL_DATE;
}
public void setCHATDEATIL_DATE(Date cHATDEATIL_DATE) {
	CHATDEATIL_DATE = cHATDEATIL_DATE;
}
public String getCHATROOM_MEMBER1() {
	return CHATROOM_MEMBER1;
}
public void setCHATROOM_MEMBER1(String cHATROOM_MEMBER1) {
	CHATROOM_MEMBER1 = cHATROOM_MEMBER1;
}
public String getCHATROOM_MEMBER2() {
	return CHATROOM_MEMBER2;
}
public void setCHATROOM_MEMBER2(String cHATROOM_MEMBER2) {
	CHATROOM_MEMBER2 = cHATROOM_MEMBER2;
}
public Chat(int cHATDEATIL_NO, int cHATROOM_NO, int aGENCY_NO, String cHATDEATIL_CONTENT, String cHATDEATIL_MEMBER,
		Date cHATDEATIL_DATE, String cHATROOM_MEMBER1, String cHATROOM_MEMBER2) {
	super();
	CHATDEATIL_NO = cHATDEATIL_NO;
	CHATROOM_NO = cHATROOM_NO;
	AGENCY_NO = aGENCY_NO;
	CHATDEATIL_CONTENT = cHATDEATIL_CONTENT;
	CHATDEATIL_MEMBER = cHATDEATIL_MEMBER;
	CHATDEATIL_DATE = cHATDEATIL_DATE;
	CHATROOM_MEMBER1 = cHATROOM_MEMBER1;
	CHATROOM_MEMBER2 = cHATROOM_MEMBER2;
}


}
