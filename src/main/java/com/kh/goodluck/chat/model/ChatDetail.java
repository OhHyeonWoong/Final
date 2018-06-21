package com.kh.goodluck.chat.model;

import java.io.Serializable;
import java.sql.Date;

public class ChatDetail implements Serializable{
	
	private static final long serialVersionUID = 27841L;
	private int CHATDEATIL_NO;
	private int CHATROOM_NO;
	private String CHATDEATIL_CONTENT;
	private String CHATDEATIL_MEMBER;
	private Date CHATDEATIL_DATE;
	public ChatDetail() {
		// TODO Auto-generated constructor stub
	}
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "ChatDetail [CHATDEATIL_NO=" + CHATDEATIL_NO + ", CHATROOM_NO=" + CHATROOM_NO + ", CHATDEATIL_CONTENT="
				+ CHATDEATIL_CONTENT + ", CHATDEATIL_MEMBER=" + CHATDEATIL_MEMBER + ", CHATDEATIL_DATE="
				+ CHATDEATIL_DATE + "]";
	}
	public ChatDetail(int cHATDEATIL_NO, int cHATROOM_NO, String cHATDEATIL_CONTENT, String cHATDEATIL_MEMBER,
			Date cHATDEATIL_DATE) {
		super();
		CHATDEATIL_NO = cHATDEATIL_NO;
		CHATROOM_NO = cHATROOM_NO;
		CHATDEATIL_CONTENT = cHATDEATIL_CONTENT;
		CHATDEATIL_MEMBER = cHATDEATIL_MEMBER;
		CHATDEATIL_DATE = cHATDEATIL_DATE;
	}
	
}
