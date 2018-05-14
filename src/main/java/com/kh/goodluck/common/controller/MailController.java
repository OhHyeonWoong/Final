package com.kh.goodluck.common.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//병준이가 만든 컨트롤러
@Controller
public class MailController {
	@Autowired
	private JavaMailSender mailSender;

	// mailForm /mail/mailForm
	/*
	 * @RequestMapping(value = "mailForm.go") public String mailForm() { return
	 * "home"; }
	 */

	// mailSending 코드
	@RequestMapping(value = "lbjmailSending.go")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "pjlee9212@gmail.com";
		String member_id = request.getParameter("member_id");
		String tomail = request.getParameter("toemail"); // 받는 사람 이메일
		// String title = request.getParameter("title"); // 제목
		// String content = request.getParameter("content"); // 내용

		// MemberService에 가서 해당 이메일이 맞나 테스트 해보고 맞으면 비밀번호 재설정함
		// 아니면 null이나 0 값 리턴.
		// 이메일에 아이디를 16진수로 변환한 값을 파라미터값으로 보내줌
		System.out.println("16진수 : " + stringToHex0x(member_id));
		
		 try { 
			 //MimeMessage message = mailSender.createMimeMessage(); 
			 //MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			 HtmlEmail email = new HtmlEmail();
			 
			 email.setCharset("euc-kr"); // 한글 인코딩 
			 email.setHostName("smtp.gmail.com"); //SMTP서버 설정
			 email.setAuthenticator(new DefaultAuthenticator("pjlee9212", "Asdf1020?")); //메일인증  
			 email.setSmtpPort(587);  //포트번호
			 email.setSSL(true);   //모르겠음
			 email.setTLS(true);
			 email.setDebug(true);
			 email.addTo(tomail, "유저"); //
			 email.setFrom("pjlee9212@gmail.com", "이병준"); //보내는이
			 email.setSubject("비밀번호 재설정 메일 발송"); // 메일 제목
			 //messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			 //messageHelper.setTo(tomail); // 받는사람 이메일
			 //messageHelper.setSubject("비밀번호 재설정 메일 발송"); // 메일제목은 생략이 가능하다title
			 String msg = "";
			 msg += "<div align='center' style='border:1px solid black;'>";
			 msg += "<h3>하단의 인증 버튼 클릭 시 비밀번호 재설정이 가능해집니다.</h3>";
			 msg += "<form method='post'>";
			 msg += "<input type='hidden' value='"+ stringToHex0x(member_id) +"'>";
			 msg += "<input type='button' value='인증하기'>";
			 msg += "</form></div>";
			 //messageHelper.setText(msg); // 메일 내용
			// messageHelper.set
			 
			 email.setHtmlMsg(msg);
			 email.send();
			 
			 //mailSender.send(message); 
		 } catch (Exception e) { 
			 System.out.println(e); 
		 }
		 

		return "home";/* redirect:mailForm.go */
	}

	// 헥사 접두사 "0x" 붙이는 버전
	public static String stringToHex0x(String s) {
		String result = "";

		for (int i = 0; i < s.length(); i++) {
			result += String.format("0x%02X ", (int) s.charAt(i));
		}

		return result;
	}

	@RequestMapping("moveemail.go")
	public String moveEmailPage() {
		return "A6.LBJ/test/mailForm";
	}
}
