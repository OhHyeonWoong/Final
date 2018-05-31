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
		
		//이메일 인증용 메소드
		@RequestMapping(value="emailConfirm.go", method=RequestMethod.POST)
		public void emailConfirmation(HttpServletRequest request,HttpServletResponse response) throws IOException{
			  String setfrom = "darenchun92@gmail.com";
		      String tomail = request.getParameter("member_email"); // 받는 사람 이메일
		      // 입력한 이메일이면 이메일 보냄
		      PrintWriter out = response.getWriter();
		      ///////////////////////////////
		      //이메일은 유니크이기 때문에 조회했을 때 나오는 값이 없을 때 메일이 사용가능하다는 것을 알리고,
		      //그 확인 부분이 여기입니다.
		      if(memberService.emailConfirm(request.getParameter("member_email")) == true){
		          try { 
		             //MimeMessage message = mailSender.createMimeMessage(); 
		             //MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		             HtmlEmail email = new HtmlEmail();
		             email.setCharset("UTF-8"); // 한글 인코딩 
		             email.setHostName("smtp.gmail.com"); //SMTP서버 설정
		             email.setAuthenticator(new DefaultAuthenticator("darenchun92", "tnsmd100")); //메일인증  
		             email.setSmtpPort(587); //포트번호
		             email.setSSL(true); //모르겠음
		             email.setTLS(true);
		             email.setDebug(true);
		             email.addTo(tomail, "신규회원가입"); //
		             email.setFrom("darenchun92@gmail.com", "독신사"); //보내는이
		             email.setSubject("회원가입 이메일 인증"); // 메일 제목
		             //messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
		             //messageHelper.setTo(tomail); // 받는사람 이메일
		             //messageHelper.setSubject("비밀번호 재설정 메일 발송"); // 메일제목은 생략이 가능하다
		             //보낼 난수 생성
		             String random="";
		             for(int i= 1; i<6; i++) {
		             int randomNum = (int)(Math.random()*9+1);
		             random+=String.valueOf(randomNum);
		             }
		             String msg = "";
		             msg += "<div align='center'>";
		             msg += "<h2>이메일 인증 번호 입니다.</h2>";
		             msg += "<h2>"+random+"</h2>";
		             msg += "</div>";
	             //messageHelper.setText(msg); // 메일 내용
	            // messageHelper.set
		             email.setHtmlMsg(msg);
		             email.send();
		             //mailSender.send(message); 
		             //이메일 제대로 발송했는지 유무를 알고 싶습니다.
		             out.append(random);
		             out.flush();
		             out.close();
		          } catch (Exception e) { 
		             System.out.println(e); 
		          }
		      }else{
		    	 out.write("메일 발송 실패!");
		         out.flush();
		         out.close();
		      }
		}
		@RequestMapping(value="jdkmemberregist.go", method = RequestMethod.POST)
		public void signIn(HttpServletResponse response, HttpServletRequest request, Member member) throws Exception {
			//회원을 입력하기 위해서 결론적으로 Member 객체를 완성한 이후에 쿼리문에서 전송하여 올릴 것이므로... 최종적으로 Member 객체를 완성시키는 형식으로 진행
			//아이디 받아오기
			String memberId=request.getParameter("member_id");
			//이름 가지고 오기
			String memberName=request.getParameter("member_name");
			//비밀 번호 받아오기
			// 나중에 암호화 작업을 여기에 추가할 것
			String memberPwd=request.getParameter("member_pw");
			//주소 가지고 오기
			String memberAdd=request.getParameter("address1")+" "+request.getParameter("address2");
			//전화번호 가지고 오기
			String memberPhone=request.getParameter("member_phone");
			//이메일 가지고 오기
			String memberEmail=request.getParameter("member_email");
			//프로필 사진 가지고 오는 메소드(추후 이름 값을 현재 시간단위로 바꾸고 변수로 올리는 방식으로 수정)
			String memberProfile="";
			/*String memberProfile=request.getParameter("member_profile");*/
			//주민등록번호 가지고 오기
			int memberSocialNum=Integer.parseInt(request.getParameter("member_social_front")+request.getParameter("member_social_end"));
			
			//멤버 객체 완성
			member.setMember_id(memberId);	
			member.setMember_name(memberName);
			member.setMember_pw(memberPwd);
			member.setMember_address(memberAdd);
			member.setMember_phone(memberPhone);
			member.setMember_renamephoto(memberProfile);
			member.setMember_regident_number(memberSocialNum);
			//나머지 필요요소는 쿼리문에서 직접 작성함
			//이제 서비스 타고 실제 회원 가입 진행
			int enrollment=memberService.memberEnroll(member);
			String mess="회원가입이 완료 되었습니다.";
		try {
			//회원 가입이 완료되었을 경우
			if(enrollment==1) {
				request.setAttribute("message", mess);
				request.getRequestDispatcher("home").forward(request, response);
			//회원가입이 안됬을 경우	
			}else{
				
			}
		}catch(Exception e) {
			
		}
		}
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
