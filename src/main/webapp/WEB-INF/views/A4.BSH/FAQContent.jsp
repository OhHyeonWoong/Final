<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>
	<div class="container"> <!-- 1170x1966px  -->
		<div class="sidebar-section">
			<div class="row">
			    <div class="col-md-3 sidebar-box">
			        <center><h3>FAQ CONTENTSLIST</h3></center>
			        <ul class="list-links">
		              <li><i class="glyphicon glyphicon-comment"></i> <a href="#">이용관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a href="#">결제관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a href="#">신고관련</a></li>
		              <li><i class="glyphicon glyphicon-comment"></i> <a href="#">로그인관련</a></li>
					</ul>
			    </div>
			    <div class="col-md-9 content-box">
			    	<i class="fa fa-comments-o" style="float:left; font-size:70px; margin-right: 0;"></i>
			        <h3>FAQ게시판(유저의 자주묻는 질문)</h3><br>
			        
			        <% for(int i=0; i<7; i++){ %>
			        
			        <% } %>
			        
					<!-- <div align="center">
						<img alt="대기중 이미지"  src="/goodluck/resources/common/img/main/이용자6.gif">
			   		</div>
			         -->
			         
			        <div> 
						<div class="request_area" align="left">
							1.사이트, 어떻게 이용하나요? <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
							<script type="text/javascript">
								function show_answer1(){
									$(".answer_area1").show();
								}
							</script>		
						</div>
						<div class="answer_area1" align="left" hidden="true">
							본 사이트는 유저들간 부족함을 채워주기 위한 사이트 입니다.<Br> 
							각 카테고리 별, 게시글을 작성해주시거나<Br> 
							작성된 게시글을 참조하여 도움을 주거나 받으실수 있습니다. 		
							
	
						</div>
						<hr style="clear: both;">
						
						<div class="request_area" align="left">
							2.어느 부분에서 결제가 필요한요? <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area2" align="left" hidden="true">
							결제를 하시면 포인트를 얻을수 있습니다. 포인트를 이용하여 , 아이템몰을 이용하거나, 
							게시글을 작성하는대 유용한 도구를 구할수 있습니다. 
							혹은 다른 도움을 받을수 있습니다. 	
								
						</div>
						<hr style="clear: both;">						
						
						<div class="request_area" align="left">
							3.결제는 어떻게하나요?? <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area3" align="left" hidden="true">
							마이페이지,혹은 마이아이템에 "충전하기"버튼을 이용하여 
							해당 페이지로 이동할 수있습니다						
						</div>
						<hr style="clear: both;">		
						
						<div class="request_area" align="left">
							4.불량 유저를 발견했습니다 신고하고싶어요 <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area4" align="left" hidden="true">
							신고는 마이페이지서 운영진에게 문의하기란이있습니다. 해당 서비스를 이용해주세요.
						</div>
						<hr style="clear: both;">								
						
						<div class="request_area" align="left">
							5.비밀번호를 잊어버렸어요! <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area5" align="left" hidden="true">
							로그인 버튼에서 아이디와 비밀번호를 찾을수잇는 기능이 잇습니다. 해당 기능을 이용해주시면 됩니다.
						</div>
						<hr style="clear: both;">		
						<div class="request_area" align="left">
							6.신고후 피드백은 받을수있나요? <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area6" align="left" hidden="true">
							피드백은 마이페이지서 언제든지 확인할수있습니다.
						</div>
						<hr style="clear: both;">			

						<div class="request_area" align="left">
							7.상대방이 로그인상태가 아닌데어떻하나요? <br><br>&nbsp;
							<button onclick="show_answer1();" style="background: none;">답변보기</button>	
						</div>
						<div class="answer_area7" align="left" hidden="true">
							상대방이 로그인상태가 아닌데어떻하나요?','해당 작성자가 로그아웃상태일경우 상대방의 모바일로 알람이 갑니다. 
							이후에 확인할수 있습니다.
						</div>
							
						</div>	
						<hr style="clear: both;">			
			    </div>
			</div>
		</div>
	</div>
</body>
</html>