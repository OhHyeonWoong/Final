package com.kh.goodluck.chat.model;

import org.springframework.web.socket.WebSocketSession;

public class SessionUser {

	private String to;
	private WebSocketSession session;
	
	public SessionUser(String to, WebSocketSession session) {
		super();
		this.to = to;
		this.session = session;
	}

	public boolean equals(WebSocketSession session) {
		return this.session.equals(session);
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public WebSocketSession getSession() {
		return session;
	}

	public void setSession(WebSocketSession session) {
		this.session = session;
	}

	@Override
	public String toString() {
		return "to : " +to +"session : " + session;
		
	}
	
	
	
	
}
