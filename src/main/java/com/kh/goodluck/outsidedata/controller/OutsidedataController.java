package com.kh.goodluck.outsidedata.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.outsidedata.model.service.OutsidedataService;
import com.kh.goodluck.outsidedata.model.vo.PetNews;

@Controller
public class OutsidedataController {

	@Autowired
	private OutsidedataService outsidedataService;
	
	public OutsidedataController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="petnewslist.go",method=RequestMethod.GET)
	//메인페이지 동물영역에 표기되는 6개 리스트 
	public void petNewsDataThrows(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// PetNew에 관한 정보를 받아오는 메소드
		ArrayList<PetNews> pnewslist = (ArrayList<PetNews>) outsidedataService.petNewsDataThrows();
		
		System.out.println("리스트 출력 : "+pnewslist);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<pnewslist.size(); i++) {
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", pnewslist.get(i).getOsp_news_datano());
			js.put("osp_news_data", pnewslist.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", pnewslist.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", pnewslist.get(i).getOsp_news_content1());
			js.put("osp_news_content2", pnewslist.get(i).getOsp_news_content2());
			js.put("osp_news_content3", pnewslist.get(i).getOsp_news_content3());
			js.put("osp_news_content4", pnewslist.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", pnewslist.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", pnewslist.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", pnewslist.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", pnewslist.get(i).getOsp_news_pic4());
			js.put("osp_news_date", pnewslist.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", pnewslist.get(i).getOsp_news_origin());
			jarr.add(js);
		}
		json.put("petNewsAll", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("petnewsdetail.go") //펫 뉴스 상세보기 
	public ModelAndView petNewsDetail(@RequestParam("newspk") String pet_pk,ModelAndView mv) {
		
		int petpk = Integer.parseInt(pet_pk); //넘어온 파라미터를 파싱작업
		System.out.println("조회시도하는 글 번호 : "+petpk);
		
		/*PetNews pn = outsidedataService.petNewsDetail(petpk);
		
		
		mv.setViewName("A2.JUJ/OutSideInFormation");*/
		return mv;
	}
	
	  
	
	
	@RequestMapping("news_total.go")
	public ModelAndView newTotalPageMove(ModelAndView mv) {
		// PetNew에 관한 정보를 받아오는 메소드
		ArrayList<PetNews> pnewslist = (ArrayList<PetNews>) outsidedataService.petNewsDataThrows();
		
		//System.out.println("리스트 출력 : "+pnewslist);		
		
		mv.addObject("petlist",pnewslist);
		mv.setViewName("A2.JUJ/CombineNewsTotalShow");
		return mv;
	}

	
	
	
	
	
	
}
















