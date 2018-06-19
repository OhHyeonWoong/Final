<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>chat</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/goodluck/resources/common/js/sockjs-1.0.3.min.js" ></script>
<script type="text/javascript" >
 var chatSock = null;
 var message = {};
 $(document).ready(function(){
 chatSock = new SockJS("/goodluck/echo-ws");
 chatSock.onopen = function(evt) {
 };
 $("#connectSocket").on('click',function(){
        	
       		message={};
            message.message = "dd";
            message.type = "join";
            //본인의 아이디.
            message.to = $("#me").val();
            chatSock.send(JSON.stringify(message));
        });
        chatSock.onmessage = function(evt) {
        	//서버로부터 값이 왔다.
            $("#chatMessage").append(evt.data);
            $("#chatMessage").append("<br />");
            $("#chatMessage").scrollTop(99999999);
        };
         
        chatSock.onclose = function() {
            // sock.send("채팅을 종료합니다.");
        }
         
         $("#message").keydown(function (key) {
             if (key.keyCode == 13) {
                $("#sendMessage").click();
             }
          });
         
        $("#sendMessage").click(function() {
            if( $("#message").val() != "") {
                 
                message={};
                message.message = $("#message").val();
                message.type = "all";
                message.to = "all";
                
                
                //받는사람.
                var to = $("#to").val();
                if ( to != "") {
                    message.type = "one";
                    message.to = to;
                }
                 
                chatSock.send(JSON.stringify(message));
               // $("#chatMessage").append("나 ->  " + $("#message").val() + "<br/>");
                $("#chatMessage").scrollTop(99999999);
                 
                $("#message").val("");
            }
        });
    });
</script>
</head>
<body>
	<input type="text" id="me" value ="내 아이디"/>
	<input type="button" id="connectSocket" value="접속"/>
   <input type="button" id="sendMessage" value="엔터" />  
     <input type="text" id="message" placeholder="메시지 내용"/> 
    <input type="text" id="to" placeholder="귓속말대상"/> 
    <div id="chatMessage" style="overFlow: auto; max-height: 500px;">
    </div>
</body>
</html>
