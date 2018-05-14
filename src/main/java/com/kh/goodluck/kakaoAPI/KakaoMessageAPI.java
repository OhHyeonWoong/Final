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
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class KakaoMessageAPI {
public KakaoMessageAPI() {
	// TODO Auto-generated constructor stub
}

@RequestMapping("kakaoMessage.go")
public void reree() {
	//엑세스토큰을 값으로 가져와야한다.@RequestParam("token") String access
   System.out.println("메세지보내기");
	String result =null;
	String BASE_URL="https://kapi.kakao.com";
	try{
	    JSONObject linkObject =new JSONObject();
	    
	    linkObject.put("web_url","http://www.daum.net");
	    linkObject.put("mobile_web_url","http://m.daum.net");
	    linkObject.put("android_execution_params","contentId=100");
	    linkObject.put("ios_execution_params","contentId=100");
		
	    JSONObject contentObject =new JSONObject();
	    contentObject.put("title", "타이틀");
	    contentObject.put("description","메세즤");
	    contentObject.put("image_url","http://cfile2.uf.tistory.com/image/2121463B523B254B090323");
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
	    headers.add("Authorization", "Bearer L37KvPlk-u0fM9ZFx6cAeEhHKJgit0b9la5M9Qo8BJ4AAAFjXB9kXw");

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
