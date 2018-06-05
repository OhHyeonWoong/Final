<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
	<head>
		<title>FAQ UsingList</title>
		<style type="text/css">	
			.sidebar-box ul {margin:0px; padding:0px;}
			.sidebar-box {background:#16315b; color:#fff; padding-bottom: 561px;  padding-top: 3px;}
			.sidebar-box h3 {margin-bottom:20px;}
			.list-links {list-style:none; font-size:16px; font-weight:600; letter-spacig:1px;}	
			.list-links li  {border-top: 1px solid #204372; line-height:38px;margin:0; padding-left:20px}
			.list-links li a { color: #e2e2e2; }
			.list-links li a:hover {text-decoration:none; color: #d6a111; }
			.list-links li:hover {background: #030942; color: #d6a111;}	
			.content-box {background :none; height:822px; overflow:scroll; border: 1px solid #d8d8d8; padding-top: 5px;}
			  
			.request_area { /* FAQ질문 div */
			    background: #0a3466;
			    background: -webkit-linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);
			    background: linear-gradient(45deg, #0a3466 0%, #17b6e3 100%);
			    padding-top:2px;
				width: 100%;
				height: 145px;
				border: 1px solid gray;
				font-size: 20px;		
				color: white;	
			}
		
			.glyphicon-comment,.icon{
				font-size: 19px;
			}
			.ukstyle_text{
		 		background: none; 
		 		color: white; 
		 		width: 600px;	
		 		margin-top: 10px;
		 		margin-left:2px;	
		 		padding: 0;
			}
			.ukstyle_text2{
		 		background: none; 
		 		color: white; 
				margin-left:2px;
		 		padding: 0;
			}
		</style>
	<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			alert("FAQ내용 수정완료!");			
		});
	</script>
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	  
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
		              <li><i class="glyphicon glyphicon-user icon"></i> <a class="select5">관리자글쓰기</a></li>
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
			    		
			    		$(".select5").on("click",function(){
			    			alert("관리자 FAQ글쓰기");
							location.href="movewirtefaqpage.go";
			    		});
					
			    	});
			    </script>			    
			    
			    <div class="col-md-9 content-box">
			    	<i class="fa fa-comments-o" style="float:left; font-size:70px; margin-right: 0;"></i>
			        <h3>FAQ게시판(유저의 자주묻는 질문)</h3><br>

			        <c:forEach var="faqalllist" items="${alllist}">
			        <div class="section1"  hidden="true"> 
			        	<form action="changeFaqContents1.go" method="get">
						<div class="request_area" align="left">
							<input type="text" class="ukstyle_text" id="f_title_a" name="f_title_a" value="Q.${faqalllist.faq_title}"> 
							<input type="hidden" >
							<!-- 관리자가 수정한 타이틀로 보내야됨 -->
							<br><br>
							<textarea rows="2" cols="82" class="ukstyle_text2" id="f_contents_a" name="f_contents_a" style="resize: none;">A.${faqalllist.faq_content }</textarea>	
							<!-- 관리자가 수정한 내용으로 보내야됨 -->			
							<input type="hidden" id="f_category_a" name="f_category_a" value="${ faqalllist.faq_category }"> 
							<input type="hidden" name="f_pk_a" value="${faqalllist.faq_no}">
						</div>
						<P align="right">
						<input type="submit" value="수정">&nbsp;
						<button class="ukstyle_btn" id="d${faqalllist.faq_no}" onclick="deletefaq(this);">삭제</button>
						</form>	
						<br><br>
			        </div>
			        </c:forEach> 	
					<script type="text/javascript">

					</script>							
			        
					<c:forEach var="faquseinglist" items="${useinglist}">
				        <div class="section2"> 
							<form action="changeFaqContents2.go" method="get">
								<div class="request_area" align="left">
									<input type="text" class="ukstyle_text" id="f_title_u" name="f_title_u" value="Q.${faquseinglist.faq_title}"> 
									<input type="hidden" >
									<!-- 관리자가 수정한 타이틀로 보내야됨 -->
									<br><br>
									<textarea rows="2" cols="84" class="ukstyle_text2" name="f_contents_u" id="f_contents_u" style="resize: none;">A.${faquseinglist.faq_content }</textarea>	
									<!-- 관리자가 수정한 내용으로 보내야됨 -->			
									<input type="hidden" name="f_pk_u" value="${faquseinglist.faq_no}">
									<input type="hidden" id="f_category_u" name="f_category_u" value="${ faquseinglist.faq_category }"> 
									<!-- 그냥 넘기면됨 -->				 							
								</div>
								<P align="right"> 
								<input type="submit" value="수정">
								<%-- <a href="#" id="c${faquseinglist.faq_no}" onclick="faqfaq_change_u(this);"> 수정 </a> --%>
								<button class="ukstyle_btn" id="d${faquseinglist.faq_no}" onclick="deletefaq(this);">삭제</button>
								</P>		
							<br><br>
							</form>
				        </div>
			        </c:forEach> 

					<script type="text/javascript">
						function deletefaq(jung){
							var pk = jung.id;
						}
					</script>			        
			        
					<c:forEach var="faqpaymentlist" items="${paymentlist}">
				        <div class="section3" hidden="true"> 
							<form action="changeFaqContents3.go" method="get">				        
							<div class="request_area" align="left">
								<input type="text" class="ukstyle_text" id="f_title_p" name="f_title_p" value="Q.${ faqpaymentlist.faq_title }"> 
								<br><br>
								<textarea rows="2" cols="84" class="ukstyle_text2" id="f_contents_p" name="f_contents_p">A.${ faqpaymentlist.faq_content }</textarea>				
								<input type="hidden" id="f_category_p" name="f_category_p" value="${ faqpaymentlist.faq_category }">														
								<input type="hidden" name="f_pk_p" value="${ faqpaymentlist.faq_no }">
							</div>
							<P align="right"> 
							<input type="submit" value="수정">
							<%-- <a class="ukstyle_paybtn" id="c${faqpaymentlist.faq_no}" onclick="faqfaq_change_p(this);">수정</a> --%> 
							&nbsp; 
							<button class="ukstyle_btn" id="d${faqpaymentlist.faq_no}" onclick="deletefaq2(this);">삭제</button></P>
							</form>						
							<br><br>
				        </div>
			        </c:forEach> 
					<script type="text/javascript">
						function deletefaq2(jung){
							var pk = jung.id;
							
						}
					</script>			        

			        			        
					<c:forEach var="faqreportlist" items="${reportlist}">
			        <div class="section4" hidden="true">
						<form action="changeFaqContents4.go" method="get">			         
						<div class="request_area" align="left">							
							<input type="text" class="ukstyle_text" id="f_title_r" name="f_title_r" value="Q.${ faqreportlist.faq_title }"> 
							<br><br>
							<textarea rows="2" cols="84" class="ukstyle_text2" id="f_contents_r" name="f_contents_r" style="resize: none;">A.${ faqreportlist.faq_content }</textarea>					
							<input type="hidden" id="f_category_r" name="f_category_r" value="${ faqreportlist.faq_category }">		
							<input type="hidden" name="f_pk_r" value="${ faqreportlist.faq_no }">
						</div>
						<P align="right">
						<input type="submit" value="수정">&nbsp; 
						<button class="ukstyle_btn" id="d${faqreportlist.faq_no}" onclick="deletefaq3(this);">삭제</button></P>
						</form>						
						<br><br>
						<script type="text/javascript">
							function deleteFaq(){
								location.href="delFaq.go?selectFaqNo="+$("#f_number").val();
							}
						</script>		
			        </div>
			        </c:forEach> 
					<script type="text/javascript">
						function deletefaq3(jung){
							var pk = jung.id;
							
						}
					</script>			        
			        

					<c:forEach var="faqloginlist" items="${loginlist}">
			        <div class="section5" hidden="true"> 
						<form action="changeFaqContents5.go" method="get">			         
						<div class="request_area" align="left">
							<input type="text" class="ukstyle_text" id="f_title_g" name="f_title_g" value="Q.${ faqloginlist.faq_title }"> 
							<br><br>
							<textarea rows="2" cols="84" class="ukstyle_text2" id="f_contents_g" name="f_contents_g" style="resize: none;">A.${ faqloginlist.faq_content }</textarea>				
							<input type="hidden" id="f_category_g" name="f_category_g" value="${ faqloginlist.faq_category }">
							<input type="hidden" name="f_pk_g" value="${ faqloginlist.faq_no }">
						</div>
						<P align="right"> 
						<input type="submit" value="수정">&nbsp; 						 
						<button class="ukstyle_btn" id="d${faqloginlist.faq_no}" onclick="deletefaq4(this);">삭제</button></P>								
						</form>
						<br><br>
			        </div>
			        </c:forEach> 		
					<script type="text/javascript">
						function deletefaq4(jung){
							var pk = jung.id;
							
						}
					</script>			        
			        		  
			                  
			            
			             
			  </div>
		  </div>
	    </div>
   	  </div>
	<hr style="clear: both;"> 
		
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
