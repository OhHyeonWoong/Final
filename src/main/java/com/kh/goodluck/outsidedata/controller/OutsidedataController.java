package com.kh.goodluck.outsidedata.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.outsidedata.model.service.OutsidedataService;
import com.kh.goodluck.outsidedata.model.vo.GameNews;
import com.kh.goodluck.outsidedata.model.vo.LifeNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews;
import com.kh.goodluck.outsidedata.model.vo.PetNews_Cocoment;
import com.kh.goodluck.outsidedata.model.vo.PetNews_Comment;
import com.kh.goodluck.outsidedata.model.vo.TravelNews;

@Controller
public class OutsidedataController {

	@Autowired
	private OutsidedataService outsidedataService;
	
	public OutsidedataController() {
		// TODO Auto-generated constructor stub
	}

	/* ************공통영역* ************/
	@RequestMapping("news_total.go")
	public String newTotalPageMove() {	
		//뉴스전체보기 페이지로 이동	
		return "A2.JUJ/CombineNewsTotalShow";
	}

	@RequestMapping(value="fowordingkeyword.go", method=RequestMethod.GET) //검색기능
	public void  searchListFeedback(@RequestParam("seloption")String useroption , @RequestParam("keyword")String keyword,HttpServletRequest request,HttpServletResponse response) throws IOException {		
		/*System.out.println("유저가 선택한 select문 : "+useroption);
		System.out.println("유저가 입력한 검색어 : "+keyword);*/		
		int useroption_parse = Integer.parseInt(useroption);
		
		// 1 : 제목기준 키워드검색 , 2 : 기사내용기준 키워드검색 , 3 : 출처기준 키워드검색
		switch (useroption_parse) { //유저가 선택한 것에 따라 검색옵션이 3가지로 나뉨
		case 1 : 
			PetNews p1 = new PetNews(keyword);
			LifeNews p2 = new LifeNews(keyword);
			GameNews p3 = new GameNews(keyword); 
			TravelNews p4 = new TravelNews(keyword);
			PrintWriter out = response.getWriter();
			
			ArrayList<PetNews> searchList = (ArrayList<PetNews>) outsidedataService.userSearchTitle(p1);
			ArrayList<LifeNews> searchList2 = (ArrayList<LifeNews>) outsidedataService.userSearchTitle2(p2);
			ArrayList<GameNews> searchList3 = (ArrayList<GameNews>) outsidedataService.userSearchTitle3(p3);
			ArrayList<TravelNews> searchList4 = (ArrayList<TravelNews>) outsidedataService.userSearchTitle4(p4);
			
			JSONObject json = new JSONObject();
			JSONArray jarr = new JSONArray();
			
			for(int i=0; i<searchList.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList.get(i).getOsp_news_origin());
				jarr.add(js);
			}
			
			for(int i=0; i<searchList2.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList2.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList2.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList2.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList2.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList2.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList2.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList2.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList2.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList2.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList2.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList2.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList2.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList2.get(i).getOsp_news_origin());
				jarr.add(js);
			}			
			
			for(int i=0; i<searchList3.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList3.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList3.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList3.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList3.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList3.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList3.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList3.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList3.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList3.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList3.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList3.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList3.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList3.get(i).getOsp_news_origin());
				jarr.add(js);
			}
			
			for(int i=0; i<searchList4.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList4.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList4.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList4.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList4.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList4.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList4.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList4.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList4.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList4.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList4.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList4.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList4.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList4.get(i).getOsp_news_origin());
				jarr.add(js);
			}
			
			json.put("SearchResult", jarr);	
			response.setContentType("application/json; charset=utf-8");
			out.print(json.toJSONString());	
			out.flush();
			out.close();	
			
			break;
		case 2 :  /*2 : 기사내용기준 키워드검색 */
			PetNews p05 = new PetNews(keyword, keyword, keyword, keyword);
			LifeNews p06 = new LifeNews(keyword, keyword, keyword, keyword);
			GameNews p07 = new GameNews(keyword, keyword, keyword, keyword);
			TravelNews p08 = new TravelNews(keyword, keyword, keyword, keyword);
			PrintWriter out3 = response.getWriter();			
			
			ArrayList<PetNews> searchList05 =  (ArrayList<PetNews>) outsidedataService.userSearchContents(p05);
			ArrayList<LifeNews> searchList06 = (ArrayList<LifeNews>) outsidedataService.userSearchContents2(p06);
			ArrayList<GameNews>	searchList07 = (ArrayList<GameNews>) outsidedataService.userSearchContents3(p07);
			ArrayList<TravelNews> searchList08 = (ArrayList<TravelNews>) outsidedataService.userSearchContents4(p08);

			JSONObject json3 = new JSONObject();
			JSONArray jarr3 = new JSONArray();
			
			for(int i=0; i<searchList05.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList05.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList05.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList05.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList05.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList05.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList05.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList05.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList05.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList05.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList05.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList05.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList05.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList05.get(i).getOsp_news_origin());
				jarr3.add(js);
			}
			
			for(int i=0; i<searchList06.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList06.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList06.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList06.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList06.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList06.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList06.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList06.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList06.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList06.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList06.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList06.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList06.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList06.get(i).getOsp_news_origin());
				jarr3.add(js);
			}			
			
			for(int i=0; i<searchList07.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList07.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList07.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList07.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList07.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList07.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList07.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList07.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList07.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList07.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList07.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList07.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList07.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList07.get(i).getOsp_news_origin());
				jarr3.add(js);
			}
			
			for(int i=0; i<searchList08.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList08.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList08.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList08.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList08.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList08.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList08.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList08.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList08.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList08.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList08.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList08.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList08.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList08.get(i).getOsp_news_origin());
				jarr3.add(js);
			}
			json3.put("SearchResult", jarr3);	
			response.setContentType("application/json; charset=utf-8");
			out3.print(json3.toJSONString());
			out3.flush();
			out3.close();
			break;
			
		case 3 : 

			PetNews p01 = new PetNews();
			LifeNews p02 = new LifeNews();
			GameNews p03 = new GameNews();
			TravelNews p04 = new TravelNews();
			PrintWriter out2 = response.getWriter();
			
			p01.setOsp_news_origin(keyword);
			p02.setOsp_news_origin(keyword);
			p03.setOsp_news_origin(keyword);
			p04.setOsp_news_origin(keyword);
			
			ArrayList<PetNews> searchList01 = (ArrayList<PetNews>) outsidedataService.userSearchOrign(p01);
			ArrayList<LifeNews> searchList02 = (ArrayList<LifeNews>) outsidedataService.userSearchOrign2(p02);
			ArrayList<GameNews> searchList03 = (ArrayList<GameNews>) outsidedataService.userSearchOrign3(p03);
			ArrayList<TravelNews> searchList04 = (ArrayList<TravelNews>) outsidedataService.userSearchOrign4(p04);
			
			
			JSONObject json2 = new JSONObject();
			JSONArray jarr2 = new JSONArray();
			
			for(int i=0; i<searchList01.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList01.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList01.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList01.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList01.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList01.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList01.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList01.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList01.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList01.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList01.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList01.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList01.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList01.get(i).getOsp_news_origin());
				jarr2.add(js);
			}
			
			for(int i=0; i<searchList02.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList02.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList02.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList02.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList02.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList02.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList02.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList02.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList02.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList02.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList02.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList02.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList02.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList02.get(i).getOsp_news_origin());
				jarr2.add(js);
			}			
			
			for(int i=0; i<searchList03.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList03.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList03.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList03.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList03.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList03.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList03.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList03.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList03.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList03.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList03.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList03.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList03.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList03.get(i).getOsp_news_origin());
				jarr2.add(js);
			}
			
			for(int i=0; i<searchList04.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", searchList04.get(i).getOsp_news_datano());
				js.put("osp_news_data", searchList04.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", searchList04.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", searchList04.get(i).getOsp_news_content1());
				js.put("osp_news_content2", searchList04.get(i).getOsp_news_content2());
				js.put("osp_news_content3", searchList04.get(i).getOsp_news_content3());
				js.put("osp_news_content4", searchList04.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", searchList04.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", searchList04.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", searchList04.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", searchList04.get(i).getOsp_news_pic4());
				js.put("osp_news_date", searchList04.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", searchList04.get(i).getOsp_news_origin());
				jarr2.add(js);
			}
			
			json2.put("SearchResult", jarr2);	
			response.setContentType("application/json; charset=utf-8");
			out2.print(json2.toJSONString());
			out2.flush();
			out2.close();				
			break;
		}
		
	}
	
	@RequestMapping("searchdetail.go") //검색후 나타난 리스트에 대한 상세조회
	public ModelAndView searchNewsDetail(@RequestParam("newspk") String search_pk,@RequestParam("newscategory")String category,  ModelAndView mv) {		
		int searchpk = Integer.parseInt(search_pk); //조회한 번호를 파싱
		String checkCate = category.substring(0, 2); //어떤영역에 속하는지 체크함
		
		switch (checkCate) {
		case "반려":
			PetNews pn = outsidedataService.petNewsDetail(searchpk);
			mv.addObject("selectNews", pn);	
				break;
			
		case "생활": 		
			LifeNews ln = outsidedataService.lifeNewsDetail(searchpk);
			mv.addObject("selectNews", ln);
				break;
				
		case "게임":
			GameNews gn = outsidedataService.gameNewsDetail(searchpk);
			mv.addObject("selectNews", gn);
			
			break;
		case "여행":
			TravelNews tn = outsidedataService.travelNewsDetail(searchpk);
			mv.addObject("selectNews", tn);
			break;

		default: System.out.println("해당되는 영역이 없습니다.");
			break;
		}
		mv.setViewName("A2.JUJ/OutSideInFormation");
		return mv;
	}
	/* ************* End********************/
	
	/* ************생활영역* ************/
	
	@RequestMapping(value="lifenewslist1.go",method=RequestMethod.GET)
	//메인페이지 생활영역에 표기되는 3가지 리스트 (1~3번글) 메인페이지
	public void lifeNewsDataThrows1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ArrayList<LifeNews> life1 = (ArrayList<LifeNews>) outsidedataService.lifeNewsDataThrows1(); //1~3번	
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();			

		for(int i=0; i<life1.size(); i++) { 
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", life1.get(i).getOsp_news_datano());
			js.put("osp_news_data", life1.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", life1.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", life1.get(i).getOsp_news_content1());
			js.put("osp_news_content2", life1.get(i).getOsp_news_content2());
			js.put("osp_news_content3", life1.get(i).getOsp_news_content3());
			js.put("osp_news_content4", life1.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", life1.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", life1.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", life1.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", life1.get(i).getOsp_news_pic4());
			js.put("osp_news_date", life1.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", life1.get(i).getOsp_news_origin());
			jarr.add(js);			
		}
		  
		json.put("LifeNewsOne", jarr);
		//json2.put("LifeNewsTwo", jarr2);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="lifenewslist2.go",method=RequestMethod.GET)
	//메인페이지 생활영역에 표기되는 3가지 리스트 (4~6번글) 메인페이지
	public void lifeNewsDataThrows2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ArrayList<LifeNews> life2 = (ArrayList<LifeNews>) outsidedataService.lifeNewsDataThrows2(); 
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();		 
		
		for(int i=0; i<life2.size(); i++) { //4~6번글
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", life2.get(i).getOsp_news_datano());
			js.put("osp_news_data", life2.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", life2.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", life2.get(i).getOsp_news_content1());
			js.put("osp_news_content2", life2.get(i).getOsp_news_content2());
			js.put("osp_news_content3", life2.get(i).getOsp_news_content3());
			js.put("osp_news_content4", life2.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", life2.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", life2.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", life2.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", life2.get(i).getOsp_news_pic4());
			js.put("osp_news_date", life2.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", life2.get(i).getOsp_news_origin());
			jarr.add(js);			
		}	

		json.put("LifeNewsTwo", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}

	@RequestMapping("lifenewsdetail.go") //생활 뉴스 상세보기 
	public ModelAndView petNewsDetail(@RequestParam("newspk") String life_pk,ModelAndView mv) {		
		
		int lifepk = Integer.parseInt(life_pk); //넘어온 파라미터를 파싱작업
		LifeNews ln = outsidedataService.lifeNewsDetail(lifepk);
		
		mv.addObject("selectNews", ln);
		mv.setViewName("A2.JUJ/OutSideInFormation");
		
		return mv;
	}
	
	@RequestMapping("lifeNews.go")
	public void initialDatashow2(HttpServletRequest request,HttpServletResponse response)throws IOException {
		// 생활뉴스에 관한 정보를 받아오는 메소드  		뉴스페이지
		ArrayList<LifeNews> lifelist = (ArrayList<LifeNews>) outsidedataService.lifeNewsDataThrows();
		
		//System.out.println(lifelist.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<lifelist.size(); i++) {
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", lifelist.get(i).getOsp_news_datano());
			js.put("osp_news_data", lifelist.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", lifelist.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", lifelist.get(i).getOsp_news_content1());
			js.put("osp_news_content2", lifelist.get(i).getOsp_news_content2());
			js.put("osp_news_content3", lifelist.get(i).getOsp_news_content3());
			js.put("osp_news_content4", lifelist.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", lifelist.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", lifelist.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", lifelist.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", lifelist.get(i).getOsp_news_pic4());
			js.put("osp_news_date", lifelist.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", lifelist.get(i).getOsp_news_origin());
			jarr.add(js);
		}
		json.put("lifeNewsList", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();	
	}		
		
	/* ************* End********************/	
	
	/* ************동물영역* ************/	
	@RequestMapping(value="petnewslist.go",method=RequestMethod.GET)
	//메인페이지 동물영역에 표기되는 6개 뉴스리스트 
	public void petNewsDataThrows(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// PetNew에 관한 정보를 받아오는 메소드 
		ArrayList<PetNews> pnewslist = (ArrayList<PetNews>) outsidedataService.petNewsDataThrows();
		
		//System.out.println("리스트 출력 : "+pnewslist);
		
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
	public ModelAndView LifeNewsDetail33(@RequestParam("newspk") String pet_pk,ModelAndView mv) {
		int petpk = Integer.parseInt(pet_pk); //넘어온 파라미터를 파싱작업
		//System.out.println("조회시도하는 글 번호 : "+petpk);
		
		PetNews pn = outsidedataService.petNewsDetail(petpk);
		
		mv.addObject("selectNews", pn);
		mv.setViewName("A2.JUJ/OutSideInFormation");
		
		return mv;		
	}  
	
	@RequestMapping("ukjaepet_Origincomment_add") //펫 뉴스 상세보기 
	public void ukjaePetnews_Origincomment_add(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String new_no = request.getParameter("comment_add_newsno");
		String comment_contents = request.getParameter("commnet_contents");
		String member_id = request.getParameter("user_id");
		
		System.out.println("글 작성자 : "+member_id);
		System.out.println("댓글작성을 시도하는 뉴스의번호 : "+new_no);
		int parsing_news_no = Integer.parseInt(new_no);
		
		System.out.println("댓글내용?? "+comment_contents);
		
		int pet_comment_status = 1;
		
		PetNews_Comment pec = new PetNews_Comment(pet_comment_status, comment_contents, member_id, parsing_news_no);
		
		int insertComment = outsidedataService.petCommentInput(pec);
	
		
		PrintWriter out = response.getWriter();
		if(insertComment>0) {
			out.append("1");
		}else if(insertComment<=0) {
			out.append("0");				
		}
		
		out.flush();
		out.close();
	}
	
	@RequestMapping("comment_comment.go")
	public void ukjaePetnews_CommentAndCommnet_add(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		String news_datacomment_no = request.getParameter("news_datacommentno"); //뉴스댓글번호PK 파싱필요
		String news_datano = request.getParameter("news_datano"); //뉴스글번호 파싱필요
		String news_area = request.getParameter("news_area"); //뉴스영역(반려동물,여행,게임,생활)
		  
		int parse_news_datacomment_no = Integer.parseInt(news_datacomment_no);
		int parse_news_datano = Integer.parseInt(news_datano);
		
		PetNews_Cocoment petcc = new PetNews_Cocoment(parse_news_datano, parse_news_datacomment_no);
		
		
		ArrayList<PetNews_Cocoment> list = (ArrayList<PetNews_Cocoment>) outsidedataService.commentAlllistGet(petcc);
		System.out.println("댓글의 댓글 리스트 출력 : "+list.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<list.size(); i++) {
			JSONObject js = new JSONObject();		
			js.put("pet_cocomment_no",list.get(i).getPet_cocomment_no());
			js.put("pet_cocomment_contents", list.get(i).getPet_cocomment_contents());
			js.put("pet_cocomment_writer", list.get(i).getPet_cocomment_writer());
			js.put("pet_cocomment_newsno", list.get(i).getPet_cocomment_newsno());
			js.put("pet_cocommnet_comno", list.get(i).getPet_cocommnet_comno());
			js.put("pet_cocomment_writedate", list.get(i).getPet_cocomment_writedate().toString());
			jarr.add(js);
		}
		json.put("petCocoment", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();	
		
		
	}
	
	@RequestMapping("animalNews.go")
	public void initialDatashow(HttpServletRequest request,HttpServletResponse response)throws IOException {
	// PetNew에 관한 정보를 받아오는 메소드 		뉴스통합 페이지
			ArrayList<PetNews> pnewslist = (ArrayList<PetNews>) outsidedataService.petNewsDataThrows();
			
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
			json.put("petNewsList", jarr);
			PrintWriter out = response.getWriter();
			response.setContentType("application/json; charset=utf-8");
			out.print(json.toJSONString());
			out.flush();
			out.close();	
		}	
	
	@RequestMapping("startDatalistGet.go")
	public void startCommentDatago (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String data_area = request.getParameter("news_area");
		String data_no = request.getParameter("news_datano");
		int parsing_datano = Integer.parseInt(data_no);
		  
		//System.out.println("news_area : "+data_area);
		//System.out.println("news_datano : "+data_no);
		
		ArrayList<PetNews_Comment> pet = ((ArrayList<PetNews_Comment>) outsidedataService.commentAlllistGet(parsing_datano));
		//System.out.println("pet.toString() : "+pet.toString());
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<pet.size(); i++) {
			JSONObject js = new JSONObject();		
			js.put("pet_comment_no", pet.get(i).getPet_comment_no());
			js.put("pet_comment_status", pet.get(i).getPet_comment_status());
			js.put("pet_comment_contents", pet.get(i).getPet_comment_contents());
			js.put("pet_comment_writer", pet.get(i).getPet_comment_writer());
			js.put("pet_comment_newsno", pet.get(i).getpet_comment_newsno());
			js.put("pet_comment_writedate", pet.get(i).getPet_comment_writedate().toString());
			jarr.add(js);
		}
		json.put("petNewsCommentlist", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
		
		/*switch (key) {
		case value:
			
			break;

		default:
			break;
		}
		*/
		
	}
	/* ************* End********************/		
	

	/* ************게임영역* ************/	
	
	@RequestMapping(value="gamenewslist.go",method=RequestMethod.GET)
	//메인페이지 생활영역에 표기되는 3가지 리스트 (1~3번글) 메인페이지
	public void GameNewsDataThrows(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// gameNew에 관한 정보를 받아오는 메소드
		ArrayList<GameNews> game = (ArrayList<GameNews>) outsidedataService.gameNewsDataThrows();
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();			

		for(int i=0; i<game.size(); i++) { 
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", game.get(i).getOsp_news_datano());
			js.put("osp_news_data", game.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", game.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", game.get(i).getOsp_news_content1());
			js.put("osp_news_content2", game.get(i).getOsp_news_content2());
			js.put("osp_news_content3", game.get(i).getOsp_news_content3());
			js.put("osp_news_content4", game.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", game.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", game.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", game.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", game.get(i).getOsp_news_pic4());
			js.put("osp_news_date", game.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", game.get(i).getOsp_news_origin());
			jarr.add(js);			
		}
		
		json.put("GameNewsOne", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}	
	
	@RequestMapping("gamenewsdetail.go") //게임 뉴스 상세보기 
	public ModelAndView GameNewsDetail(@RequestParam("newspk") String game_pk,ModelAndView mv) {
		int gamepk = Integer.parseInt(game_pk); //넘어온 파라미터를 파싱작업
		//System.out.println("조회시도하는 글 번호 : "+petpk);
		
		GameNews gn = outsidedataService.gameNewsDetail(gamepk);
		
		mv.addObject("selectNews", gn);
		mv.setViewName("A2.JUJ/OutSideInFormation");
		
		return mv;		
	}	

	@RequestMapping("gameNews.go")
	public void initialDatashow3(HttpServletRequest request,HttpServletResponse response)throws IOException {
	// gameNew에 관한 정보를 받아오는 메소드 		뉴스통합 페이지
			ArrayList<GameNews> gnewslist = (ArrayList<GameNews>) outsidedataService.gameNewsDataThrows2();
			
			JSONObject json = new JSONObject();
			JSONArray jarr = new JSONArray();
			
			for(int i=0; i<gnewslist.size(); i++) {
				JSONObject js = new JSONObject();		
				js.put("osp_news_datano", gnewslist.get(i).getOsp_news_datano());
				js.put("osp_news_data", gnewslist.get(i).getOsp_news_data());
				js.put("osp_news_datatitle", gnewslist.get(i).getOsp_news_datatitle());
				js.put("osp_news_content1", gnewslist.get(i).getOsp_news_content1());
				js.put("osp_news_content2", gnewslist.get(i).getOsp_news_content2());
				js.put("osp_news_content3", gnewslist.get(i).getOsp_news_content3());
				js.put("osp_news_content4", gnewslist.get(i).getOsp_news_content4());
				js.put("osp_news_pic1", gnewslist.get(i).getOsp_news_pic1());
				js.put("osp_news_pic2", gnewslist.get(i).getOsp_news_pic2());
				js.put("osp_news_pic3", gnewslist.get(i).getOsp_news_pic3());
				js.put("osp_news_pic4", gnewslist.get(i).getOsp_news_pic4());
				js.put("osp_news_date", gnewslist.get(i).getOsp_news_date().toString());
				js.put("osp_news_origin", gnewslist.get(i).getOsp_news_origin());
				jarr.add(js);
			}
			json.put("gameNewsBasic", jarr);
			PrintWriter out = response.getWriter();
			response.setContentType("application/json; charset=utf-8");
			out.print(json.toJSONString());
			out.flush();
			out.close();	
		}		
	
	/* ************* End********************/	
	
	
	/* ************여행영역* ************/	

	@RequestMapping(value="travelnewslist.go",method=RequestMethod.GET)
	public void travelNewsDataThrows(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TravelNews에 관한 정보를 받아오는 메소드 
		//ArrayList<PetNews> pnewslist = (ArrayList<PetNews>) outsidedataService.petNewsDataThrows();
		ArrayList<TravelNews> travellist  = (ArrayList<TravelNews>) outsidedataService.travelNewsDataThrows();
		

		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(int i=0; i<travellist.size(); i++) {
			JSONObject js = new JSONObject();		
			js.put("osp_news_datano", travellist.get(i).getOsp_news_datano());
			js.put("osp_news_data", travellist.get(i).getOsp_news_data());
			js.put("osp_news_datatitle", travellist.get(i).getOsp_news_datatitle());
			js.put("osp_news_content1", travellist.get(i).getOsp_news_content1());
			js.put("osp_news_content2", travellist.get(i).getOsp_news_content2());
			js.put("osp_news_content3", travellist.get(i).getOsp_news_content3());
			js.put("osp_news_content4", travellist.get(i).getOsp_news_content4());
			js.put("osp_news_pic1", travellist.get(i).getOsp_news_pic1());
			js.put("osp_news_pic2", travellist.get(i).getOsp_news_pic2());
			js.put("osp_news_pic3", travellist.get(i).getOsp_news_pic3());
			js.put("osp_news_pic4", travellist.get(i).getOsp_news_pic4());
			js.put("osp_news_date", travellist.get(i).getOsp_news_date().toString());
			js.put("osp_news_origin", travellist.get(i).getOsp_news_origin());
			jarr.add(js);
		}
		json.put("travelNewsAll", jarr);
		PrintWriter out = response.getWriter();
		response.setContentType("application/json; charset=utf-8");
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("travelnewsdetail.go") //여행 뉴스 상세보기 
	public ModelAndView TravelNewsDetail(@RequestParam("newspk") String travel_pk,ModelAndView mv) {
		int travelpk = Integer.parseInt(travel_pk); //넘어온 파라미터를 파싱작업

		TravelNews tn = outsidedataService.travelNewsDetail(travelpk);
		mv.addObject("selectNews", tn);
		mv.setViewName("A2.JUJ/OutSideInFormation");
		
		return mv;		
	}	
	
	
	
	
	
	/* ************* End********************/	
	
	
	
	
	
	
}
















