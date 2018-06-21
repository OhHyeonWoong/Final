package com.kh.goodluck.chat.model;

import java.io.Serializable;
import java.sql.Date;

public class Chat implements Serializable{
	
	private static final long serialVersionUID = 3131L;
 public Chat() {
	// TODO Auto-generated constructor stub
}
 private int CHATROOM_NO;
 private String CHATROOM_ORDER;
 private String CHATROOM_APPLICANT;
 private int AGENCY_NO;
public int getCHATROOM_NO() {
	return CHATROOM_NO;
}
public void setCHATROOM_NO(int cHATROOM_NO) {
	CHATROOM_NO = cHATROOM_NO;
}
public String getCHATROOM_ORDER() {
	return CHATROOM_ORDER;
}
public void setCHATROOM_ORDER(String cHATROOM_ORDER) {
	CHATROOM_ORDER = cHATROOM_ORDER;
}
public String getCHATROOM_APPLICANT() {
	return CHATROOM_APPLICANT;
}
public void setCHATROOM_APPLICANT(String cHATROOM_APPLICANT) {
	CHATROOM_APPLICANT = cHATROOM_APPLICANT;
}
public int getAGENCY_NO() {
	return AGENCY_NO;
}
public void setAGENCY_NO(int aGENCY_NO) {
	AGENCY_NO = aGENCY_NO;
}
@Override
public String toString() {
	return "Chat [CHATROOM_NO=" + CHATROOM_NO + ", CHATROOM_ORDER=" + CHATROOM_ORDER + ", CHATROOM_APPLICANT="
			+ CHATROOM_APPLICANT + ", AGENCY_NO=" + AGENCY_NO + "]";
}
public Chat(int cHATROOM_NO, String cHATROOM_ORDER, String cHATROOM_APPLICANT, int aGENCY_NO) {
	super();
	CHATROOM_NO = cHATROOM_NO;
	CHATROOM_ORDER = cHATROOM_ORDER;
	CHATROOM_APPLICANT = cHATROOM_APPLICANT;
	AGENCY_NO = aGENCY_NO;
}


}
