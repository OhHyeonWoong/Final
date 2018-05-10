<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>

<% //난수를 하나 받아 변수에 담아놓은다.
	int ramdom = (int)(Math.random()*27+1);
%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>	
<script type="text/javascript">

	function randomnumber() {
								
	}		
	
	$(function(){
		//Carousel그림이 바뀔때 var i에 1~27까지의 난수를 받는다. jpg이미지파일 이름도 난수와 연관성이 있어야함.
			/* 1~3 : 공지사항관련 이미지       
			   4~6 : 생활관련 이미지
			   7~9 : 반려동물관련 이미지
			 10~12 : 게임관련 이미지
			 13~15 : 음악관련 이미지
			 16~18 : 렌탈관련 이미지
			 19~21 : 여행관련 이미지
			 22~24 : 프리랜서관련 이미지
			 25~27 : 대행관련 이미지  
			*/			
	});		
		
</script>

<style type="text/css">

	.uk_a6 {
		background: #333;
		color: white;
		text-align: center;
	}
	.uk_a7{
		text-align: center;
	}
			
	.container {
		height:100%;
	}

</style>
		
</head>
<body>		
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<br>
<div class="container">	
	<div style="width: auto; height: auto; background-color: lightgray;">
			<p class="uk_randomtest"> <p>
			<button onclick="randomnumber();">난수생성 버튼</button>
		</div>
		
		<%-- <%@ include file="/WEB-INF/views/A2.JUJ/carousel.jsp" %> --%> <!-- Carousel 임포트 -->

			  <div id="myCarousel" class="carousel slide" data-ride="carousel">
			    <!-- Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
			
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner">
			      <div class="item active">
		 	  		<img src="/goodluck/resources/common/img/main/여행2.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
			      </div>
			
			      <div class="item">
					<img src="/goodluck/resources/common/img/main/여행1.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
			      </div>
			    
			      <div class="item">
					<img src="/goodluck/resources/common/img/main/여행3.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
			      </div>
			      
			      <div class="item">
					<img src="/goodluck/resources/common/img/main/여행5.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
			      </div>
			      
			      <div class="item">
					<img src="/goodluck/resources/common/img/main/여행4.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
			      </div>
			      
			    </div>
			
			    <!-- Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right"></span>
			      <span class="sr-only">Next</span>
			    </a>
			  </div>
		
		
			
		<hr style="clear:both; width: 100%;"> 	 
		 

		<!-- 2018.05.09추가한 영역 4등분 역역 -->
		<div style="width: 100%; height: 100%; background-color: light;" align="center">					
			<table style="width: 100%; height: 100%;" border="1"> 
				<tr style="width: 100%;">  	
					<td style="width: 50%; height: auto;"> <!-- 첫번째영역 --> 	
						<div style="width: 100%; padding-bottom: 2%;" align="center">
							<div align="left" style="padding-left: 3%;">
								<h3> INFORMATION1 - (관련정보1) </h3>
								<hr style="clear: both;">
							</div>
								 <table style="width: 95%;" border="1">
								 	<tr><td class="uk_a6">번호</td><td class="uk_a6">제목</td><td class="uk_a6">작성자</td><td class="uk_a6">작성일</td><td class="uk_a6">조회수</td></tr>
								 	<tr><td class="uk_a7">01</td><td class="uk_a7">2018.05.06 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-05</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">02</td><td class="uk_a7">2018.05.07 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-06</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">03</td><td class="uk_a7">2018.05.08 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-07</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">04</td><td class="uk_a7">2018.05.09 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-08</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">05</td><td class="uk_a7">2018.05.10 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-09</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">06</td><td class="uk_a7">2018.05.11 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-10</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">07</td><td class="uk_a7">2018.05.12 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-11</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">08</td><td class="uk_a7">2018.05.13 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-12</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">09</td><td class="uk_a7">2018.05.14 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-13</td><td class="uk_a7">97</td></tr>
								 	<tr><td class="uk_a7">10</td><td class="uk_a7">2018.05.15 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-14</td><td class="uk_a7">97</td></tr>
								 </table> 	 							
						</div>						
					</td>
					<td style="width: 50%; height: auto;"> <!-- 두번째영역 --> 	
						<div style="width: 100%; padding-bottom: 2%;" align="center">
							<div align="left" style="padding-left: 3%;">
								<h3> INFORMATION2 - (관련정보2) </h3>
								<hr style="clear: both;">
							</div>
								 <table style="width: 95%;" border="1">
								 	<tr class="t1"><td class="uk_a6">번호</td><td class="uk_a6">제목</td><td class="uk_a6">작성자</td><td class="uk_a6">작성일</td><td class="uk_a6">조회수</td></tr>
								 	<tr class="t1"><td class="uk_a7">01</td><td class="uk_a7">2018.05.06 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-05</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">02</td><td class="uk_a7">2018.05.07 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-06</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">03</td><td class="uk_a7">2018.05.08 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-07</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">04</td><td class="uk_a7">2018.05.09 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-08</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">05</td><td class="uk_a7">2018.05.10 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-09</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">06</td><td class="uk_a7">2018.05.11 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-10</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">07</td><td class="uk_a7">2018.05.12 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-11</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">08</td><td class="uk_a7">2018.05.13 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-12</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">09</td><td class="uk_a7">2018.05.14 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-13</td><td class="uk_a7">97</td></tr>
								 	<tr class="t1"><td class="uk_a7">10</td><td class="uk_a7">2018.05.15 독신사 홈페이지 공지사항안내.</td><td class="uk_a7">정욱재</td><td class="uk_a7">2018-05-14</td><td class="uk_a7">97</td></tr>
								 </table> 		 						
						</div>						
					</td>				
				</tr>
				<tr style="width: 100%;">  	
					<td style="width: 50%; height: auto;"> <!-- 세번째영역 --> 		
						<div style="width: 100%;" align="center">
							<div align="left" style="padding-left: 3%;">
								<h3> INFORMATION3 - (관련정보3) </h3>
								<hr style="clear: both;">
							</div>
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
						</div>
					</td>
					<td style="width: 50%; height: auto;"> <!-- 네번째영역 -->	
						<div style="width: 100%;" align="center">
							<div align="left" style="padding-left: 3%;">
								<h3> INFORMATION4 - (독신뉴스) </h3>
								<hr style="clear: both;">
							</div>

							<div class="container" style="width: 100%;" align="center">
								  <div id="myCarousel" class="carousel slide" data-ride="carousel">
								    <!-- Indicators -->
								    <ol class="carousel-indicators">
								      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								      <li data-target="#myCarousel" data-slide-to="1"></li>
								      <li data-target="#myCarousel" data-slide-to="2"></li>
								    </ol>
								
								    <!-- Wrapper for slides -->
								    <div class="carousel-inner">
								      <div class="item active">
							 	  		<img src="/goodluck/resources/common/img/main/여행2.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
								      </div>
								
								      <div class="item">
										<img src="/goodluck/resources/common/img/main/여행1.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
								      </div>
								    
								      <div class="item">
										<img src="/goodluck/resources/common/img/main/여행3.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
								      </div>
								      
								      <div class="item">
										<img src="/goodluck/resources/common/img/main/여행5.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
								      </div>
								      
								      <div class="item">
										<img src="/goodluck/resources/common/img/main/여행4.jpg" alt="이미지 준비중.." style="width:100%; height: 50%">
								      </div>
								      
								    </div>
								
								    <!-- Left and right controls -->
								    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								      <span class="glyphicon glyphicon-chevron-left"></span>
								      <span class="sr-only">Previous</span>
								    </a>
								    <a class="right carousel-control" href="#myCarousel" data-slide="next">
								      <span class="glyphicon glyphicon-chevron-right"></span>
								      <span class="sr-only">Next</span>
								    </a>
								  </div>
							</div>							
							
							
							
								<!-- <div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;">
								<div style="width: 100%;" align="center">
									<a href="https://www.naver.com">2018.05.06 독신사 홈페이지 공지사항안내.</a>
								</div>
								<hr style="clear: both;"> -->			
						</div>
					</td>					
				</tr>
			</table>
		  </div>
		</div>	
					
		<br><br>
		
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>	
</html>







