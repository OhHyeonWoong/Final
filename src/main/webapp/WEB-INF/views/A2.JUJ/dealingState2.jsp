<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>서비스 제공자의 글을 보고 사용자가 신청을하였을때 거래진행상황을 나타나는 페이지</title>
		<style type="text/css">
		/* *********** 최상단 정보표시영역 Area **********************/
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
		<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>	
			
		<script type="text/javascript">
			(function () {
			    var Message;
			    Message = function (arg) {
			        this.text = arg.text, this.message_side = arg.message_side;
			        this.draw = function (_this) {
			            return function () {
			                var $message;
			                $message = $($('.message_template').clone().html());
			                $message.addClass(_this.message_side).find('.text').html(_this.text);
			                $('.messages').append($message);
			                return setTimeout(function () {
			                    return $message.addClass('appeared');
			                }, 0);
			            };
			        }(this);
			        return this;
			    };
			    $(function () {
			        var getMessageText, message_side, sendMessage;
			        message_side = 'right';
			        getMessageText = function () {
			            var $message_input;
			            $message_input = $('.message_input');
			            return $message_input.val();
			        };
			        sendMessage = function (text) {
			            var $messages, message;
			            if (text.trim() === '') {
			                return;
			            }
			            $('.message_input').val('');
			            $messages = $('.messages');
			            message_side = message_side === 'left' ? 'right' : 'left';
			            message = new Message({
			                text: text,
			                message_side: message_side
			            });
			            message.draw();
			            return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
			        };
			        $('.send_message').click(function (e) {
			            return sendMessage(getMessageText());
			        });
			        $('.message_input').keyup(function (e) {
			            if (e.which === 13) {
			                return sendMessage(getMessageText());
			            }
			        });
			        sendMessage('안녕하세요 신청합니다.');
			        setTimeout(function () {
			            return sendMessage('네 반갑습니다.');
			        }, 1000);
			        		        
			        return setTimeout(function () {
			            return sendMessage('불고기 레시피에 대하여 자세하게 배우고싶습니다');
			        }, 2000);
			    });
			}.call(this));	
		</script> <!-- 채팅화면 채팅실행 스크립트 -->
		
	</head>
	<body>
		<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
		${Board}//
		${Chat.CHATROOM_NO}//
		${writer}//
		${Cateinfo}
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
			                    <td rowspan="12" width="200">
			                    
			                     
			                    <c:choose>
			                    
			                    <c:when test="${writer.member_renamephoto ne null }">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/${writer.member_renamephoto}" alt="이미지준비중" width="150" height="200">
			                	</c:when>
			                    <c:when test="${writer.member_renamephoto eq null && gender eq 1}">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/3425dffawdsf.png" alt="이미지준비중" width="150" height="200">
			                	</c:when>
			                    <c:when test="${writer.member_renamephoto eq null && gender eq 0}">
			                   	<img src="/goodluck/resources/A5.CJS/usertitleimg/36452465356743f.png" alt="이미지준비중" width="150" height="200">
			                	</c:when>
			                   
			       
			                    
			                    </c:choose>
			                   
			                    
			                    
			                    </td>
			                        
			                        
			                        
			                        
			                          </tr>			                                    
			                                    <tr>
			                                        <td>지원자</td>
			                                        <td>${writer.member_id}</td>
			                                    </tr>			                                    
			                                    <tr>
			                                    <tr>
			                                        <td>지원자 이름</td>
			                                        <td>${writer.member_name}</td>
			                                    </tr>			                                    
			                                    <tr>
			                                        <td>지원자 연락처</td>
			                                        <td>${writer.member_phone}</td>
			                                    </tr>			                                    
			                                    <tr>
			                                        <td>지원자의 지원레벨</td>
			                                        <td class="uk_level">
			                                        
			                                        ${writer.SCORE_SELL_RATE} 단계
			                                        
			                                        </td>
			                                    </tr>
			                                    <tr>
			                                    <td colspan="2"><center><strong>게시글 정보</strong></center><td>
			                                    </tr>
			                                    
			                                    <tr>
			                                        <td>서비스 내역 </td>
			                                        <td>${Cateinfo.CATEGORY_SMALL_NAME}</td>
			                                    </tr>
			                                    <tr>
			                                        <td>서비스 지역 </td>
			                                        <td>${Board.agency_loc}</td>
			                                    </tr>
			                                    <tr>
			                                        <td>페이지급방식 </td>
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
			                                        <td>${Board.agency_startdate}
													~
			                                        ${Board.agency_enddate}
			                                        
			                                        </td>
			                                    </tr>
			                                 
			                                    <tr>
			                                        <td>지원자의 누적경고 </td>
			                                        <td>${writer.member_yellowcard}</td>
			                                    </tr>

			                                    </tbody>
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
					<h2> 주 의 사 항   </h2><Br>
						<div class="row">
					  
					        <ul>
					            <li>첫번째 : 거래확정시 취소불가능합니다.  </li> <br>
					            <li>두번째 : 서비스 제공자에게 폭언, 폭력을할시 <br>법적으로 처벌 받습니다. </li> <br>
					            <li>세번째 : 서비스 이용시간을 준수합니다. </li> <br>
					            <li>네번째 : 이용자는 제공서비스 이외에 불필요한<br>요구를 할수 없습니다. </li> <br>
					            <li>다섯 번째 : 거래 종료 권한은 오너에게 있습니다.<br></li> <br>
					            <li>여섯 번째 : 수행의 업무는 필히 증거 사진을 찍어주세요.<br></li> <br>
					            <li>일곱 번째 : 서비스 수행 당일에는 지원자교체가 불가합니다.<br></li> <br>
					        </ul>
					        </div>

					    </div>
						</div>
			</div> <!-- 주의사항Area  -->


			
			<div style="width: 49%; height:auto; float: right; border: 1px solid gray;"> <!-- 채팅Area  -->

			<div class="chat_window">
				<div class="top_menu">
					<div class="buttons">
						<div class="button close"></div>
						<div class="button minimize"></div>
						<div class="button maximize"></div>
					</div>					
				<div class="title">채팅서비스</div>
				</div>
				
				<ul class="messages"></ul>
				<div class="bottom_wrapper clearfix">
					<div class="message_input_wrapper">
						<input class="message_input" placeholder="메세지를 입력해주세요." />
					</div>
					
					<div class="send_message">
					<div class="icon"></div>
					<div class="text">Send</div></div></div></div>
					
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
<button id="ukapplybtn" data-target="#cjsModalLabel" style="background: red; color: white;">
지원자 교체
		</button>
					                <a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">
					  작업 완료
					                </a>
					            </div>
					        
					            <div class="row" id="post-review-box" style="display:none;">
					                <div class="col-md-12">
					                    <form accept-charset="UTF-8" action="" method="post">
					                        <input id="ratings-hidden" name="rating" type="hidden"> 
					                        <textarea class="form-control animated"  cols="500" id="new-review" name="review" placeholder="평가해주세요~^^" rows="100"></textarea>
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
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">현재 지원자 교체</h4>
		      </div>
		      <div class="modal-body">
		      	<center>
		현재 지원자가 마음에 들지 않아서 다른 지원자를 받겠습니까?
			<br>
	    현재 지원자를 포기합니다.
			<br>
	예비 지원자가 존재할경우 바로 교체됩니다. my_page에서 확인가능합니다.
				<button onclick="test1();">확인</button>
				<button onclick="test2();">취소</button>
				</center>
				<script type="text/javascript">
					function test1(){
					      var bool = confirm('정말로 포기하시겠습니까??');
					      if(bool==true){
			$.ajax({
				url:"cancelagency1.go",
				data:{BoardNo='${Board.agency_no}',
					memberid='${loginUser.member_id}'
				},
				success:function(data){
					if(data==0){
						alert("이미 수행일이 지났으므로 취소가 불가능합니다.");
					}else if(data==1){
						alert("현 지원자의 신청을 취소했습니다. 예비인력은 없습니다.");
						location.href="lbjmypage.go?member_id=${loginUser.member_id}";
					}else if(data==2){
						alert("현 지원자의 신청을 취소했습니다. 예비인력으로 교체되었습니다.");
						location.href="lbjmypage.go?member_id=${loginUser.member_id}";
					}
				}
			})		 
	
		
		
			}
		
					      }else {
					            
					      }
					}			
					  function test2(){
							$('#cjsModalLabel').modal('hide');											
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
	</body>
</html>