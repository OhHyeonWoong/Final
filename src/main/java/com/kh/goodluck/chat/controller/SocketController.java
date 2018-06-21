package com.kh.goodluck.chat.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.chat.model.ChatDetail;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class SocketController {
    public SocketController() {
		// TODO Auto-generated constructor stub
	}
	@Autowired
	private BoardService boardservice;
   
    @RequestMapping("chat.go")
    public String viewChattingPage() {
    return "A5.CJS/chatting";
    }
    @RequestMapping("paint.go")
    public String viewPaintingPage() {
        return "A5.CJS/chatting";
    }
    
    @RequestMapping("insertchattinglog.go")
	public void insertChattingDetail(ChatDetail cd, HttpServletRequest request ,
			HttpServletResponse response) {
    	
    cd= new ChatDetail();
    cd.setCHATDEATIL_CONTENT(request.getParameter("CONTENT"));
    cd.setCHATDEATIL_MEMBER(request.getParameter("ORDER"));
    cd.setCHATROOM_NO(Integer.parseInt(request.getParameter("NO")));
    System.out.println(cd);
    PrintWriter out = null;
    try {
    	out=response.getWriter();
    System.out.println("resutl="+boardservice.insertintoChatDetail(cd));
	   
	} catch (Exception e) {
		e.printStackTrace();
	}
    out.print(0);
	out.flush();
	out.close();
	}
 
    
    
}
