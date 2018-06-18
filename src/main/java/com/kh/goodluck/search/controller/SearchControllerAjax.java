package com.kh.goodluck.search.controller;

public class SearchControllerAjax {
	
	/*@SuppressWarnings("unchecked")
	@RequestMapping(value = "headerSearchAjax.go", method = RequestMethod.POST)
	public void searchReload(HttpServletResponse response, HttpServletRequest request, 
			@RequestParam("searchKeyword") String searchKeyword) throws IOException {
		
		System.out.println("SendKeyword : " + searchKeyword + " / To.SearchController");
		
		HashMap<Object,Object> map = new HashMap<Object,Object>();	   
			map.put("agency_title", searchKeyword);
			List<Search> list = searchService.searchKeyword(searchKeyword, pageStart, pageEnd);
			JSONArray jarr = new JSONArray();			
			
			for(Search search : list) {
				 추출한 test를 json 객체에 담기 
				JSONObject job = new JSONObject();
				job.put("agency_no", search.getAgency_no());
				job.put("agency_writer", search.getAgency_writer());
				job.put("agency_title", search.getAgency_title());
				job.put("link2_no", search.getLink2_no());
				job.put("agency_type", search.getAgency_type());
				job.put("agency_loc", search.getAgency_loc());
				job.put("agency_startdate", search.getAgency_startdate().toString());
				job.put("agency_enddate", search.getAgency_enddate().toString());
				job.put("agency_enrolldate", search.getAgency_enrolldate().toString());
				job.put("agency_paytype", search.getAgency_paytype());
				job.put("agency_pay", search.getAgency_pay());
				job.put("agency_status", search.getAgency_status());
				job.put("agency_content", search.getAgency_content());
				job.put("agency_views", search.getAgency_views());
				job.put("agency_keyword", search.getAgency_keyword());
				job.put("agency_option", search.getAgency_option());
				
				jarr.add(job);
			}
			JSONObject json = new JSONObject();
			json.put("searchList", jarr);
			response.setContentType("application/json; charset=UTF-8");			
			PrintWriter out = response.getWriter();
			out.append(json.toJSONString());
			out.flush();
			out.close();		
	}*/
}
