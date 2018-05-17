<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<script type="text/javascript">
	
	
	</script>
	
	
	<title>Insert title here</title>
</head>
	<body>
	<div class="container" align="center">
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>	
	
		<h7> 여기는 정욱재가 페이지UI를 설계하는데 이동하게하는 모든 연결공간입니다. </h7>
		<hr style="clear: both;">
	
			<ul>
				<li>작업1 : <a href="Notice2.go">나의거래중 목록 List보기 Click</a> </li>
				<li>작업2 :  
					<button onclick="goMyChat();">채팅Click!</button>
					<script type="text/javascript">
						function goMyChat(){
							window.open("Chatting.go","채팅창","width=350,height=550");
						}			
					</script>				
				</li>
			</ul>
	</div>

	
	
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>