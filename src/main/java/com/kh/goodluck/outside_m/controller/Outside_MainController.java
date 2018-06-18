package com.kh.goodluck.outside_m.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.goodluck.outside_m.model.service.Outside_MainService;
import com.kh.goodluck.outside_m.model.vo.Outside_Main;

@Controller
public class Outside_MainController {

	@Autowired
	private Outside_MainService outside_MainService;
	
	public Outside_MainController() { }
	
	//관리자 뷰단 수정페이지 첫Ajax 
	@RequestMapping(value="alllist.go",method=RequestMethod.POST) 
	public void alllist(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ArrayList<Outside_Main> alllist = (ArrayList<Outside_Main>) outside_MainService.alllist();
		ArrayList<Outside_Main> alllist2 = (ArrayList<Outside_Main>) outside_MainService.alllists();
		//System.out.println("outside_m테이블에서 모든 카로셀 리스트 출력 : "+alllist);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		JSONArray jarr2 = new JSONArray(); 
		
		for(Outside_Main m : alllist) {
			JSONObject js2 = new JSONObject();
			js2.put("osm_datano", m.getOsm_datano());
			js2.put("osm_data", m.getOsm_data());
			js2.put("osm_datatitle", m.getOsm_datatitle());
			js2.put("osm_datavalue", m.getOsm_datavalue());
			jarr.add(js2);
		}
		for(Outside_Main m : alllist2) {
			JSONObject js2 = new JSONObject();
			js2.put("osm_datano", m.getOsm_datano());
			js2.put("osm_data", m.getOsm_data());
			js2.put("osm_datatitle", m.getOsm_datatitle());
			js2.put("osm_datavalue", m.getOsm_datavalue());
			jarr2.add(js2);
		}
		
		json.put("kakaro", jarr);
		json.put("kakaro2", jarr2);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();

	}
	
	@RequestMapping(value="alllist2.go",method=RequestMethod.POST) 
	public void alllist2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ArrayList<Outside_Main> alllist2 = (ArrayList<Outside_Main>) outside_MainService.alllist2();
		ArrayList<Outside_Main> alllist3 = (ArrayList<Outside_Main>) outside_MainService.alllist3();
		//System.out.println("outside_m테이블에서 모든 유투브영상 리스트 출력 : "+alllist2);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		JSONArray jarr2 = new JSONArray();

		for(Outside_Main m : alllist2) {
			JSONObject js2 = new JSONObject();
			js2.put("osm_datano", m.getOsm_datano());
			js2.put("osm_data", m.getOsm_data());
			js2.put("osm_datatitle", m.getOsm_datatitle());
			js2.put("osm_datavalue", m.getOsm_datavalue());
			jarr.add(js2);
		}
		for(Outside_Main m : alllist3) {
			JSONObject js2 = new JSONObject();
			js2.put("osm_datano", m.getOsm_datano());
			js2.put("osm_data", m.getOsm_data());
			js2.put("osm_datatitle", m.getOsm_datatitle());
			js2.put("osm_datavalue", m.getOsm_datavalue());
			jarr2.add(js2);
		}
		json.put("koko", jarr);
		json.put("koko2",jarr2);
		
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();


	}
	
	
	
	
}















