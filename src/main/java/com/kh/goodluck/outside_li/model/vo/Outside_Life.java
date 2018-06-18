package com.kh.goodluck.outside_li.model.vo;


public class Outside_Life implements java.io.Serializable{

	public static final long serialVersionUID = 3869L;	
	private int osli_datano;
	private String osli_data;
	private String osli_datavalue;
	
	public Outside_Life() {
		// TODO Auto-generated constructor stub
	}
	
	public Outside_Life(int osli_datano, String osli_data, String osli_datavalue) {
		super();
		this.osli_datano = osli_datano;
		this.osli_data = osli_data;
		this.osli_datavalue = osli_datavalue;
	}

	public int getOsli_datano() {
		return osli_datano;
	}

	public void setOsli_datano(int osli_datano) {
		this.osli_datano = osli_datano;
	}

	public String getOsli_data() {
		return osli_data;
	}

	public void setOsli_data(String osli_data) {
		this.osli_data = osli_data;
	}

	public String getOsli_datavalue() {
		return osli_datavalue;
	}

	public void setOsli_datavalue(String osli_datavalue) {
		this.osli_datavalue = osli_datavalue;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Outside_Life [osli_datano=" + osli_datano + ", osli_data=" + osli_data + ", osli_datavalue="
				+ osli_datavalue + "]";
	}
	
	
}
