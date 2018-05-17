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


		</div>


</body>
</html>