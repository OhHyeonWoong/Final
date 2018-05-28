<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQContent</title>
<style type="text/css">	
	.sidebar-box ul {margin:0px; padding:0px;}
	.sidebar-box {background:#16315b; color:#fff; padding-bottom: 600px; }
	.sidebar-box h3 {margin-bottom:20px;}
	.list-links {list-style:none; font-size:16px; font-weight:600; letter-spacig:1px;}	
	.list-links li  {border-top: 1px solid #204372; line-height:38px;margin:0; padding-left:20px}
	.list-links li a { color: #e2e2e2; }
	.list-links li a:hover {text-decoration:none; color: #d6a111; }
	.list-links li:hover {background: #030942; color: #d6a111;}	
	.content-box {background :none; max-height: 819px; overflow: scroll;}
	
	.request_area { /* FAQ질문 div */
	    background: #0a3466;
	    background: -webkit-linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);
	    background: linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);	
		width: 100%;
		height: 95px;
		border: 1px solid gray;
		font-size: 20px;		
		color: white;	
	}
	
	.answer_area1, .answer_area2, .answer_area3, .answer_area4, .answer_area5, .answer_area6, .answer_area7 { 
	/* FAQ답변 div */
		width: 100%;
		height: 95px;
		border: 1px solid gray;
		font-size: 15px;		
		color: black;	
	}
	
	.glyphicon-comment{
		font-size: 19px;
	}
</style>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".use1").on("click",function(){
			alert("use1 버튼을 클릭하셨습니다.");
			$(".section1").hide();
			$(".section2").show();
		});
		
	});
</script>
</head>
<body>
	<div class="container"> <!-- 1170x1966px  -->
		<div class="sidebar-section">
			<div class="row">
			    <div class="col-md-3 sidebar-box">
			       	<h3 style="padding-left: 18px;">FAQ CONTENTSLIST</h3>
			        <ul class="list-links">
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="use1" href="#">이용관련</a></li>
		              <!-- 이용관련 버튼을 눌렀을시에는 이용관련된 목록만 보여지게 함.  -->
		              
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="user2" href="#">결제관련</a></li>
		              <!-- 결제관련 버튼을 눌렀을시에는 결제관련된 목록만 보여지게 함.  -->
		              
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="use3" href="#">신고관련</a></li>
		              <!-- 이용관련 버튼을 눌렀을시에는 이용관련된 목록만 보여지게 함.  -->
		              
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="user4" href="#">로그인관련</a></li>
		               <!-- 로그인관련 버튼을 눌렀을시에는 로그인관련된 목록만 보여지게 함.  -->
					</ul>
			    </div>
			    
			    <div class="col-md-9 content-box">
			    	<i class="fa fa-comments-o" style="float:left; font-size:70px; margin-right: 0;"></i>
			        <h3>FAQ게시판(유저의 자주묻는 질문)</h3><br>

			        <c:forEach var="faqalllist" items="${alllist}">
			        <div class="section1"> 
						<div class="request_area" align="left" hidden="ture">
							${ faqalllist.faq_title } <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>
							<script type="text/javascript">
								function show_answer1(){
									$(".answer_area").show();
								}
							</script>	
						</div>
						<div class="answer_area1" align="left" hidden="true">	 							
							${ faqalllist.faq_content }								
						</div>
						<hr style="clear: both;">
			        </div>
			        </c:forEach> 
			        
			        
			        
					<c:forEach var="faquseinglist" items="${useinglist}">
			        <div class="section2" hidden="true"> 
						<div class="request_area" align="left">
							${ faquseinglist.faq_title } <br><br>&nbsp;
							<button onclick="show_answer2();" style="background: none;">답변보기</button>
							<script type="text/javascript">
								function show_answer2(){
									$(".answer_area2").show();
								}
							</script>			
						</div>
						<div class="answer_area2" align="left">	 	
							${ faquseinglist.faq_content }								
						</div>
						<hr style="clear: both;">
			        </div>
			        </c:forEach> 
			        
			        
			        
					<c:forEach var="faqpaymentlist" items="${paymentlist}">
			        <div class="section3" hidden="true"> 
						<div class="request_area" align="left">
							${ faqpaymentlist.faq_title } <br><br>&nbsp;
							<button onclick="show_answer2();" style="background: none;">답변보기</button>
							<script type="text/javascript">
								function show_answer2(){
									$(".answer_area2").show();
								}
							</script>			
						</div>
						<div class="answer_area2" align="left">	 	
							${ faqpaymentlist.faq_content }								
						</div>
						<hr style="clear: both;">
			        </div>
			        </c:forEach> 
			        
			        
			        			        
					<c:forEach var="faqreportlist" items="${reportlist}">
			        <div class="section4" hidden="true"> 
						<div class="request_area" align="left">
							${ faqreportlist.faq_title } <br><br>&nbsp;
							<button onclick="show_answer2();" style="background: none;">답변보기</button>
							<script type="text/javascript">
								function show_answer2(){
									$(".answer_area2").show();
								}
							</script>			
						</div>
						<div class="answer_area2" align="left">	 	
							${ faqreportlist.faq_content }								
						</div>
						<hr style="clear: both;">
			        </div>
			        </c:forEach> 
			        
			        

					<c:forEach var="faquseinglist" items="${useinglist}">
			        <div class="section5" hidden="true"> 
						<div class="request_area" align="left">
							${ faqreportlist.faq_title } <br><br>&nbsp;
							<button onclick="show_answer2();" style="background: none;">답변보기</button>
							<script type="text/javascript">
								function show_answer2(){
									$(".answer_area2").show();
								}
							</script>			
						</div>
						<div class="answer_area2" align="left">	 	
							${ faqreportlist.faq_content }								
						</div>
						<hr style="clear: both;">
			        </div>
			        </c:forEach> 		
			        
			        	        			        
			  </div>
		</div>
	  </div>
	</div>
	</body>
</html>