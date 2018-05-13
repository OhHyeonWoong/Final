<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<% 
	ArrayList<String> list = new ArrayList<String>(); /* ArrayList에 메인에사용되는 이미파일의 경로를 넣는다. */
	list.add("/goodluck/resources/common/img/main/공지사항.jpg");
	list.add("/goodluck/resources/common/img/main/생활.jpg");
	list.add("/goodluck/resources/common/img/main/반려동물2");
	list.add("/goodluck/resources/common/img/main/게임.jpg");
	list.add("/goodluck/resources/common/img/main/음악.jpg");
	list.add("/goodluck/resources/common/img/main/렌탈.jpg");
	list.add("/goodluck/resources/common/img/main/여행.jpg");
	list.add("/goodluck/resources/common/img/main/프리랜서.jpg");
	list.add("/goodluck/resources/common/img/main/구인.jpg");	
	String bgcolor = "basic";
%>

        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Home</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){	
		 /* $("--").on("click", function(){
		    	$.ajax({
				
		    	});		
		 }); */	
	     $(".ohw-homeCarousel > .left.carousel-control").on("click",function(){ //왼쪽가기 버튼이 눌렸을경우 배경Change 
	    	 	     
	    	 <%-- <% if($("".ohw-homeCarousel ol li > data-slide-to')==0){%>
	    	 
	    	 
	    	 
	    	 <% }else if(){ %>
    	 
	    	 
	    	 <% }else if(){ %>
	    	 
	    	 
	    	 
	    	 <% }else if(){ %>
	    	 
	    	 
	    	 <% }else if(){ %>
	    	 
	    	 
	    	 
	    	 <% }else if(){ %> --%>
	    	 
	    	 $("#main").css("background-color","#cc66cc");	
	     
	     
		 });  
	     $(".ohw-homeCarousel > .right.carousel-control").on("click",function(){ //오른쪽가기 버튼을 눌렀을경우 배경Change
	    	 $("#main").css("background-color","#cc99ff");	    	 
		 }); 
	}); //JQuery Ready
</script>

<link rel="stylesheet" type="text/css" href="/goodluck/WEB-INF/views/A2.JUJ/mytablestyle.css">
<style type="text/css">
	.jwj-innertable {
	    border-collapse: collapse;
	    border-spacing: 0;
	    width: 100%;
	    height : 80%;
	    border: 1px solid #ddd;	
	}		
	
	.jwj-innertable tr th {
    text-align: left;
    padding: 10px;
   
	}
	
	.jwj-innertable tr td {
    text-align: center;
    padding: 10px;
    
	}
	
	.jwj-innertable tr:nth-child(even) {
	    background-color: #5c5c5c;
	    animation: mymove 5s infinite;
	}
	
	/* Chrome, Safari, Opera */
	@-webkit-keyframes mymove {
	    from {background-color: #5c5c5c;}
	    to {background-color: #cccccc;}
	}
	
	/* Standard syntax */
	@keyframes mymove {
	    from {background-color: #5c5c5c;}
	    to {background-color: #cccccc;}
	} 

	.ohw-home-table {
		margin:0;
		padding:0;
		width:100%;
		height:800px;
		border:1 solid black;
	}

	.ohw-home-table-td {
		margin:0;
		padding:0;	
		width:50%;
		height:400px;
	}
	
	.ohw-carousel-img {
		height:400px !important;
	}
	
</style>

</head> 
<body id="main" class="main">
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div class="container">  
	<div id="homeCarousel" class="ohw-homeCarousel carousel slide" data-ride="carousel" data-interval="false">
		<% String inside = null; %>
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target=".ohw-homeCarousel" data-slide-to="0" class="active"></li> 
			<li data-target=".ohw-homeCarousel" data-slide-to="1" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="2" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="3" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="4" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="5" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="6" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="7" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="8" class="active"></li>
		</ol>		
		

		
		<div class="carousel-inner">
			<div class="item active">
				<a href="Notice.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;"></a>
				

			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;"></a>	

				
			</div>    
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물2.jpg" alt="반려동물" style="width:100%;"></a>


			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;"></a>


			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악.jpg" alt="음악" style="width:100%;"></a>

			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;"></a>
			
			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행.jpg" alt="여행" style="width:100%;"></a>
	
			</div>	
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/프리랜서.jpg" alt="프리랜서" style="width:100%;"></a>

			</div>
			<div class="item">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/구인.jpg" alt="구인" style="width:100%;"></a>
			</div>
		</div>		
		
		<a class="left carousel-control" href=".ohw-homeCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <!-- 화면상에 < 로 보여지는 버튼 -->
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href=".ohw-homeCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span> <!-- 화면상에 > 로 보여지는 버튼 -->
			<span class="sr-only">Next</span>
		</a>
	</div> <!-- homeCarousel -->	
	
	<!-- -------------------------------------------------------------------------------------------------------------------  -->
  
 <hr>
 
	<div id="homeCarousel" class="ohw-homeCarousel carousel slide" data-ride="carousel" data-interval="false">

		<!-- Indicators -->

		<ol class="carousel-indicators">
			<li data-target=".ohw-homeCarousel" data-slide-to="0" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="1" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="2" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="3" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="4" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="5" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="6" class="active"></li>
			<li data-target=".ohw-homeCarousel" data-slide-to="7" class="active"></li>
		</ol>		
		
		<div class="carousel-inner">
			<div class="item active">
			<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;"> -->
			
			<table class="ohw-home-table" border = "1"> <!-- main  -->
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 
						<font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
						<table class="jwj-innertable" border="1">
							<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
							<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
							<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
							<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
							<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
							<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
							<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
							<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
							<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
							<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
						</table>
					</td>
					<td class = "ohw-home-table-td" align = "center"><br>
						<font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
						<div id="homeCarousel" class="ohw-homeCarousel2 carousel slide" data-ride="carousel" data-interval="false">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target=".ohw-homeCarousel2" data-slide-to="0" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="1" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="2" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="3" class="active"></li>
								<li data-target=".ohw-homeCarousel2" data-slide-to="4" class="active"></li>
							</ol>		

							<div class="carousel-inner">
								<div class="item active">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=001&aid=0008319484"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스1.jpg" alt="이미지준비중.." width="550" height="150"></a></td></tr>
										<tr align="center"> <td><font size="4" face="굴림" style="font-weight: bold;">"연령대별 독신가구 소득·소비 실태"</font></td> </tr>
									</table>
								</div>		
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://news.donga.com/3/all/20180401/89399594/1"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스4.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><font size="4" face="굴림" style="font-weight: bold;">“결혼 해봐야 돈만 들지… 독신이 낫다”</font></td> </tr>
									</table>						
								</div>																
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr align="center"><td style="padding: 0;"><iframe width="567" height="395" style="border: 1px solid black;" src="https://www.youtube.com/embed/QI7cYnBlkFQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></td></tr>
										<tr align="center"><td><font size="4" face="굴림" style="font-weight: bold;">"[혼밥의정석]색다른 도시락 메뉴 없을까 싶을 때, 키쉬"</font></td></tr>
									</table>																		
								</div>    
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://famtimes.co.kr/news/view/46456"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스3.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><font size="4" face="굴림" style="font-weight: bold;">"우아한 싱글, '독신 생활'의 장점"</font></td> </tr>
									</table>		
								</div>
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://www.jejunews.com/news/articleView.html?idxno=2112473"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스2.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><font size="4" face="굴림" style="font-weight: bold;">"나 홀로 시대"</font></td> </tr>
									</table>	
								</div>
							</div>		
							
							<a class="left carousel-control" href=".ohw-homeCarousel2" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left"></span> 
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href=".ohw-homeCarousel2" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span> 
								<span class="sr-only">Next</span>
							</a>
						</div> 	<!-- homeCarousel -->	
						
					</td>
				</tr>
				<tr>
					<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
						<table class="jwj-innertable" border="1">
							<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
							<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
							<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
							<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
							<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
							<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
							<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
							<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
							<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
							<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
						</table>
					</td>
					<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">FAQ</font>
						<table class="jwj-innertable" border="1">
							<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
							<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
							<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
							<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
							<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
							<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
							<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
							<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
							<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
							<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
							<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
						</table>
					</td>
				</tr>
			</table>

			</div>

			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 생활  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;"> <font size="6" face="굴림" style="font-weight: bold;">생활 이벤트</font>



						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;"><font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">생활 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;"> 생활 FAQ </font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>    
			
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물.jpg" alt="반려동물" style="width:100%;"> -->
				<table class = "ohw-home-table" border = "1"> <!-- 반려동물  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> 
							<div id="ukDIV" style="width: 100%; height: 100%;" align="center">
								<ol>
									<li><h1>첫번째 귀엽다</h1></li>
									<li><h1>두번째 예쁘다</h1></li>
									<li><h1>세번째 사랑스럽다</h1></li>
								</ol>
							</div>	
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;"> 뉴스ROOM </font>							
							<!-- <table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table> -->
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">반려동물 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">반려동물 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>

			</div>
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;"> -->
				<table class = "ohw-home-table" border = "1"> <!-- 게임  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">게임 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">게임 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">게임 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악2.jpg" alt="음악" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 음악  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">음악 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">음악 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">음악 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
				
			</div>
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;"> -->
				<table class = "ohw-home-table" border = "1"> <!-- 렌탈  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">렌탈 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">렌탈 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">렌탈 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행.jpg" alt="여행" style="width:100%;"> -->
				<table class = "ohw-home-table" border = "1"> <!-- 여행  -->
					<tr>
						<td class="ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">여행 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">여행 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">여행 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>	
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="문의" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 프리랜서  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">프리랜서 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">프리랜서 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">프리랜서 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<div class="item">
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="문의" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 구인  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">구인 이벤트</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">뉴스ROOM</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">구인 공지사항</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">구인 FAQ</font>
							<table class="jwj-innertable" border="1">
								<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
								<tr><td>01</td><td>2018.05.06 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-05</td><td>97</td></tr>
								<tr><td>02</td><td>2018.05.07 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-06</td><td>97</td></tr>
								<tr><td>03</td><td>2018.05.08 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-07</td><td>97</td></tr>
								<tr><td>04</td><td>2018.05.09 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-08</td><td>97</td></tr>
								<tr><td>05</td><td>2018.05.10 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-09</td><td>97</td></tr>
								<tr><td>06</td><td>2018.05.11 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-10</td><td>97</td></tr>
								<tr><td>07</td><td>2018.05.12 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-11</td><td>97</td></tr>
								<tr><td>08</td><td>2018.05.13 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-12</td><td>97</td></tr>
								<tr><td>09</td><td>2018.05.14 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-13</td><td>97</td></tr>
								<tr><td>10</td><td>2018.05.15 독신사 홈페이지 공지사항안내.</td><td>정욱재</td><td>2018-05-14</td><td>97</td></tr>
							</table>
						</td>
					</tr>
				</table>
			</div>			
			
			
		</div>		

		
	</div> <!-- homeCarousel -->	
</div> <!-- container div  -->

<div class="uk_modaldiv1"> 
  <%@ include file="/WEB-INF/views/A2.JUJ/newsmodal4.jsp" %>
</div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>