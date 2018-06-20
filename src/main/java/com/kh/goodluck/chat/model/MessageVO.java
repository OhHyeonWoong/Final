package com.kh.goodluck.chat.model;

import com.google.gson.Gson;

public class MessageVO {
	
	private String message;
	private String type;
	private String to;
	
	
	public static MessageVO converMessage(String source) {
	    MessageVO message = new MessageVO();
	    Gson gson = new Gson();
	    message = gson.fromJson(source, MessageVO.class);
	 
	    return message;
	}


	public String getMessage() {
		return message;
	}


	public String getType() {
		return type;
	}


	public String getTo() {
		return to;
	}
	
	

}
