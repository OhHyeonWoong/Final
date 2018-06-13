package com.kh.goodluck.outside_m.model.vo;

public class Outside_Main implements java.io.Serializable{

	public static final long serialVersionUID = 7789L;
	
	private int osm_datano;
	private String osm_data;
	private String osm_datatitle;
	private String osm_datavalue;
	
	public Outside_Main() {
		// TODO Auto-generated constructor stub
	}

	public Outside_Main(int osm_datano, String osm_data, String osm_datatitle, String osm_datavalue) {
		super();
		this.osm_datano = osm_datano;
		this.osm_data = osm_data;
		this.osm_datatitle = osm_datatitle;
		this.osm_datavalue = osm_datavalue;
	}

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

	@Override
	public String toString() {
		return "Outside_Main [osm_datano=" + osm_datano + ", osm_data=" + osm_data + ", osm_datatitle=" + osm_datatitle
				+ ", osm_datavalue=" + osm_datavalue + "]";
	}
	
	
	
	/*OSM_DATANO	NUMBER(2,0)
	OSM_DATA	VARCHAR2(500 BYTE)
	OSM_DATATITLE	VARCHAR2(500 BYTE)
	OSM_DATAVALUE	VARCHAR2(500 BYTE)*/
	
}
