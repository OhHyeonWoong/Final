package com.kh.goodluck.kakaoAPI;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.kh.goodluck.board.model.vo.KaKaoMessage;

public class KaKaoToken extends Thread{
	private String boardtitle;
	private String message;
	private String token;
	private int boardno;
	private String MEMBER_PHONE;
public KaKaoToken() {
	// TODO Auto-generated constructor stub
}
public KaKaoToken(KaKaoMessage kakaomessage) {
	// TODO Auto-generated constructor stub
this.boardtitle=kakaomessage.getBoardtitle();
this.message=kakaomessage.getMessage();
this.token=kakaomessage.getToken();
this.boardno=kakaomessage.getBoardno();
this.MEMBER_PHONE=kakaomessage.getMEMBER_PHONE();
}
    private void refreshtoken() {
	//엑세스토큰을 값으로 가져와야한다.@RequestParam("token") String access
    System.out.println("카카오 메세지보내기");
	String result =null;
	String BASE_URL="https://kapi.kakao.com";
	try{
		System.out.println(boardtitle);
		System.out.println(message);
		System.out.println(token);
		System.out.println(boardno);
	    JSONObject linkObject =new JSONObject();
	    linkObject.put("web_url","http://127.0.0.1:9999/goodluck/DealingState1.go?BoardNo="+boardno);
	    linkObject.put("mobile_web_url","http://127.0.0.1:9999/goodluck/DealingState1.go?BoardNo="+boardno);
	    linkObject.put("android_execution_params","contentId=100");
	    linkObject.put("ios_execution_params","contentId=100");
	    JSONObject contentObject =new JSONObject();
	    contentObject.put("title",boardtitle);
	    contentObject.put("description",message);
	    contentObject.put("image_url","http://drive.google.com/uc?export=view&id=1lMJigz3gVm0Y-UB2ZGGoKzmEBMt0yUc_");
	    contentObject.put("image_width",640);
	    contentObject.put("image_height",640);
	    contentObject.put("link",linkObject);
	    JSONObject mainObject =new JSONObject();
	    mainObject.put("object_type", "feed");
	    mainObject.put("content",contentObject);
	    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
	    map.add("template_object", mainObject.toString());
	    final String URL ="/v2/api/talk/memo/default/send";
	    RestTemplate restTemplate = new RestTemplate(); //tlqkf...
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
	    headers.add("Authorization", "Bearer "+token);
	    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
	    converters.add(new FormHttpMessageConverter());
	    converters.add(new StringHttpMessageConverter());
	    converters.add(new MappingJackson2HttpMessageConverter());
	    restTemplate.setMessageConverters(converters);

		HttpEntity<MultiValueMap<String, String>> requestEntity=  new HttpEntity<MultiValueMap<String, String>>(map, headers);
		result =  restTemplate.exchange(BASE_URL + URL , HttpMethod.POST, requestEntity, String.class).toString();
	    System.out.println(result);
	    }catch (Exception e) {
	    System.out.println(e.getMessage());    	
	    }
   } 
 




}
