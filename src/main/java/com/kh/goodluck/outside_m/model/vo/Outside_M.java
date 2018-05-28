package com.kh.goodluck.outside_m.model.vo;

import org.springframework.stereotype.Component;

@Component("outside_M")
public class Outside_M implements java.io.Serializable {
	private static final long serialVersionUID = 7787L;
	
	private int osm_datano;
	private String osm_data;
	private String osm_datatitle;
	private String osm_datavalue;
	
	//기본생성자 
	public Outside_M() {
		// TODO Auto-generated constructor stub
	}
	
	//인자값을 받는 생성자
	public Outside_M(int osm_datano, String osm_data, String osm_datatitle, String osm_datavalue) {
		super();
		this.osm_datano = osm_datano;
		this.osm_data = osm_data;
		this.osm_datatitle = osm_datatitle;
		this.osm_datavalue = osm_datavalue;
	}
	
	//Getter, Setter생성
	public int getOsm_datano() {
		return osm_datano;
	}
	public void setOsm_datano(int osm_datano) {
		this.osm_datano = osm_datano;
	}
	public String getOsm_data() {
		return osm_data;
	}
	public void setOsm_data(String osm_data) {
		this.osm_data = osm_data;
	}
	public String getOsm_datatitle() {
		return osm_datatitle;
	}
	public void setOsm_datatitle(String osm_datatitle) {
		this.osm_datatitle = osm_datatitle;
	}
	public String getOsm_datavalue() {
		return osm_datavalue;
	}
	public void setOsm_datavalue(String osm_datavalue) {
		this.osm_datavalue = osm_datavalue;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
		
	//Objcet클래스의 toString Override
	
	@Override
	public String toString() {
		return "Outside_M [osm_datano=" + osm_datano + ", osm_data=" + osm_data + ", osm_datatitle=" + osm_datatitle
				+ ", osm_datavalue=" + osm_datavalue + "]";
	}
	
	

	
	
}
