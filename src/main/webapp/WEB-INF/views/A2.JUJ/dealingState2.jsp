<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>서비스 제공자의 글을 보고 사용자가 신청을하였을때 거래진행상황을 나타나는 페이지</title>
		<style type="text/css">
		/* *********** 최상단 정보표시영역 Area **********************/
		.table-condensed>tbody>tr>td, .table-condensed>tbody>tr>th, .table-condensed>tfoot>tr>td, .table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td, .table-condensed>thead>tr>th {
    padding: 5px;
}
		.uk_level{
			color:red;
			animation: masterlevel 2s infinite;
		}
		
		@-webkit-keyframes masterlevel {
		    from {color: red;}
		    to {color: blue;}
		} 
		
		@keyframes masterlevel {
		    from {color: red;}
		    to {color: blue;}
		}  
							
		
		.panel {
		    background-color: #FFFFFF;
		    border: 1px solid rgba(0, 0, 0, 0);
		    border-radius: 4px 4px 4px 4px;
		    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
		    margin-bottom: 20px;
		}   
		
		.panel-primary {
		    border-color: #428BCA;
		}   
		
			.panel-primary > .panel-heading {
			    background-color: #428BCA;
			    border-color: #428BCA;
			    color: #FFFFFF;
			}   
			
			.panel-heading {
			    border-bottom: 1px solid rgba(0, 0, 0, 0);
			    border-top-left-radius: 3px;
			    border-top-right-radius: 3px;
			    padding: 10px 15px;
			}   
			
			.panel-title {
			    font-size: 16px;
			    margin-bottom: 0;
			    margin-top: 0;
			}   
			
			.panel-body:before, .panel-body:after {
			    content: " ";
			    display: table;
			}   
			
			.panel-body:before, .panel-body:after {
			    content: " ";
			    display: table;
			}   
			
			.panel-body:after {
			    clear: both;
			}   
			
			.panel-body {
			    padding: 15px;
			}   
			
			.panel-footer {
			    background-color: #F5F5F5;
			    border-bottom-left-radius: 3px;
			    border-bottom-right-radius: 3px;
			    border-top: 1px solid #DDDDDD;
			    padding: 10px 15px;
			}

			.user-row {
			    margin-bottom: 14px;
			}
			
			.user-row:last-child {
			    margin-bottom: 0;
			}
			
			.dropdown-user {
			    margin: 13px 0;
			    padding: 5px;
			    height: 100%;
			}
			
			.dropdown-user:hover {
			    cursor: pointer;
			}
			
			.table-user-information > tbody > tr {
			    border-top: 1px solid rgb(221, 221, 221);
			}
			
			.table-user-information > tbody > tr:first-child {
			    border-top: 0;
			}
			
			
			.table-user-information > tbody > tr > td {
			    border-top: 0;
			    
			}
			.rating {
			      float:left;
			}
			
			/*  영역하단 아이콘 */				
			.btn-glyphicon { padding:8px; background:#ffffff; margin-right:4px; } 
			
			.icon-btn { padding: 1px 15px 3px 2px; border-radius:50px;}			  												
			/*  영역하단 아이콘 */
			
			/********** 이용약관Area *********/
			.main-container{
			    
				background: #35356a;
						        
		    }
			.highlight  {
			    width: 100%;
			    height: 600px;
			    color: white;
			    background: rgba(0, 0, 0, 0.26);
			    border-radius: 10px;
			    padding: 3%;
			    
				}
			    
			.highlight ul {
			    list-style-image: url('http://icons.iconarchive.com/icons/yusuke-kamiyamane/fugue/16/tick-small-icon.png');
			    margin-left: 1%;
			    float: left; 
			    clear: right
			    }
			.highlight ul li{
				font-size : 20px;
			}    

			
			.highlight h1,h2,h3,h4,h5,h6 {
			    padding-bottom: 2%;
			  border-bottom: 2px dashed rgba(255, 255, 255, 0.41);
			    font-size:20px;
			    text-align : center;
			    text-transform: uppercase;
			    }
			    
			.highlight p {
			    text-align: justify;
			    }				
				
				
			/********** 채팅Area *********/
			* {
				  box-sizing: border-box;
				}

			.chat_window {

			  height: 600px;
			  width : 100%;
			  border-radius: 10px;
			  background-color: #fff;
			  left: 50%;
			  top: 50%;
			  transform: translateX(0%) translateY(0%);
			  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
			  background-color: #f8f8f8;
			  overflow: hidden;
			}
			
			.top_menu {
			  background-color: #fff;
			  width: 100%;
			  padding: 10px 0 7px;
			  margin-bottom: 10px;
			  box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
			}
			.top_menu .buttons {
			  margin: 3px 0 0 20px;
			  position: absolute;
			}
			.top_menu .buttons .button {
			  width: 16px;
			  height: 16px;
			  border-radius: 50%;
			  display: inline-block;
			  margin-right: 10px;
			  position: relative;
			}

			.top_menu .title {
			  text-align: center;
			  color: black;
			  font-size:30px;
			}
			
			.messages {
			  position: relative;
			  list-style: none;
			  padding: 0;
			  margin: 0;
			  height: 500px;
			  overflow: scroll;
			}
			.messages .message {
			  clear: both;
			  overflow: hidden;
			  margin-bottom: 20px;
			  transition: all 0.5s linear;
			  opacity: 0;
			}
			.messages .message.left .avatar {
			  float: left;
			  margin-left: 8px;
			}
			.messages .message.left .text_wrapper {
			  background-color: #ffe6cb;
			  margin-left: 10px;
			}
			.messages .message.left .text_wrapper::after, .messages .message.left .text_wrapper::before {
			  right: 100%;
			  border-right-color: #ffe6cb;
			}
			.messages .message.left .text {
			  color: #c48843;
			}
			.messages .message.right .avatar {
			  float: right;

			}
			.messages .message.right .text_wrapper {
			  background-color: #c7eafc;
			  margin-right: 20px; 
			  float: right;
			}
			.messages .message.right .text_wrapper::after, .messages .message.right .text_wrapper::before {
			  left: 100%;
			  border-left-color: #c7eafc;
			}
			.messages .message.right .text {
			  color: #45829b;
			}
			.messages .message.appeared {
			  opacity: 1;
			}
			.messages .message .avatar {
			  width: 60px;
			  height: 60px;
			  border-radius: 50%;
			  display: inline-block;
			}
			.messages .message .text_wrapper {
			  display: inline-block;
			  padding: 20px;
			  border-radius: 6px;
			  width: calc(95% - 85px);
			  min-width: 100px;
			  position: relative;
			}
			.messages .message .text_wrapper::after, .messages .message .text_wrapper:before {
			  top: 18px;
			  border: solid transparent;
			  content: " ";
			  height: 0;
			  width: 0;
			  position: absolute;
			  pointer-events: none;
			}
			.messages .message .text_wrapper::after {
			  border-width: 13px;
			  margin-top: 0px;
			}
			.messages .message .text_wrapper::before {
			  border-width: 15px;
			  margin-top: -2px;
			}
			.messages .message .text_wrapper .text {
			  font-size: 18px;
			  font-weight: 300;
			}
			
			.bottom_wrapper {
			  position: relative;
			  width: 100%;
			  background-color: #fff;
			  padding: 20px 20px;
			  position: absolute;
			  bottom: 0;
			}
			.bottom_wrapper .message_input_wrapper {
			  display: inline-block;
			  height: 50px;
			  border-radius: 25px;
			  border: 1px solid #bcbdc0;
			  width: calc(100% - 160px);
			  position: relative;
			  padding: 0 20px;
			}
			.bottom_wrapper .message_input_wrapper .message_input {
			  border: none;
			  height: 100%;
			  box-sizing: border-box;
			  width: calc(100% - 40px);
			  position: absolute;
			  outline-width: 0;
			  color: gray;
			}
			.bottom_wrapper .send_message {
			  width: 140px;
			  height: 50px;
			  display: inline-block;
			  border-radius: 50px;
			  background-color: #a3d063;
			  border: 2px solid #a3d063;
			  color: #fff;
			  cursor: pointer;
			  transition: all 0.2s linear;
			  text-align: center;
			  float: right;
			}
			.bottom_wrapper .send_message:hover {
			  color: #a3d063;
			  background-color: #fff;
			}
			.bottom_wrapper .send_message .text {
			  font-size: 18px;
			  font-weight: 300;
			  display: inline-block;
			  line-height: 48px;
			}
			
			.message_template {
			  display: none;
			}
			
			/********** 평가하기Area *********/			
			 .animated {
			    -webkit-transition: height 0.2s;
			    -moz-transition: height 0.2s;
			    transition: height 0.2s;
			}
			
			.stars
			{
			    
			    font-size: 24px;
			    color: #d17581;
			}	
		</style>
		
		
	</head>
	<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<script type="text/javascript" src="/goodluck/resources/common/js/sockjs-1.0.3.min.js" ></script>
		
	<div class="container">   
		<div class="row-fluid user-infos cyruxx">
			            <div class="span10 offset1">
			                <div class="panel panel-primary">
			                    <div class="panel-heading" align="center">
			                        <h3 class="panel-title">
			               ${Board.agency_title} 	                        
			                        </h3>
			                    </div>
			                    <div class="panel-body">
			                        <div class="row-fluid">
							               <div class="span6">
							              
			                                <table class="table table-condensed table-responsive table-user-information">
			                                    <tbody>
			                    <tr>
			                    <td rowspan="8" width="200">
			                     <c:choose>
			                    <c:when test="${writer.member_renamephoto ne null }">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/${writer.member_renamephoto}" alt="이미지준비중" width="150" height="200">
			                   	<c:set var="cattingimg" value="${writer.member_renamephoto}" />
			                	</c:when>
			                    <c:when test="${writer.member_renamephoto eq null && gender eq 1}">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/3425dffawdsf.png" alt="이미지준비중" width="150" height="200">
			                	<c:set var="cattingimg" value="3425dffawdsf.png" />
			                	</c:when>
			                    <c:when test="${writer.member_renamephoto eq null && gender eq 0}">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/36452465356743f.png" alt="이미지준비중" width="150" height="200">
			                	<c:set var="cattingimg" value="36452465356743f.png" />
			                	</c:when>
			                   </c:choose>
			                   <script type="text/javascript" >
var chatSock = null;
var message = {};

  $(document).ready(function(){
       
  	chatSock = new SockJS("/goodluck/echo-ws");
  	
  	chatSock.onopen = function(evt) {
  		message={};
          message.message = "dd";
          message.type = "join";
          //본인의 아이디.
          message.to = "${Chat.CHATROOM_NO}//${loginUser.member_id}";
          chatSock.send(JSON.stringify(message));
      };
          
      chatSock.onmessage = function(evt) {
    	  var z="";
    	  var testValue = evt.data;
    	  var iValue = testValue.indexOf("<li class='message right  appeared'>");
    	  if(testValue.indexOf('nonextfzfzssq26v') != -1 ){
    	  z=evt.data;
    	  $.ajax({
    	  	url:"sendmonja.go",
    	  	data:{memberid:"${writer.member_id}",pk:"${Board.agency_no}"},
    	  	success:function(data){
    	  		alert("보냄");
    	  	}
    	  })
    	  }else{
    	  	alert("상대방이있다.");	
    	  if(iValue == -1){
    	  //없을경우에는
    	  z="<li class='message left appeared'><div class='avatar'> <img src='/goodluck/resources/A5.CJS/usertitleimg/${cattingimg}' style='width: 50px; height: 50px;'> </div><div class='text_wrapper'> <div class='text'>"+evt.data;
    	  }else{
    	  //있을경우에	
    	  z=evt.data;
    	  }
    	  }
    	    console.log(z);
    	      	  $("ul[class=messages]").append(z);
    	            $("ul[class=messages]").append("<br />");
    	            $("ul[class=messages]").scrollTop(99999999);
    	        
    	        };
       
//       chatSock.onclose = function() {
//       
//           // sock.send("채팅 종료.");
//       }
       
       $("#message").keydown(function (key) {
           if (key.keyCode == 13) {
              $("#sendMessage").click();
           }
        });
       
      $("#sendfn").click(function() {
    	  $.ajax({
    			url:"insertchattinglog.go",
    			data:{
    				ORDER:'${loginUser.member_id}',
    				NO:'${Chat.CHATROOM_NO}',
    				CONTENT:$("#messagecont").val()
    			},
    			  success:function(data){
    				  if( $("#messagecont").val() != "") {
    			             message={};
    			              message.message = $("#messagecont").val();
    			              message.type = "all";
    			              message.to = "all";
    			              
    			              
    			              //받는사람.
    			              if("${loginUser.member_id}"=="${Chat.CHATROOM_ORDER}")
    			              var to ="${Chat.CHATROOM_NO}//${Chat.CHATROOM_APPLICANT}";
    			              else
    			              var to ="${Chat.CHATROOM_NO}//${Chat.CHATROOM_ORDER}";
    			              
    			              if ( to != "") {
    			                  message.type = "one";
    			                  message.to = to;
    			              }
    			               
    			              chatSock.send(JSON.stringify(message));
    			             // $("#chatMessage").append("나 ->  " + $("#message").val() + "<br/>");
    			              $("#chatMessage").scrollTop(99999999);
    			               
    			              $("#message").val("");
    			          }
    		  },error:function(a,b,c){
					alert("a : " + a + ", b : " + b + ", c : " + c);
				}
    	  })
    	});
      
  });
</script>
			                   </td>
			                   <td style="width: 60%;">
			                  <table class="table table-condensed table-responsive table-user-information">
			                  <tbody>
			                  <tr>
			                     <tr>
			                   
			                     <c:choose>
			                     <c:when test="${Board.agency_type eq 2}">  
			                     <td>오너</td>
			                                        <td>   <c:if test="${writer.emoticonfile ne null}">
			                  <img src="/goodluck/resources/A5.CJS/itemimg/${writer.emoticonfile}"  Style="width: 20px; height: 30px;"/>
			                  </c:if>${writer.member_id}</td>
			                                    </tr>
			                                   <tr>
			                                        <td>오너의 구매점수</td>
			                                        <td class="uk_level">
			                                        
			                                      <img src = "/goodluck/resources/common/img/level/lv${writer.SCORE_SELL_RATE}.gif">                            
			                                        
			                                       </td>
			                     </c:when>
			                     
			                     <c:when test="${Board.agency_type eq 1}"> 
			                     <td>서비스 제공자</td>
			                                        <td>   <c:if test="${writer.emoticonfile ne null}">
			                  <img src="/goodluck/resources/A5.CJS/itemimg/${writer.emoticonfile}"  Style="width: 20px; height: 30px;"/>
			                  </c:if>${writer.member_id}</td>
			                                    </tr>
			                                   <tr>
			                                        <td>제공자의
			                                         봉사단계</td>
			                                        <td class="uk_level">
			                                        
			                                       <img src = "/goodluck/resources/common/img/level/lv${writer.SCORE_SELL_RATE}.gif">                            
			                                        
			                                       </td>
			                     </c:when>
			                     </c:choose>    
			                    
			                    
			                                        
			                                        
			                                        
			                                        
			                                        
			                                        
			                                        
			                                        
			                                    </tr>
			                                    <tr>
			                                        <td>서비스내역 </td>
			                                        <td>${Cateinfo.CATEGORY_SMALL_NAME}</td>
			                                    </tr>
			                                    <tr>
			                                        <td>서비스지역 </td>
			                                        <td>${Board.agency_loc}</td>
			                                    </tr>
			                                    <tr>
			                                        <td>
			                                 <c:choose>
			                     <c:when test="${Board.agency_type eq 2}">페이지급방식 </c:when>
			                     
			                     <c:when test="${Board.agency_type eq 1}">희망 페이</c:when>
			                     </c:choose>        
			                                                        
			                                                                     
			                                        
			                                        
			                                        </td>
			                                        <td>
			                                        
			                                        <c:choose>
			                                        <c:when test="${Board.agency_paytype ==1}">
			                                        일당
			                                        </c:when>
			                                        <c:when test="${Board.agency_paytype ==2}"> 
			                                      시급
			                                        </c:when>
			                                        </c:choose>
			                                   ${Board.agency_pay}원
			                                        </td>
			                                    </tr>

			                                    <tr>
			                                        <td>서비스기간 </td>
			                                        <td>
			                                        ${Board.agency_startdate}
													~
			                                        ${Board.agency_enddate}
			                                        
			                                        </td>
			                                    </tr>
			                                 
			                                    <tr>
			                                        <td>누적경고 </td>
			                                        <td>${writer.member_yellowcard}</td>
			                          </tr>
			                          
			                          
			                          
			                          
			                  </tbody>
			                  
			                  </table>
			                   
			                   </td>
			                   
			                   <td>
			                 <div id="map" style="width:300px; height:220px;"></div>
			                   </td>
			                   
			                   	</tr>		
			                   	
			                   		                            
			                      </tbody>
			                       <tr>
			                   		         <th>작업 내역</th><td colspan="2">${Board.agency_content}</td><td></td>
			                   		          <tr>       
			                                </table>
			                                
			                              
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>

			<div style="width: 49%;  height:auto; float: left; border: 1px solid gray;"> <!-- 주의사항Area  -->
			
					<div class ="main-container">
					
					<div class=" highlight" style="margin-left:0;">
					<h2> 주 의 사 항 </h2><Br>
						<div class="row">
					  
					        <ul>
					            <li> 
					             <c:choose>
			                     <c:when test="${Board.agency_type eq 1}"> ※당신은 오너입니다 ※</c:when>
			                     
			                     <c:when test="${Board.agency_type eq 2}"> ※당신은 일반 지원자입니다 ※ </c:when>
			                     </c:choose>              
					            </li> <br>
					            <li>첫번째 : 거래확정시 취소불가능합니다.  </li> <br>
					            <li>두번째 : 서비스 제공자에게 폭언, 폭력을할시 <br>법적으로 처벌 받습니다. </li> <br>
					            <li>세번째 : 서비스 이용시간을 준수합니다. </li> <br>
					            <li>네번째 : 이용자는 제공서비스 이외에 불필요한<br>요구를 할수 없습니다. </li> <br>
					            <li>다섯 번째 : 거래 종료 권한은 오너에게 있습니다.<br></li> <br>
					            <li>여섯 번째 : 수행의 업무는 필히 증거 사진을 찍어주세요.<br></li> <br>
					        </ul>
					        </div>

					    </div>
						</div>
			</div> <!-- 주의사항Area  -->


			
			<div style="width: 49%; height:auto; float: right; border: 1px solid gray;"> <!-- 채팅Area  -->

						<div class="chat_window">
<table style="width: 100%">
<tr style="height:10%;"><td><div class="top_menu">
					<div class="buttons">
						<div class="button close"></div>
						<div class="button minimize"></div>
						<div class="button maximize"></div>
					</div>					
				<div class="title">채팅서비스</div>
				</div></td></tr>
<tr style="height: 78%;"><td>

<ul class="messages">
<c:forEach items="${ChatLog}" var="i">
<c:if test="${i.CHATDEATIL_MEMBER == loginUser.member_id}">
<li class="message right  appeared">
<div class="text_wrapper">
<div class="text">${i.CHATDEATIL_CONTENT }</div>
</div>
</li>
</c:if>
<c:if test="${i.CHATDEATIL_MEMBER != loginUser.member_id}">
<li class="message left appeared">
<div class="avatar">
<img src="/goodluck/resources/A5.CJS/usertitleimg/${cattingimg}" style="width: 50px; height: 50px;"> 
</div><div class="text_wrapper"> 
<div class="text">${i.CHATDEATIL_CONTENT }</div></div></li>
</c:if>
</c:forEach>
<hr>
</ul>


</td></tr>
<tr style="height: 10%;"><td>	<div class="bottom_wrapper clearfix">
					<div class="message_input_wrapper">
						<input class="message_input" id="messagecont" placeholder="메세지를 입력해주세요." />
					</div>
					
					<div class="send_message" id="sendfn">
					<div class="icon"></div>
					<div class="text">Send</div></div></div></td>
	</tr>
</table>
				
				
				
			
					
					
					</div>
					
				<div class="message_template">
				
				<li class="message">
						<div class="avatar"> <img src="/goodluck/resources/common/img/main/백종원.jpg" style="width: 50px; height: 50px;"> </div>
						<div class="text_wrapper"> <div class="text"></div>
						</div>
				</li>
				
				</div>		


			</div> <!-- 채팅Area  -->

			<br><br>
			<hr style="clear: both;">
			
			<div style="width: 100%;"  align="center"> <!-- 리뷰작성Area  -->
			<div class="row" style="margin-top:20px; width: 100%;">
							<div class="col-md-6" style="width: 100%; padding: 0;">
					    	<div class="well well-sm" style="padding: 26px; margin: 0;">
					            <div class="text-right" align="center">
					            
			
<c:choose>
<c:when test="${Board.agency_type eq 2}"> 
<button id="ukapplybtn" data-target="#cjsModalLabel" style="background: red; color: white; width: 90px; height: 33px;">
수행 포기
</button>
<button  class="btn btn-success btn-green" id="report" data-target="#reportmodal">
  해당 유저 신고
</button>
</c:when>
 <c:when test="${Board.agency_type eq 1}">  
 <button id="ukapplybtn" class="btn btn-danger" data-target="#cjsModalLabel">
 지원자 교체
</button>
		<a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">
			작업 완료
		<a class="btn btn-success btn-green" id="report" data-target="#reportmodal">
		 해당 유저 신고</a></c:when>
</c:choose>	
					          

					            

					            </div>
					        
					        
					    
					        
					            <div class="row" id="post-review-box" style="display:none;">
					                <div class="col-md-12">
					                    <form accept-charset="UTF-8" action="finishBoard.go" method="post">
					                        <input id="ratings-hidden" name="rating" type="hidden" value="1"> 
					                        <input  name="BoardNo" type="hidden" value="${Board.agency_no}">
					                        <input  name="memberid" type="hidden" value="${Board.agency_writer}">
					                        
					                        <textarea class="form-control animated"  cols="500" id="new-review" name="review" placeholder="지원자를 평가해주세요~^^" rows="100"></textarea>
											<br>
					                        <div class="text-right">
					                            <div class="stars starrr" data-rating="0"></div>
					                            <div align="center">
					                            <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px; padding: 8px;">
					                            <font size="4">닫기</font></a>
					                            <button class="btn btn-success btn-lg" type="submit">작업마무리</button>
					                            </div>
					                        </div>
					                    </form>
					               </div>
					            </div>
					      	  </div> 
							</div>
						</div>
			
					<script type="text/javascript">
					
						(function(e){var t,o={className:"autosizejs",append:"",callback:!1,resizeDelay:10},i='<textarea tabindex="-1" style="position:absolute; top:-999px; left:0; right:auto; bottom:auto; border:0; padding: 0; -moz-box-sizing:content-box; -webkit-box-sizing:content-box; box-sizing:content-box; word-wrap:break-word; height:0 !important; min-height:0 !important; overflow:hidden; transition:none; -webkit-transition:none; -moz-transition:none;"/>',n=["fontFamily","fontSize","fontWeight","fontStyle","letterSpacing","textTransform","wordSpacing","textIndent"],s=e(i).data("autosize",!0)[0];s.style.lineHeight="99px","99px"===e(s).css("lineHeight")&&n.push("lineHeight"),s.style.lineHeight="",e.fn.autosize=function(i){return this.length?(i=e.extend({},o,i||{}),s.parentNode!==document.body&&e(document.body).append(s),this.each(function(){function o(){var t,o;"getComputedStyle"in window?(t=window.getComputedStyle(u,null),o=u.getBoundingClientRect().width,e.each(["paddingLeft","paddingRight","borderLeftWidth","borderRightWidth"],function(e,i){o-=parseInt(t[i],10)}),s.style.width=o+"px"):s.style.width=Math.max(p.width(),0)+"px"}function a(){var a={};if(t=u,s.className=i.className,d=parseInt(p.css("maxHeight"),10),e.each(n,function(e,t){a[t]=p.css(t)}),e(s).css(a),o(),window.chrome){var r=u.style.width;u.style.width="0px",u.offsetWidth,u.style.width=r}}function r(){var e,n;t!==u?a():o(),s.value=u.value+i.append,s.style.overflowY=u.style.overflowY,n=parseInt(u.style.height,10),s.scrollTop=0,s.scrollTop=9e4,e=s.scrollTop,d&&e>d?(u.style.overflowY="scroll",e=d):(u.style.overflowY="hidden",c>e&&(e=c)),e+=w,n!==e&&(u.style.height=e+"px",f&&i.callback.call(u,u))}function l(){clearTimeout(h),h=setTimeout(function(){var e=p.width();e!==g&&(g=e,r())},parseInt(i.resizeDelay,10))}var d,c,h,u=this,p=e(u),w=0,f=e.isFunction(i.callback),z={height:u.style.height,overflow:u.style.overflow,overflowY:u.style.overflowY,wordWrap:u.style.wordWrap,resize:u.style.resize},g=p.width();p.data("autosize")||(p.data("autosize",!0),("border-box"===p.css("box-sizing")||"border-box"===p.css("-moz-box-sizing")||"border-box"===p.css("-webkit-box-sizing"))&&(w=p.outerHeight()-p.height()),c=Math.max(parseInt(p.css("minHeight"),10)-w||0,p.height()),p.css({overflow:"hidden",overflowY:"hidden",wordWrap:"break-word",resize:"none"===p.css("resize")||"vertical"===p.css("resize")?"none":"horizontal"}),"onpropertychange"in u?"oninput"in u?p.on("input.autosize keyup.autosize",r):p.on("propertychange.autosize",function(){"value"===event.propertyName&&r()}):p.on("input.autosize",r),i.resizeDelay!==!1&&e(window).on("resize.autosize",l),p.on("autosize.resize",r),p.on("autosize.resizeIncludeStyle",function(){t=null,r()}),p.on("autosize.destroy",function(){t=null,clearTimeout(h),e(window).off("resize",l),p.off("autosize").off(".autosize").css(z).removeData("autosize")}),r())})):this}})(window.jQuery||window.$);
	
						var __slice=[].slice;(function(e,t){var n;n=function(){function t(t,n){var r,i,s,o=this;this.options=e.extend({},this.defaults,n);this.$el=t;s=this.defaults;for(r in s){i=s[r];if(this.$el.data(r)!=null){this.options[r]=this.$el.data(r)}}this.createStars();this.syncRating();this.$el.on("mouseover.starrr","span",function(e){return o.syncRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("mouseout.starrr",function(){return o.syncRating()});this.$el.on("click.starrr","span",function(e){return o.setRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("starrr:change",this.options.change)}t.prototype.defaults={rating:void 0,numStars:5,change:function(e,t){}};t.prototype.createStars=function(){var e,t,n;n=[];for(e=1,t=this.options.numStars;1<=t?e<=t:e>=t;1<=t?e++:e--){n.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"))}return n};t.prototype.setRating=function(e){if(this.options.rating===e){e=void 0}this.options.rating=e;this.syncRating();return this.$el.trigger("starrr:change",e)};t.prototype.syncRating=function(e){var t,n,r,i;e||(e=this.options.rating);if(e){for(t=n=0,i=e-1;0<=i?n<=i:n>=i;t=0<=i?++n:--n){this.$el.find("span").eq(t).removeClass("glyphicon-star-empty").addClass("glyphicon-star")}}if(e&&e<5){for(t=r=e;e<=4?r<=4:r>=4;t=e<=4?++r:--r){this.$el.find("span").eq(t).removeClass("glyphicon-star").addClass("glyphicon-star-empty")}}if(!e){return this.$el.find("span").removeClass("glyphicon-star").addClass("glyphicon-star-empty")}};return t}();return e.fn.extend({starrr:function(){var t,r;r=arguments[0],t=2<=arguments.length?__slice.call(arguments,1):[];return this.each(function(){var i;i=e(this).data("star-rating");if(!i){e(this).data("star-rating",i=new n(e(this),r))}if(typeof r==="string"){return i[r].apply(i,t)}})}})})(window.jQuery,window);$(function(){return $(".starrr").starrr()})
						
						$(function(){
							$("#ukapplybtn").on("click",function(){		
								$('#cjsModalLabel').modal('show');
							});	
							
							$("#report").on("click",function(){		
								$('#reportmodal').modal('show');
							});	
							
							
						  $('#new-review').autosize({append: "\n"});
	
						  var reviewBox = $('#post-review-box');
						  var newReview = $('#new-review');
						  var openReviewBtn = $('#open-review-box');
						  var closeReviewBtn = $('#close-review-box');
						  var ratingsField = $('#ratings-hidden');
	
						  openReviewBtn.click(function(e)
						  {
							$("#uk_cancelbtn").hide();
						    reviewBox.slideDown(400, function()
						      {
						        $('#new-review').trigger('autosize.resize');
						        newReview.focus();
						      });
						    openReviewBtn.fadeOut(100);
						    closeReviewBtn.show();
						  });
	
						  closeReviewBtn.click(function(e)
						  {
						    e.preventDefault();
						    reviewBox.slideUp(300, function()
						      {
						        newReview.focus();
						        openReviewBtn.fadeIn(200);
						      });
						    closeReviewBtn.hide();
						    $("#uk_cancelbtn").show();
						  });
	
						  $('.starrr').on('starrr:change', function(e, value){
						    ratingsField.val(value);
						  });
						});					
					
					</script>

			</div>	
		</div> <!-- container  -->

		<br>
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>	
	<div class="modal fade"  id="cjsModalLabel" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="width:500px; height: 200px; margin-top: 200px;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;
		        </span></button>
		        <h4 class="modal-title" id="myModalLabel">
<c:choose>
<c:when test="${Board.agency_type eq 2}">수행 포기</c:when>
<c:when test="${Board.agency_type eq 1}">지원자 교체</c:when>
</c:choose></h4>
		      </div>
		      <div class="modal-body">
		      
		      	<center>
			
<c:choose>
<c:when test="${Board.agency_type eq 2}">수행을 포기하시겠습니까? <br> 무단으로 포기시 불익이 생길수있습니다. </c:when>
<c:when test="${Board.agency_type eq 1}">
                          정말로 지원자를 교체하시겠습니까??
			<br>
			예비 지원자가 있을경우 자동으로 교체됩니다.
			<br></c:when>
</c:choose>			         
 	
 	
 	
 	
<c:choose>
<c:when test="${Board.agency_type eq 2}"><button onclick="test1();">확인</button></c:when>
<c:when test="${Board.agency_type eq 1}"><button onclick="test3();">확인</button></c:when>
</c:choose>			          	
			    
				<button onclick="test2();">취소</button>
				</center>
				<script type="text/javascript">
					function test1(){
					      var bool = confirm('정말로 포기하시겠습니까??');
					      if(bool==true){
					         alert("작업 수행이 취소되었습니다!");
					         location.href="cancelagency1.go?BoardNo=${Board.agency_no}&memberid=${loginUser.member_id}";
					      }else {
					            
					      }
					}			
					  function test2(){
							$('#cjsModalLabel').modal('hide');											
					  }
					  function test3(){
					      var bool = confirm('정말로 지원자를 교체하시겠습니까?');
					      if(bool==true){
			$.ajax({
				url:"cancelagency1.go",
				data:{
					BoardNo:'${Board.agency_no}',
					memberid:'${loginUser.member_id}'
				},
				success:function(data){
					if(data==0){
						alert("이미 수행일이 지났으므로 취소가 불가능합니다.");
						$('#cjsModalLabel').modal('hide');		
					}else if(data==1){
						alert("현 지원자의 신청을 취소했습니다. 예비인력은 없습니다.");
						location.href="lbjmypage.go?member_id=${loginUser.member_id}";
					}else if(data==2){
						alert("현 지원자의 신청을 취소했습니다. 예비인력으로 교체되었습니다.");
						location.href="lbjmypage.go?member_id=${loginUser.member_id}";
					}
				}
			})		 
				}else {
					            
					      }
					}	
					  
				</script>
					<br />
					<br />
		 
		      </div>
		      <div class="modal-footer">
		      </div>
		    </div>
		  </div>
		</div>
	<div class="modal fade"  id="reportmodal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="width:500px; height: 200px; margin-top: 200px;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;
		        </span></button>
		        <h4 class="modal-title" id="myModalLabel">해당 유저 신고</h4>
		      </div>
		      <div class="modal-body">
		   신고사유: ㅇㅇㅇㅇ
	
		      </div>
		      <div class="modal-footer">
		      </div>
		    </div>
		  </div>
		</div>
		
<script type="text/javascript" 
src="//dapi.kakao.com/v2/maps/sdk.js?appkey=120b01867e29e09658100681cf1d0604&libraries=services,clusterer,drawing"></script>
<style type="text/css">
  .wrap {display:none;    position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5; }
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    </style>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
};  
var geocoder = new daum.maps.services.Geocoder();
var coords="";
var coords1="";
geocoder.addressSearch('${Board.agency_loc}', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

    coords = new daum.maps.LatLng(result[0].y, result[0].x);
    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    console.log("coords="+coords)
     var circle = new daum.maps.Circle({
    	    center : coords,  // 원의 중심좌표 입니다 
    	    radius: 50, // 미터 단위의 원의 반지름입니다 
    	    strokeWeight: 5, // 선의 두께입니다 
    	    strokeColor: '#75B8FA', // 선의 색깔입니다
    	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    	    strokeStyle: 'dashed', // 선의 스타일 입니다
    	    fillColor: '#CFE7FF', // 채우기 색깔입니다
    	    fillOpacity: 0.7  // 채우기 불투명도 입니다   
    	}); 

    	// 지도에 원을 표시합니다 
    	circle.setMap(map); 
});

var map = new daum.maps.Map(mapContainer, mapOption); 

var  positions =  [];
var  zero= {};
var i=0;
<c:forEach var="a" items="${allance}" varStatus="status">
geocoder.addressSearch('${a.ALLIANCE_LOC}', function(result, status) {
if (status === daum.maps.services.Status.OK) {
	coords1 = new daum.maps.LatLng(result[0].y, result[0].x);
	zero={content : 
		    '<div class="wrap" id='+i+' onclick="closeOverlay(this.id)">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            <center>${a.ALLIANCE_NAME} <center>' + 
            '            <div class="close"  title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' +
            '            <div class="desc">' + 
            '                <div class="ellipsis">${a.ALLIANCE_LOC}</div>' + 
            '                <div><a href="${a.ALLIANCE_URL}" target="_blank" class="link">홈페이지</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>', latlng:coords1};
    positions.push(zero);
    i++;
    console.log(${fn:length(allance)});
    console.log(i);
    if(${fn:length(allance)}==i){
    	console.log(positions.length);
    	mapst();
    }  
   }
})
</c:forEach>
    function mapst(){
      for (var i = 0; i < positions.length; i ++) {
    	  var content = positions[i].content;
    	
    

		            // 마커를 생성합니다
		          
		            var marker = new daum.maps.Marker({
		                map: map, // 마커를 표시할 지도
		                position:positions[i].latlng // 마커의 위치
		               
		            });
		            var overlay = new daum.maps.CustomOverlay({
		                content: content,
		                map: map,
		                position: marker.getPosition()
		            });
		         
    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
    daum.maps.event.addListener(marker, 'click', function() {
    	 $('.wrap').show();   
        overlay.setMap(map);
    });
      }    
            
    };
    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
    function closeOverlay(i) {
    	
    	 $('#'+i).hide();     
    }
</script>
	</body>
</html>