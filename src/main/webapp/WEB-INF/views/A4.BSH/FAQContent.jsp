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
	.content-box {background :none; height:822px; max-height:822px; overflow: scroll;}
	
	.request_area { /* FAQ질문 div */
	    background: #0a3466;
	    background: -webkit-linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);
	    background: linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);
	    padding-top:2px;
		width: 100%;
		height: 130px;
		border: 1px solid gray;
		font-size: 20px;		
		color: white;	
	}
	.glyphicon-comment{
		font-size: 19px;
 	}
	.ukstyle_btn{
		background: none;
		color: black;
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
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="select1">이용관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="select2">결제관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="select3">신고관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a class="select4">로그인관련</a></li>
					</ul>
			    </div>
			    <script type="text/javascript">
			    	$(function(){
			    		$(".select1").on("click",function(){
			    			alert("이용관련 FAQ");
			    			$(".section1").hide();
			    			$(".section3").hide();
			    			$(".section4").hide();
			    			$(".section5").hide();
			    			
			    			$(".section2").show();
			    		});
			    		
			    		$(".select2").on("click",function(){
			    			alert("결제관련 FAQ");
			    			$(".section1").hide();
			    			$(".section2").hide();
			    			$(".section4").hide();
			    			$(".section5").hide();
			    			
			    			$(".section3").show();			    			
			    		});
			    		
			    		$(".select3").on("click",function(){
			    			alert("신고관련 FAQ");
			    			$(".section1").hide();
			    			$(".section2").hide();
			    			$(".section3").hide();
			    			$(".section5").hide();
			    			
			    			$(".section4").show();
			    		});
			    		
			    		$(".select4").on("click",function(){
			    			alert("로그인관련 FAQ");
			    			$(".section1").hide();
			    			$(".section2").hide();
			    			$(".section3").hide();
			    			$(".section4").hide();
			    			
			    			$(".section5").show();
			    		});

			    	});
			    </script>			    
			    
			    <div class="col-md-9 content-box">
			    	<i class="fa fa-comments-o" style="float:left; font-size:70px; margin-right: 0;"></i>
			        <h3>FAQ게시판(유저의 자주묻는 질문)</h3><br>

			        <c:forEach var="faqalllist" items="${alllist}">
			        <div class="section1"> 
						<div class="request_area" align="left">
							Q.${ faqalllist.faq_title } 
							<br><br>
							
							A.${ faqalllist.faq_content }	
						</div>
						<P align="right"> <button class="ukstyle_btn">수정</button> &nbsp; <button class="ukstyle_btn">삭제</button></P>
						<br><br>
			        </div>
			        </c:forEach> 
			             
			        
					<c:forEach var="faquseinglist" items="${useinglist}">
			        <div class="section2" hidden="true"> 
						<div class="request_area" align="left">
							Q.${ faquseinglist.faq_title } 
							<br><br>
							A.${ faquseinglist.faq_content }			
						</div>
						<br><br>
			        </div>
			        </c:forEach> 
		        
			        
					<c:forEach var="faqpaymentlist" items="${paymentlist}">
			        <div class="section3" hidden="true"> 
						<div class="request_area" align="left">
							Q.${ faqpaymentlist.faq_title } 
							<br><br>							
							A.${ faqpaymentlist.faq_content } 							
						</div>
						<br><br>
			        </div>
			        </c:forEach> 
			        
			        
			        			        
					<c:forEach var="faqreportlist" items="${reportlist}">
			        <div class="section4" hidden="true"> 
						<div class="request_area" align="left">
							Q.${ faqreportlist.faq_title } 
							<br><br>
							A.${ faqreportlist.faq_content } 	
						</div>
						<br><br>
			        </div>
			        </c:forEach> 
			        
			        

					<c:forEach var="faquseinglist" items="${loginlist}">
			        <div class="section5" hidden="true"> 
						<div class="request_area" align="left">
							Q.${ faquseinglist.faq_title } 
							<br><br>
							A.${ faquseinglist.faq_content } 	
						</div>
						<br><br>
			        </div>
			        </c:forEach> 					        
			        
			             
			  </div>
		  </div>
	    </div>
   	  </div>
	</body>
</html>