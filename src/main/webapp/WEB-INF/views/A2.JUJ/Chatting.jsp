<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Chatting Page</title>

		<style type="text/css">
			.chat
			{
			    list-style: none;
			    margin: 0;
			    padding: 0;
			}
			
			.chat li
			{
			    margin-bottom: 10px;
			    padding-bottom: 5px;
			    border-bottom: 1px dotted #B3A9A9;
			}
			
			.chat li.left .chat-body
			{
			    margin-left: 60px;
			}
			
			.chat li.right .chat-body
			{
			    margin-right: 60px;
			}
			
			
			.chat li .chat-body p
			{
			    margin: 0;
			    color: #777777;
			}
			
			.panel .slidedown .glyphicon, .chat .glyphicon
			{
			    margin-right: 5px;
			}
			
			.panel-body
			{
			    overflow-y: scroll;
			    height: 430px;
			}
			
			::-webkit-scrollbar-track
			{
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
			    background-color: #F5F5F5;
			}
			
			::-webkit-scrollbar
			{
			    width: 12px;
			    background-color: #F5F5F5;
			}
			
			::-webkit-scrollbar-thumb
			{
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
			    background-color: #555;
			}
		</style>
		<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
		<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
		<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>			
	</head>
<body>

		<div class="container" align="center">
		    <h5> My Chatting Page </h5>
		    <div class="row" align="center">
		        <div class="col-md-5">
		            <div class="panel panel-primary">
		                <div class="panel-heading" id="accordion">
		                    <span class="glyphicon glyphicon-comment"></span> Chat
		                    <div class="btn-group pull-right">
		                        <a type="button" class="btn btn-default btn-xs" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
		                            <span class="glyphicon glyphicon-chevron-down"></span>
		                        </a>
		                    </div>
		                </div>
		                
		            <div class="panel-collapse collapse" id="collapseOne">
		                <div class="panel-body">
		                    
		                    <ul class="chat">
		                    
		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                        
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
		                                </div>
		                                <p>
		                                    안녕하세요 독신사운영자입니다 반갑습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    네 안녕하세요 문의드릴사항이 있습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>
		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        <li class="left clearfix"><span class="chat-img pull-left">
		                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <strong class="primary-font">운영자</strong> <small class="pull-right text-muted">
		                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
		                                </div>
		                                <p>
		                                    네 말씀해주세요, 친절하게 답변해드리겠습니다.
		                                </p>
		                            </div>
		                        </li>
		                        
		                        <li class="right clearfix"><span class="chat-img pull-right">
		                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
		                        </span>
		                            <div class="chat-body clearfix">
		                                <div class="header">
		                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
		                                    <strong class="pull-right primary-font">고객</strong>
		                                </div>
		                                <p>
		                                    5월15일 프리랜서 ooo씨와 거래중에 사고가 났어요..
		                                </p>
		                            </div>
		                        </li>		                        
		                    </ul>
		                    
		                </div>
		                <div class="panel-footer">
		                    <div class="input-group">
		                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
		                        <span class="input-group-btn">
		                            <button class="btn btn-warning btn-sm" id="btn-chat">
		                                Send</button>
		                        </span>
		                    </div>
		                </div>
		            </div>
		            </div>
		        </div>
		    </div>
		</div>


</body>
</html>