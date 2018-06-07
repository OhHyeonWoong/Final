package com.kh.goodluck.member.controller;

import java.io.File;
import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.DefaultNamingPolicy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;
import com.kh.goodluck.member.model.service.MemberService;
import com.kh.goodluck.member.model.vo.Member;
import com.kh.goodluck.member.model.vo.MemberList;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import oracle.net.aso.b;
import oracle.net.aso.d;

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
		//약관 링크 버튼 누를 시 회원약관 띄우는 메소드
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
		             email.setSSL(true); //나도 모르겠음...
		             email.setTLS(true);// 더 모르겠음...
		             email.setDebug(true);//디버깅?
		             
		             email.addTo(tomail, "신규회원가입"); //받는이 같음(입력 받은 값을 주소로 하는...)
		             email.setFrom("darenchun92@gmail.com", "독신사"); //보내는이
		             email.setSubject("회원가입 이메일 인증"); // 메일 제목
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
	                 email.setHtmlMsg(msg);
		             email.send();
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
		
		
		//회원가입 메소드
		@Autowired(required = false)
		@RequestMapping(value="jdkmemberregist.go", method = RequestMethod.POST)
		public void signIn(HttpServletResponse response, HttpServletRequest request, Member member,MultipartRequest mr, @RequestParam("member_profile") MultipartFile mf) throws Exception {
			//회원을 입력하기 위해서 결론적으로 Member 객체를 완성한 이후에 쿼리문에서 전송하여 올릴 것이므로...
			//최종적으로 Member 객체를 완성시키는 형식으로 진행
			//아이디 받아오기
			String memberId=request.getParameter("member_id");
			//이름 가지고 오기
			String memberName=request.getParameter("member_name");
			//비밀 번호 받아오기
			// 나중에 암호화 작업을 여기에 추가할 것
			String memberPwd=request.getParameter("member_pw");
			//주소 가지고 오기
			String memberAdd=request.getParameter("member_address1")+" "+request.getParameter("member_address2");
			//전화번호 가지고 오기
			String memberPhone=request.getParameter("member_phone");
			//이메일 가지고 오기
			String memberEmail=request.getParameter("member_email");
			
			//주민등록번호 가지고 오기
			int memberSocialNum=Integer.parseInt(request.getParameter("member_social_front")+request.getParameter("member_social_end"));
////////////////////프로필 사진 가지고 오는 메소드(추후 이름 값을 현재 시간단위로 바꾸고 변수로 올리는 방식으로 수정 : 파일 업로드 처리)////////////
				/*
				 * 
				 우선 필요한 값을 정리해보자
				a. 내가 파일을 저장할 장소에 대한 path
				b. 파일명을 가지고 와야하고 그 과정에서
				c. img, png를 제외한 값은 올라가면 안되며
				d. 이미지 이름 값을 중복되지 않도록, 그리고 실제 저장되는 이름과 같이 변환하는 과정을 거쳐야 한다
					(파일 업로드가 이루어지는 밀리초 단위까지의 스트링값으로 지정)
				*/
			try {
			//1.파일명 확보(파일이 있으면 이름이 넘어오고, 아니면 ""->빈 스트링값이 있을 겁니다.
			String profile=mf.getOriginalFilename();
			System.out.println("파일이름은?: "+profile);
			//2.우리가 DB에 저장하고 싶은 파일명이 결정되는 구간입니다.
			if(profile.equals("")) {
				//만약 파일을 올리지 않았으면 이름에 "" 값만 있을 것이기 때문에
				//내가 디폴트로 잡아놓은 이름값을 넣어주면 됨 //디폴드 이미지의 이름 값을 vo에 넣어줍니다.
				profile = "base_profile.png";
				member.setMember_renamephoto(profile);
				//이제 해야 할 일은 실제로 파일을 받아서 그 파일 이름을 변환하고 내가 원하는 장소에 저장을 시켜야 합니다. 
				//하지만 기본 이미지를 사용하는 경우에는 모두 같은 공용파일을 사용하여 파일 이름의 구분이 필요없고
				//그 파일이 이미 있기 때문에 업로딩 처리를 할 필요는 없다는 말이 됩니다.
			}else if (!profile.equals("")) {
				//하지만 만약 어떤 사람이 파일을 올렸을 경우에는 실제 우리 DB에 들어가는 중복되지 않는 이름으로 변환되는 과정이 필요합니다.
				//해당 과정이 아래에 있습니다.
				//현재 시간을 밀리초단위로 구한 스트링 값을 이름으로 사용합니다.
				Date currentMillsec= new Date();
				String profile_rename=Long.toString(currentMillsec.getTime());
				//사용자가 사용한 파일의 확장자를 포함해야하기 때문에 그 확장자를 잘라서 가지고 옵니다.
				profile=profile.substring(profile.lastIndexOf("."), profile.length());
				//두 스트링 값을 합해서 setter로 vo 객체에 직접 넣습니다.
				String rename=profile_rename+profile;
				member.setMember_renamephoto(rename);
				//자... 이제 DB와 실제 저장될 이미지의 이름을 구하는 과정이 끝이 났습니다.
				//이제는 실제 파일의 이름을 우리가 지정한 'rename'으로 고쳐주고
				//원하는 위치에 지정하여 저장을 해주면 됩니다.
				//얘는 딱히 지금은 쓸 필요가 없습니다.
				//PrintWriter out = response.getWriter();
				//우선 파일을 가지고 오는데 이미 메소드를 실행할 때 파라미터 값을 이용해서 파일을 가지고 온 값이 있습니다.
				//파일 저장 경로 지정
				String fileSavePath= "/goodluck/resources/A3.JDK/images/userprofile";
				//파일 크기 제한
				int uploadSizeLimit = 10*1024*1024;//10메가 제한...????
				//encType = "multiPartForm"으로 왔는지 확인
				String encType="UTF-8"; // 파일 인코딩 방식????
				if(!ServletFileUpload.isMultipartContent(request)) {
					response.sendRedirect("A5.CJS/ErrorPage");
				}
				//이게 뭔말이지?
				ServletContext context = request.getSession().getServletContext();
				//실제 저장 경로????
				String uploadPath = context.getRealPath("fileSavePath");
				//MultipartRequest 선언을 통한 실제 업로딩
				mf.getOriginalFilename(); 
				File f = new File(fileSavePath+"\\"+rename);
				mf.transferTo(f);
			}
			
		} catch(Exception e) {
				e.printStackTrace();
		}
			//////////////////////////////////////////////////////////////////			
			//멤버 객체 직접 완성
			member.setMember_id(memberId);	
			member.setMember_name(memberName);
			member.setMember_pw(memberPwd);
			member.setMember_address(memberAdd);
			member.setMember_phone(memberPhone);
			member.setMember_email(memberEmail);
			member.setMember_regident_number(memberSocialNum);
			
			//나머지 필요요소는 쿼리문에서 직접 작성함
			//이제 서비스 타고 실제 회원 가입 진행
			int enrollment=memberService.memberEnroll(member);
			
		try {
			//회원 가입이 완료되었을 경우
			if(enrollment==1) {
				String mess="회원가입이 완료 되었습니다.";
				request.setAttribute("message", mess);
				request.getRequestDispatcher("home").forward(request, response);
			//회원가입이 안됬을 경우	
				}else{
				String mess="회원 가입이 실패하였습니다.";
				request.setAttribute("message", mess);
				request.getRequestDispatcher("home").forward(request, response);
				
			}
		}catch(Exception e) {
			
			}
		}
		//어드민 페이지 관련 메소드
		//어드민 페이지 이동용 메소드
		@RequestMapping(value="jdkadminpage.go")
		public String adminpage() {
			return "A3.JDK/admin_listofmembers";
		}
		//어드민 페이지 회원관리 창 이동용 메소드
		@RequestMapping(value="jdkadminmember.go")
		public String adminMemberManagement(Model model) {
			List<MemberList>list= memberService.adminMemberList();
			return "A3.JDK/admin_listofmembers";
		}
		//어드민 페이지 아이템 창 이동용 메소드
		@RequestMapping(value="jdkadminitemlist.go")
		public String adminItemManagement() {
			return "A3.JDK/admin_itemlist";
		}
				
}
