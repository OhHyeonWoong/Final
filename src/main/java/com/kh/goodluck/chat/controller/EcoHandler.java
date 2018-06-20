package com.kh.goodluck.chat.controller;
 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.goodluck.chat.model.MessageVO;
import com.kh.goodluck.chat.model.SessionUser;
 
public class EcoHandler extends TextWebSocketHandler{
 
    private Logger logger = LoggerFactory.getLogger(EcoHandler.class);
    /**
     * 서버에 연결한 사용자들을 저장하는 리스트
     */
    private List<SessionUser> connectedUsers;
     
    private Map<String,WebSocketSession> mapUser;
    
    
    
    public EcoHandler() {
        connectedUsers = new ArrayList<SessionUser>();
        mapUser = new HashMap<>();
      
    }
     
    /**
     * 접속과 관련된 Event Method
     *
     * @param WebSocketSession 접속한 사용자
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        //connectedUsers.add(new SessionUser("DEFAULT",session));
        
    	
        logger.info(session.getId());
        logger.info("연결 IP : " + session.getRemoteAddress().getHostName());
  
    }
 
    /**
     * 두 가지 이벤트를 처리
     *
     * 1. Send : 클라이언트가 서버에게 메시지를 보냄
     * 2. Emit : 서버에 연결되어 있는 클라이언트에게 메시지를 보냄
     *
     * @param WebSocketSession 메시지를 보낸 클라이언트
     * @param TextMessage 메시지의 내용
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
         
    	
    	MessageVO messageVo = MessageVO.converMessage(message.getPayload());
    	
    	SessionUser CurrentSessionUser =null;
    	
    	if(messageVo.getType().equals("join")){
    		
    		mapUser.put(messageVo.getTo(), session);
    		//essageVo.getTo()=>오너아이디.
    		System.out.println("messageVo.getTo()="+messageVo.getTo());
    		System.out.println("session="+session);
    		connectedUsers.add(new SessionUser(messageVo.getTo(),session)); //실제 조인이 들어오면 저장함.
    		
    	}
    	
        for (SessionUser sessionUser : connectedUsers) {
        	
        	if(messageVo.getType().equals("join")){
        		
        		sessionUser.getSession().sendMessage(new TextMessage(messageVo.getTo() + "님이 접속하였습니다."));
        	}
        }
        
        if(messageVo.getType().equals("one")) {
    		
    		WebSocketSession sessioned = mapUser.get(messageVo.getTo());
    		if ( sessioned != null) {
	    		logger.info("원ㅇㅇㅇㅇㅇㅇㅇㅇ:"+session.getId());
	    	
	    		//보내는사람
	    session.sendMessage(new TextMessage(messageVo.getMessage()));
	    		//받는사람
	    sessioned.sendMessage(new TextMessage(messageVo.getMessage()));
    		} else {
    		
    			session.sendMessage(new TextMessage("상대가 존재하지않습니다"));
    			//이럴경우 상대방의 정보의 폰번호로 문자를 날린다.
    		}
    	}
        
        logger.info(session.getId() + "님의 메시지 : " + message.getPayload());
        //System.out.println(session.getId() + "님의 메시지 : " + message.getPayload());
    }
 
    /**
     * 클라이언트가 서버와 연결을 끊었을때 실행되는 메소드
     *
     * @param WebSocketSession 연결을 끊은 클라이언트
     * @param CloseStatus 연결 상태(확인 필요함)
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	
    	
    	//connectedUsers.remove(new SessionUser("dd",session)); 이건나중에 ㄱㄱ
       
    	/*for(SessionUser sessionUser : connectedUsers) {
    		
    		sessionUser.getSession().sendMessage(new TextMessage(sessionUser.getTo() + "님이 퇴장했습니다."));	
    		if(sessionUser.equals(session)) {
    			logger.info(sessionUser.getTo() + "님이 퇴장했습니다.");
    	        System.out.println(sessionUser.getTo() + "님이 퇴장했습니다.");
    		}
    	}*/
        logger.info(session.getId() + "님이 퇴장했습니다.");
        System.out.println(session.getId() + "님이 퇴장했습니다.");
    }
}
