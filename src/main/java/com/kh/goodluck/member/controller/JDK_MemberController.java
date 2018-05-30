package com.kh.goodluck.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class JDK_MemberController {
	@Autowired
	private MemberService memberService;
	//회원 가입 관련 메소드
	//회원 가입 버튼 누를 시 회원 가입 창으로 보내는 메소드
		@RequestMapping(value="jdkregistration.go", method=RequestMethod.GET)
		public String signIn() {
			return "A3.JDK/registration";
		}
		//약관 링크 버튼 누를 시 링크모달 띄우는 메소드
		@RequestMapping(value="jdktermsofservice.go", method=RequestMethod.GET)
		public String serviceTerms() {
			return "A3.JDK/termsOfService";
		}
		
		//아이디 중복검사용 메소드
		@RequestMapping(value="jdkIdConfirmation.go", method=RequestMethod.POST)
		public void idcheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
			System.out.println(request.getParameter("id"));
			response.setContentType("text/html;charset=utf-8");
		      PrintWriter out = response.getWriter();
		      if(memberService.idConfirm(request.getParameter("id"))==true) {
		         out.append("true");
		         out.flush();         
		      }else {
		         out.append("false");
		         out.flush();
		      }
		      out.close();
			
		}
		
	/*	//이메일 인증용 메소드
		@RequestMapping(value="emailConfirm.go", method=RequestMethod.POST)
		public String emailConfirmation(HttpServletRequest request,HttpServletResponse response) throws IOException{
			  String setfrom = "darenchun92@gmail.com";
		      String member_id = request.getParameter("member_id");
		      String tomail = request.getParameter("toemail"); // 받는 사람 이메일
		      
			  // String title = request.getParameter("title"); // 제목
		      // String content = request.getParameter("content"); // 내용

		      // 해당 이메일이 유저가 입력한 이메일인지 아닌지 검사 -> id로 체크
		      // 입력한 이메일이면 이메일 보냄
		      // 아니면 입력한 이메일이 아니라고 alert 띄워줌
		      //따로 만들어야 하는 메소드
			  Member emailCheck = memberService.emailCheckMethod(tomail);
		      System.out.println("emailCheck = " + emailCheck);
		      PrintWriter out = response.getWriter();
		      ///////////////////////////////
		      if(emailCheck != null){
		         System.out.println("setfrom = " + setfrom);
		         System.out.println("member_id = " + member_id);
		         System.out.println("tomail = " + tomail);
		         System.out.println("16진수 : " + stringToHex0x(member_id));
		         
		          try { 
		             //MimeMessage message = mailSender.createMimeMessage(); 
		             //MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		             HtmlEmail email = new HtmlEmail();
		             
		             email.setCharset("UTF-8"); // 한글 인코딩 
		             email.setHostName("smtp.gmail.com"); //SMTP서버 설정
		             email.setAuthenticator(new DefaultAuthenticator("pjlee9212", "Asdf1020?")); //메일인증  
		             email.setSmtpPort(587);  //포트번호
		             email.setSSL(true);   //모르겠음
		             email.setTLS(true);
		             email.setDebug(true);
		             email.addTo(tomail, "유저"); //
		             email.setFrom("pjlee9212@gmail.com", "관리자"); //보내는이
		             email.setSubject("회원가입 이메일 인증"); // 메일 제목
		             //messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
		             //messageHelper.setTo(tomail); // 받는사람 이메일
		             //messageHelper.setSubject("비밀번호 재설정 메일 발송"); // 메일제목은 생략이 가능하다title
		             String msg = "";
		             msg += "<div align='center' style='border:1px solid black;'>";
		             msg += "<h3>하단의 인증 버튼 클릭 시 비밀번호 재설정이 가능해집니다.</h3>";
		             msg += "<form method='post' action='http://localhost:9999/goodluck/lbjmoveResetFwdView.go'>";
		             msg += "<input type='hidden' name='member_id' value='"+ member_id +"'>";
		             msg += "<input type='hidden' name='emailCheck' value='true'>";
		             msg += "<input type='submit' value='인증하기'><br><br>";
		             msg += "</form></div>";
		             //messageHelper.setText(msg); // 메일 내용
		            // messageHelper.set
		             
		             email.setHtmlMsg(msg);
		             email.send();
		             
		             //mailSender.send(message); 
		             //이메일 제대로 발송했는지 유무를 알고 싶습니다.
		             out.write("메일 발송 성공!");
		             out.flush();
		             out.close();
		             
		          } catch (Exception e) { 
		             System.out.println(e); 
		          }
		       
		      }else {
		         out.write("메일 발송 실패!");
		         out.flush();
		         out.close();
		      }
		      return "#"; redirect:mailForm.go 

		}*/
		//어드민 페이지 관련 메소드
		//어드민 페이지 이동용 메소드
		@RequestMapping(value="jdkadminpage.go", method=RequestMethod.GET)
		public String adminpage() {
			return "A3.JDK/admin_listofmembers";
		}
		//어드민 페이지 회원관리 창 이동용 메소드
		@RequestMapping(value="", method=RequestMethod.GET)
		public String adminMemberManagement() {
			return "A3.JDK/admin_main";
		}
		//어드민 페이지 아이템 창 이동용 메소드
		@RequestMapping(value="jdkadminitemlist.go", method=RequestMethod.GET)
		public String adminItemManagement() {
			return "A3.JDK/admin_itemlist";
		}
		
}
