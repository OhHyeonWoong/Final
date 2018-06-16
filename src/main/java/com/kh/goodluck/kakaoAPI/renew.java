package com.kh.goodluck.kakaoAPI;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
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

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class renew {
public renew() {
	// TODO Auto-generated constructor stub
}  

    public String renewaccessToken(String reflashToken) {
	//카카오 토큰 갱신
	List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
    converters.add(new FormHttpMessageConverter());
    converters.add(new StringHttpMessageConverter());
    RestTemplate restTemplate = new RestTemplate();
    restTemplate.setMessageConverters(converters);
    // parameter 세팅
    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
    map.add("grant_type", "refresh_token");
    map.add("client_id", "bf5af5f0ced1be9895cf0308cdc121a4");
    map.add("refresh_token", reflashToken);
    // REST API 호출
    String acctoken="";
 try {
	    String result = restTemplate.postForObject("https://kauth.kakao.com/oauth/token", map, String.class);
	    System.out.println("------------------ TEST 결과 ------------------");
	    System.out.println(result);
	    acctoken=result.substring(result.indexOf(":")+2,result.indexOf(",")-1);
} catch (Exception e) {
         acctoken="3462dfads";
}

    return acctoken;
    
    
}
}