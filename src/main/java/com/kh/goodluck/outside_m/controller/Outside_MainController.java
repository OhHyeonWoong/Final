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
		System.out.println("outside_m테이블에서 모든 카로셀 리스트 출력 : "+alllist);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<alllist.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("osm_datano", alllist.get(i).getOsm_datano());
			js.put("osm_data", alllist.get(i).getOsm_data());
			js.put("osm_datatitle", alllist.get(i).getOsm_datatitle());
			js.put("osm_datavalue", alllist.get(i).getOsm_datavalue());
			jarr.add(js);
		}
		json.put("admin_maincarousel", jarr);
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="alllist.go",method=RequestMethod.POST) 
	public void alllist2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ArrayList<Outside_Main> alllist2 = (ArrayList<Outside_Main>) outside_MainService.alllist2();
		System.out.println("outside_m테이블에서 모든 유투브영상 리스트 출력 : "+alllist2);
		
		/*JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<alllist.size(); i++) {
			JSONObject js = new JSONObject();
			js.put("osm_datano", alllist.get(i).getOsm_datano());
			js.put("osm_data", alllist.get(i).getOsm_data());
			js.put("osm_datatitle", alllist.get(i).getOsm_datatitle());
			js.put("osm_datavalue", alllist.get(i).getOsm_datavalue());
			jarr.add(js);
		}
		json.put("admin_maincarousel", jarr);
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();*/
	}
	
	
	
	
}















