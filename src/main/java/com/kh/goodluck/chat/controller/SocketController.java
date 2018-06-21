package com.kh.goodluck.chat.controller;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.goodluck.board.model.service.BoardService;
import com.kh.goodluck.board.model.vo.Board;
import com.kh.goodluck.board.model.vo.KaKaoMessage;
import com.kh.goodluck.chat.model.Chat;
import com.kh.goodluck.chat.model.ChatDetail;
import com.kh.goodluck.kakaoAPI.KakaoMessageAPI;
import com.kh.goodluck.kakaoAPI.renew;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.Memberandscore;

@Controller
@SessionAttributes("loginUser")
public class SocketController {
    public SocketController() {
		// TODO Auto-generated constructor stub
	}
    
    @Autowired
	private BoardService boardservice;
   
	private KakaoMessageAPI thread;

	
	private renew Retoken = new renew();
	
	@Autowired
	private MemberService memberService;
	
	
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
 
    @RequestMapping("sendmonja.go")
    public void sendmessagetoother(@RequestParam("memberid") String member,@RequestParam("pk") int pk) {
    KaKaoMessage KaKaoMessage=new KaKaoMessage();
    Memberandscore writer=memberService.getmemberinfobymemberid(member);	//<<-게시글의 작성자 정보추출 	
	try {
	   if(writer.getMember_accesstoken().equals("")) {
			writer.setMember_accesstoken("22");
			writer.setMember_refreshtoken("22");
			}
		} catch (NullPointerException e) {
		writer.setMember_accesstoken("22");
		writer.setMember_refreshtoken("22");
        }
		KaKaoMessage.setToken(Retoken.renewaccessToken(writer.getMember_refreshtoken()));
		if(!writer.getMember_accesstoken().equals("22")) {
		HashMap<Object,Object> map2=new HashMap<Object,Object>(); 
		map2.put("key",KaKaoMessage.getToken());
		map2.put("memberid",writer.getMember_id());
		memberService.updateaccessToken(map2);
    }
	Board bo=boardservice.getBoardInfoByNo(pk);
	KaKaoMessage.setMessage(writer.getMember_name()+"님에게 새로운 채팅이 왔습니다!");
    KaKaoMessage.setBoardno(bo.getAgency_no());
    KaKaoMessage.setMEMBER_PHONE(writer.getMember_phone());
	thread=new KakaoMessageAPI(KaKaoMessage);
	thread.start();
     }
}
