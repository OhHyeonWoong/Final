package com.kh.goodluck.item.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("myPageItem")
public class MyPageItem implements Serializable{

	private static final long serialVersionUID = 9910L;
	
	private String itemname;
	private Date buy_date;
	private Date start_date;
	private int final_status;
	
	public MyPageItem() {
		
	}

	public MyPageItem(String itemname, Date buy_date, Date start_date, int final_status) {
		super();
		this.itemname = itemname;
		this.buy_date = buy_date;
		this.start_date = start_date;
		this.final_status = final_status;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public Date getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public int getFinal_status() {
		return final_status;
	}

	public void setFinal_status(int final_status) {
		this.final_status = final_status;
	}

	@Override
	public String toString() {
		return "MyPageItem [itemname=" + itemname + ", buy_date=" + buy_date + ", start_date=" + start_date
				+ ", final_status=" + final_status + "]";
	}
	
}
