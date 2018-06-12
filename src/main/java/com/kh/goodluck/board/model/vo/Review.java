package com.kh.goodluck.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;
@Component("Review")
public class Review  implements Serializable{
	
	private static final long serialVersionUID =43672L;
public Review() {
	// TODO Auto-generated constructor stub
}

private int REVIEW_NO;
private int REVIEW_RATE;
private String REVIEW_WRITER;
private int AGENCYLOG_NO;
private Date REVIEW_DATE;
private String REVIEW_CONTENT;
@Override
public String toString() {
	return "Revicw [REVIEW_NO=" + REVIEW_NO + ", REVIEW_RATE=" + REVIEW_RATE + ", REVIEW_WRITER=" + REVIEW_WRITER
			+ ", AGENCYLOG_NO=" + AGENCYLOG_NO + ", REVIEW_DATE=" + REVIEW_DATE + ", REVIEW_CONTENT=" + REVIEW_CONTENT
			+ "]";
}
public int getREVIEW_NO() {
	return REVIEW_NO;
}
public void setREVIEW_NO(int rEVIEW_NO) {
	REVIEW_NO = rEVIEW_NO;
}
public int getREVIEW_RATE() {
	return REVIEW_RATE;
}
public void setREVIEW_RATE(int rEVIEW_RATE) {
	REVIEW_RATE = rEVIEW_RATE;
}
public String getREVIEW_WRITER() {
	return REVIEW_WRITER;
}
public void setREVIEW_WRITER(String rEVIEW_WRITER) {
	REVIEW_WRITER = rEVIEW_WRITER;
}
public int getAGENCYLOG_NO() {
	return AGENCYLOG_NO;
}
public void setAGENCYLOG_NO(int aGENCYLOG_NO) {
	AGENCYLOG_NO = aGENCYLOG_NO;
}
public Date getREVIEW_DATE() {
	return REVIEW_DATE;
}
public void setREVIEW_DATE(Date rEVIEW_DATE) {
	REVIEW_DATE = rEVIEW_DATE;
}
public String getREVIEW_CONTENT() {
	return REVIEW_CONTENT;
}
public void setREVIEW_CONTENT(String rEVIEW_CONTENT) {
	REVIEW_CONTENT = rEVIEW_CONTENT;
}


}
