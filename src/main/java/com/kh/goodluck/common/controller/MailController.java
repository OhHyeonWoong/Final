package com.kh.goodluck.common.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;

//병준이가 만든 컨트롤러
@Controller
public class MailController {
	/*
	 * @Autowired private JavaMailSender mailSender;
	 */

	// mailForm /mail/mailForm
	/*
	 * @RequestMapping(value = "mailForm.go") public String mailForm() { return
	 * "home"; }
	 */
	@Autowired
	private MemberService memberService;

	// mailSending 코드 (비밀번호 재설정)
	@RequestMapping(value = "lbjmailSending.go", method = RequestMethod.POST)
	public String mailSending(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String setfrom = "pjlee9212@gmail.com";
		String member_id = request.getParameter("member_id");
		String tomail = request.getParameter("toemail"); // 받는 사람 이메일
		// String title = request.getParameter("title"); // 제목
		// String content = request.getParameter("content"); // 내용

		// 해당 이메일이 유저가 입력한 이메일인지 아닌지 검사 -> id로 체크
		// 입력한 이메일이면 이메일 보냄
		// 아니면 입력한 이메일이 아니라고 alert 띄워줌
		Member emailCheck = memberService.emailCheckMethod(tomail);
		System.out.println("emailCheck = " + emailCheck);
		PrintWriter out = response.getWriter();
		///////////////////////////////
		if (emailCheck != null) {
			System.out.println("setfrom = " + setfrom);
			System.out.println("member_id = " + member_id);
			System.out.println("tomail = " + tomail);
			System.out.println("16진수 : " + stringToHex0x(member_id));

			try {
				// MimeMessage message = mailSender.createMimeMessage();
				// MimeMessageHelper messageHelper = new MimeMessageHelper(message, true,
				// "UTF-8");
				HtmlEmail email = new HtmlEmail();

				email.setCharset("UTF-8"); // 한글 인코딩
				email.setHostName("smtp.gmail.com"); // SMTP서버 설정
				email.setAuthenticator(new DefaultAuthenticator("pjlee9212", "Asdf1020?")); // 메일인증
				email.setSmtpPort(587); // 포트번호
				email.setSSL(true); // 모르겠음
				email.setTLS(true);
				email.setDebug(true);
				email.addTo(tomail, "유저"); //
				email.setFrom("pjlee9212@gmail.com", "관리자"); // 보내는이
				email.setSubject("비밀번호 재설정 메일 발송"); // 메일 제목
				// messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
				// messageHelper.setTo(tomail); // 받는사람 이메일
				// messageHelper.setSubject("비밀번호 재설정 메일 발송"); // 메일제목은 생략이 가능하다title
				String msg = "";
				msg += "<div align='center' style='border:1px solid black;'>";
				msg += "<h3>하단의 인증 버튼 클릭 시 비밀번호 재설정이 가능해집니다.</h3>";
				msg += "<form method='post' action='http://localhost:9999/goodluck/lbjmoveResetFwdView.go'>";
				msg += "<input type='hidden' name='member_id' value='" + member_id + "'>";
				msg += "<input type='hidden' name='emailCheck' value='true'>";
				msg += "<input type='submit' value='인증하기'><br><br>";
				msg += "</form></div>";
				// messageHelper.setText(msg); // 메일 내용
				// messageHelper.set

				email.setHtmlMsg(msg);
				email.send();

				// mailSender.send(message);
				// 이메일 제대로 발송했는지 유무를 알고 싶습니다.
				out.write("메일 발송 성공!");
				out.flush();
				out.close();

			} catch (Exception e) {
				System.out.println(e);
			}

		} else {
			out.write("메일 발송 실패!");
			out.flush();
			out.close();
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

	@RequestMapping(value = "lbjConfirmMailSending.go")
	public void confirmMailSending(HttpServletResponse response) throws IOException {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			int confirmNum = (int) (Math.random() * 9) + 1;
			sb.append(confirmNum);
		}
		System.out.println("confirmMailSending sb = " + sb);
		// 돌려주기
		JSONObject jObj = new JSONObject();
		jObj.put("confirmNum", sb);
		// if() { 발송 성공 유무 체크
		jObj.put("message", "발송성공");
		// }
		JSONArray jarr = new JSONArray();
		jarr.add(jObj);
		JSONObject jObj1 = new JSONObject();
		jObj1.put("confirmResult", jarr);
		PrintWriter out = response.getWriter();
		out.print(jObj1.toJSONString());
		out.flush();
		out.close();
	}

	@RequestMapping(value = "updateEmailSending.go", method = RequestMethod.POST)
	public void updateEmailConfirm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String setfrom = "pjlee9212@gmail.com";
		String tomail = request.getParameter("member_email"); // 받는 사람 이메일
		// 입력한 이메일이면 이메일 보냄
		try {
			HtmlEmail email = new HtmlEmail();
			email.setCharset("UTF-8"); // 한글 인코딩
			email.setHostName("smtp.gmail.com"); // SMTP서버 설정
			email.setAuthenticator(new DefaultAuthenticator("pjlee9212", "Asdf1020?")); // 메일인증
			email.setSmtpPort(587); // 포트번호
			email.setSSL(true); // 모르겠음
			email.setTLS(true);
			email.setDebug(true);
			email.addTo(tomail, "회원정보 변경"); //
			email.setFrom("pjlee9212@gmail.com", "독신사"); // 보내는이
			email.setSubject("독신사 회원정보수정용 인증번호 발송"); // 메일 제목
			// 보낼 난수 생성
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < 6; i++) {
				int confirmNum = (int) (Math.random() * 9) + 1;
				sb.append(confirmNum);
			}
			String msg = "";
			msg += "<div align='center'>";
			msg += "<h2>이메일 인증 번호 입니다.</h2>";
			msg += "<h2>" + sb + "</h2>";
			msg += "</div>";

			email.setHtmlMsg(msg);
			email.send();
			// mailSender.send(message);
			// 이메일 제대로 발송했는지 유무를 알고 싶습니다.
			// 돌려주기
			JSONObject jObj = new JSONObject();
			jObj.put("confirmNum", sb);
			// if() { 발송 성공 유무 체크
			jObj.put("message", "발송성공");
			// }
			JSONArray jarr = new JSONArray();
			jarr.add(jObj);
			JSONObject jObj1 = new JSONObject();
			jObj1.put("confirmResult", jarr);
			PrintWriter out = response.getWriter();
			out.print(jObj1.toJSONString());
			out.flush();
			out.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}