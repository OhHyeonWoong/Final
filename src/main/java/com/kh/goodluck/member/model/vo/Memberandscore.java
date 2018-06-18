package com.kh.goodluck.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("Memberandscore")
public class Memberandscore implements Serializable{

	private static final long serialVersionUID = 7654L;
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_address;
	private String member_phone;
	private int member_regident_number;
	private int member_write_count;
	private Date member_enroll_date;
	private Date member_lastlogin;
	private Date member_lastpassword;
	private int member_yellowcard;
	private int member_status;
	private String member_renamephoto;
	private int member_cash;
	private String member_accesstoken;
	private String member_refreshtoken;
	private int MEMBER_KAKAOIDPK;
	private int member_keyword_count;
	private String emoticonfile;
	private int SCORE_BUY;
	private int SCORE_BUY_COUNT; 
	private int SCORE_SELL;
	private int SCORE_SELL_COUNT;
	private Double SCORE_SELL_RATE;
	
	public Memberandscore() {
	}
	
	public int getMEMBER_KAKAOIDPK() {
		return MEMBER_KAKAOIDPK;
	}

	public void setMEMBER_KAKAOIDPK(int mEMBER_KAKAOIDPK) {
		MEMBER_KAKAOIDPK = mEMBER_KAKAOIDPK;
	}

	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public int getMember_regident_number() {
		return member_regident_number;
	}
	public void setMember_regident_number(int member_regident_number) {
		this.member_regident_number = member_regident_number;
	}
	public int getMember_write_count() {
		return member_write_count;
	}
	public void setMember_write_count(int member_write_count) {
		this.member_write_count = member_write_count;
	}
	public Date getMember_enroll_date() {
		return member_enroll_date;
	}
	public void setMember_enroll_date(Date member_enroll_date) {
		this.member_enroll_date = member_enroll_date;
	}
	public Date getMember_lastlogin() {
		return member_lastlogin;
	}
	public void setMember_lastlogin(Date member_lastlogin) {
		this.member_lastlogin = member_lastlogin;
	}
	public Date getMember_lastpassword() {
		return member_lastpassword;
	}
	public void setMember_lastpassword(Date member_lastpassword) {
		this.member_lastpassword = member_lastpassword;
	}
	public int getMember_yellowcard() {
		return member_yellowcard;
	}
	public void setMember_yellowcard(int member_yellowcard) {
		this.member_yellowcard = member_yellowcard;
	}
	public int getMember_status() {
		return member_status;
	}
	public void setMember_status(int member_status) {
		this.member_status = member_status;
	}
	public String getMember_renamephoto() {
		return member_renamephoto;
	}
	public void setMember_renamephoto(String member_renamephoto) {
		this.member_renamephoto = member_renamephoto;
	}
	public int getMember_cash() {
		return member_cash;
	}
	public void setMember_cash(int member_cash) {
		this.member_cash = member_cash;
	}
	public String getMember_accesstoken() {
		return member_accesstoken;
	}
	public void setMember_accesstoken(String member_accesstoken) {
		this.member_accesstoken = member_accesstoken;
	}
	public String getMember_refreshtoken() {
		return member_refreshtoken;
	}
	public void setMember_refreshtoken(String member_refreshtoken) {
		this.member_refreshtoken = member_refreshtoken;
	}
	public int getMember_keyword_count() {
		return member_keyword_count;
	}
	public void setMember_keyword_count(int member_keyword_count) {
		this.member_keyword_count = member_keyword_count;
	}
	public String getEmoticonfile() {
		return emoticonfile;
	}
	public void setEmoticonfile(String emoticonfile) {
		this.emoticonfile = emoticonfile;
	}
	public int getSCORE_BUY() {
		return SCORE_BUY;
	}
	public void setSCORE_BUY(int sCORE_BUY) {
		SCORE_BUY = sCORE_BUY;
	}
	public int getSCORE_BUY_COUNT() {
		return SCORE_BUY_COUNT;
	}
	public void setSCORE_BUY_COUNT(int sCORE_BUY_COUNT) {
		SCORE_BUY_COUNT = sCORE_BUY_COUNT;
	}
	public int getSCORE_SELL() {
		return SCORE_SELL;
	}
	public void setSCORE_SELL(int sCORE_SELL) {
		SCORE_SELL = sCORE_SELL;
	}
	public int getSCORE_SELL_COUNT() {
		return SCORE_SELL_COUNT;
	}
	public void setSCORE_SELL_COUNT(int sCORE_SELL_COUNT) {
		SCORE_SELL_COUNT = sCORE_SELL_COUNT;
	}
	public Double getSCORE_SELL_RATE() {
		return SCORE_SELL_RATE;
	}
	public void setSCORE_SELL_RATE(Double sCORE_SELL_RATE) {
		SCORE_SELL_RATE = sCORE_SELL_RATE;
	}
	public Memberandscore(String member_id, String member_pw, String member_name, String member_email,
			String member_address, String member_phone, int member_regident_number, int member_write_count,
			Date member_enroll_date, Date member_lastlogin, Date member_lastpassword, int member_yellowcard,
			int member_status, String member_renamephoto, int member_cash, String member_accesstoken,
			String member_refreshtoken, int member_keyword_count, String emoticonfile, int sCORE_BUY,
			int sCORE_BUY_COUNT, int sCORE_SELL, int sCORE_SELL_COUNT, Double sCORE_SELL_RATE) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_phone = member_phone;
		this.member_regident_number = member_regident_number;
		this.member_write_count = member_write_count;
		this.member_enroll_date = member_enroll_date;
		this.member_lastlogin = member_lastlogin;
		this.member_lastpassword = member_lastpassword;
		this.member_yellowcard = member_yellowcard;
		this.member_status = member_status;
		this.member_renamephoto = member_renamephoto;
		this.member_cash = member_cash;
		this.member_accesstoken = member_accesstoken;
		this.member_refreshtoken = member_refreshtoken;
		this.member_keyword_count = member_keyword_count;
		this.emoticonfile = emoticonfile;
		SCORE_BUY = sCORE_BUY;
		SCORE_BUY_COUNT = sCORE_BUY_COUNT;
		SCORE_SELL = sCORE_SELL;
		SCORE_SELL_COUNT = sCORE_SELL_COUNT;
		SCORE_SELL_RATE = sCORE_SELL_RATE;
	}

	@Override
	public String toString() {
		return "Memberandscore [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_email=" + member_email + ", member_address=" + member_address + ", member_phone="
				+ member_phone + ", member_regident_number=" + member_regident_number + ", member_write_count="
				+ member_write_count + ", member_enroll_date=" + member_enroll_date + ", member_lastlogin="
				+ member_lastlogin + ", member_lastpassword=" + member_lastpassword + ", member_yellowcard="
				+ member_yellowcard + ", member_status=" + member_status + ", member_renamephoto=" + member_renamephoto
				+ ", member_cash=" + member_cash + ", member_accesstoken=" + member_accesstoken
				+ ", member_refreshtoken=" + member_refreshtoken + ", MEMBER_KAKAOIDPK=" + MEMBER_KAKAOIDPK
				+ ", member_keyword_count=" + member_keyword_count + ", emoticonfile=" + emoticonfile + ", SCORE_BUY="
				+ SCORE_BUY + ", SCORE_BUY_COUNT=" + SCORE_BUY_COUNT + ", SCORE_SELL=" + SCORE_SELL
				+ ", SCORE_SELL_COUNT=" + SCORE_SELL_COUNT + ", SCORE_SELL_RATE=" + SCORE_SELL_RATE + "]";
	}
	
	
}
