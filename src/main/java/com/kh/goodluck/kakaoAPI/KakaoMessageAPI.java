package com.kh.goodluck.kakaoAPI;

import java.util.ArrayList;
import java.util.HashMap;
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

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;



public class KakaoMessageAPI extends Thread{
	private String boardtitle;
	private String message;
	private String token;
	private int boardno;
	private String MEMBER_PHONE;
	public KakaoMessageAPI() {
		// TODO Auto-generated constructor stub
	}
    public KakaoMessageAPI(KaKaoMessage kakaomessage) {
		// TODO Auto-generated constructor stub
    this.boardtitle=kakaomessage.getBoardtitle();
    this.message=kakaomessage.getMessage();
    this.token=kakaomessage.getToken();
    this.boardno=kakaomessage.getBoardno();
    this.MEMBER_PHONE=kakaomessage.getMEMBER_PHONE();
	}
	
  private void sendmessage() {
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
		System.out.println("카카오톡 토큰이 없어서 핸드폰 문자로 보냄.");
     	SendMessage1();
	    }
    } 
  
	@Override
	public void run() {
		sendmessage();
		super.run();
	}
	
	 private void SendMessage1() {
	    String api_key = "NCS87FQQLCV70DUR";
	    String api_secret = "9V3IPM7KEGWYLQJCYMGE3L9WEQ0JZCRG";
	    Message coolsms = new Message(api_key, api_secret);
	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to",MEMBER_PHONE); // 수신번호
	    params.put("from", "01090631039"); // 발신번호
	    params.put("type", "SMS"); // Message type ( SMS, LMS, MMS, ATA )
	    params.put("text", message); // 문자내용   
	    params.put("app_version", "JAVA SDK v1.2"); // application name and version
	    // Optional parameters for your own needs
	    // params.put("image", "desert.jpg"); // image for MMS. type must be set as "MMS"
	    // params.put("image_encoding", "binary"); // image encoding binary(default), base64 
	    // params.put("mode", "test"); // 'test' 모드. 실제로 발송되지 않으며 전송내역에 60 오류코드로 뜹니다. 차감된 캐쉬는 다음날 새벽에 충전 됩니다.
	    // params.put("delay", "10"); // 0~20사이의 값으로 전송지연 시간을 줄 수 있습니다.
	    // params.put("force_sms", "true"); // 푸시 및 알림톡 이용시에도 강제로 SMS로 발송되도록 할 수 있습니다.
	    // params.put("refname", ""); // Reference name
	    // params.put("country", "KR"); // Korea(KR) Japan(JP) America(USA) China(CN) Default is Korea
	    // params.put("sender_key", "5554025sa8e61072frrrd5d4cc2rrrr65e15bb64"); // 알림톡 사용을 위해 필요합니다. 신청방법 : http://www.coolsms.co.kr/AboutAlimTalk
	    // params.put("template_code", "C004"); // 알림톡 template code 입니다. 자세한 설명은 http://www.coolsms.co.kr/AboutAlimTalk을 참조해주세요. 
	    // params.put("datetime", "20140106153000"); // Format must be(YYYYMMDDHHMISS) 2014 01 06 15 30 00 (2014 Jan 06th 3pm 30 00)
	    // params.put("mid", "mymsgid01"); // set message id. Server creates automatically if empty
	    // params.put("gid", "mymsg_group_id01"); // set group id. Server creates automatically if empty
	    // params.put("subject", "Message Title"); // set msg title for LMS and MMS
	    // params.put("charset", "euckr"); // For Korean language, set euckr or utf-8
	    // params.put("app_version", "Purplebook 4.1") // 어플리케이션 버전
	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	}
}

	

