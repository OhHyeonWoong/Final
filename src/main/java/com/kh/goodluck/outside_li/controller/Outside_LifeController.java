package com.kh.goodluck.outside_li.controller;

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

import com.kh.goodluck.outside_li.model.service.Outside_LifeService;
import com.kh.goodluck.outside_li.model.vo.Outside_Life;
 
@Controller
public class Outside_LifeController {

	@Autowired
	private Outside_LifeService outside_LifeService;
	
	public Outside_LifeController() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	@RequestMapping(value="alllist_life.go",method=RequestMethod.POST)
	public void alllist_life(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		ArrayList<Outside_Life> list = (ArrayList<Outside_Life>) outside_LifeService.alllist_life();
		ArrayList<Outside_Life> list2 = (ArrayList<Outside_Life>) outside_LifeService.alllist_life2();
		
		JSONObject json = new JSONObject();
		JSONArray jarr1 = new JSONArray();
		JSONArray jarr2 = new JSONArray();


		for(int i=0; i<list.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("osli_datano",list.get(i).getOsli_datano());
			json2.put("osli_data", list.get(i).getOsli_data());
			json2.put("osli_datavalue", list.get(i).getOsli_datavalue());
			jarr1.add(json2);
		}
		
		for(int i=0; i<list2.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("osli_datano",list2.get(i).getOsli_datano());
			json2.put("osli_data", list2.get(i).getOsli_data());
			json2.put("osli_datavalue", list2.get(i).getOsli_datavalue());
			jarr2.add(json2);
		}
		
		json.put("ukjae_lifeimagelist1", jarr1);
		json.put("ukjae_lifeimagelist2", jarr2);
		response.setContentType("application/json; charset=utf-8");	
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
	}
	
	@RequestMapping(value="alllist_life2.go",method=RequestMethod.POST)
	public void alllist_life2(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		ArrayList<Outside_Life> list = (ArrayList<Outside_Life>) outside_LifeService.alllist_life3();
		ArrayList<Outside_Life> list2 = (ArrayList<Outside_Life>) outside_LifeService.alllist_life4();
		
		JSONObject json = new JSONObject();
		JSONArray jarr1 = new JSONArray();
		JSONArray jarr2 = new JSONArray();
		
		
		for(int i=0; i<list.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("osli_datano",list.get(i).getOsli_datano());
			json2.put("osli_data", list.get(i).getOsli_data());
			json2.put("osli_datavalue", list.get(i).getOsli_datavalue());
			jarr1.add(json2);
		}
		
		for(int i=0; i<list2.size(); i++) {
			JSONObject json2 = new JSONObject();
			json2.put("osli_datano",list2.get(i).getOsli_datano());
			json2.put("osli_data", list2.get(i).getOsli_data());
			json2.put("osli_datavalue", list2.get(i).getOsli_datavalue());
			jarr2.add(json2);
		}
		
		json.put("ukjae_lifeimagelist3", jarr1);
		json.put("ukjae_lifeimagelist4", jarr2);
		response.setContentType("application/json; charset=utf-8");	
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
	}
	
	
	
}
