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
		$("#topcaro, #topcaro1").click(function(){
		      
		         //리스트별 컬러추가.
		         colors=["red","blue","black","white","yellow","orange","gray"];
		         pictures=["/goodluck/resources/common/img/main/공지사항.jpg","/goodluck/resources/common/img/main/생활.jpg","/goodluck/resources/common/img/main/반려동물2","/goodluck/resources/common/img/main/게임.jpg","/goodluck/resources/common/img/main/음악.jpg","/goodluck/resources/common/img/main/렌탈.jpg","/goodluck/resources/common/img/main/여행.jpg","/goodluck/resources/common/img/main/프리랜서.jpg","/goodluck/resources/common/img/main/구인.jpg"];
		         
		         for(var i=0; i<8 ; i++){
		            console.log($("div#"+i+".item.active").attr("id"));
		            
		            if($("div#"+i+".item.active").attr("id") >= 0 )
		            	picture=pictures[$("div#"+i+".item.active").attr("id")];
		            	
		         $("#main").attr("background",picture);     
     
		         
		         }
		});	
	});  
</script>
<link rel="stylesheet" type="text/css" href="resources/common/css/ukjaeAnimal.css">
<link rel="stylesheet" type="text/css" href="resources/common/css/ukjaetablestyle.css">
<link rel="stylesheet" type="text/css" href="resources/common/css/ukjaetablestyle2.css">
<link rel="stylesheet" type="text/css" href="resources/common/css/ukjaetablestyle3.css">
<style type="text/css">

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
		padding-top:0;
		width:50%;
		height:400px;
	}
	
    .ohw-home-table-td font {
	position: relative;
    -webkit-animation: mymove2 5s infinite; /* Safari 4.0 - 8.0 */
    -webkit-animation-delay: 2s; /* Safari 4.0 - 8.0 */
    animation: mymove10 5s infinite;
    animation-delay: 2s;
    
	}
	
	/* Safari 4.0 - 8.0 */
	@-webkit-keyframes mymove10 {
	    from {left: -200px;}
	    to {left: 10px;}
	}
	
	@keyframes mymove10 {
	    from {left: -200px;}
	    to {left: 10px;}
	}	
	
	.ohw-carousel-img {
		height:400px !important;
	}		
	
</style>

</head> 
<body id="main" class="main" background="/goodluck/resources/common/img/main/공지사항.jpg" style="background-size: 100%;">
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div class="container" id="container">  
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
			<div class="item active" id="0">
				<a href="Notice.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;"></a>
				<c:set var="v1" value="/goodluck/resources/common/img/main/공지사항.jpg"/>
			</div>
			
			<div class="item" id="1">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;"></a>	
			</div>    

			<div class="item" id="2">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물2.jpg" alt="반려동물" style="width:100%;"></a>
			</div>

			<div class="item" id="3">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;"></a>
			</div>

			<div class="item" id="4">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악.jpg" alt="음악" style="width:100%;"></a>
			</div>

			<div class="item" id="5">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;"></a>
			</div>

			<div class="item" id="6">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행.jpg" alt="여행" style="width:100%;"></a>
			</div>	

			<div class="item" id="7">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/프리랜서.jpg" alt="프리랜서" style="width:100%;"></a>
			</div>

			<div class="item" id="8">
				<a href="Board.go"><img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/구인.jpg" alt="구인" style="width:100%;"></a>
			</div>
		</div>		
		
		<a class="left carousel-control" href=".ohw-homeCarousel" data-slide="prev" id="topcaro">
			<span class="glyphicon glyphicon-chevron-left"></span> <!-- 화면상에 < 로 보여지는 버튼 -->
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href=".ohw-homeCarousel" data-slide="next" id="topcaro1">
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
										<tr align="center"> <td><h4>"연령대별 독신가구 소득·소비 실태"</h4></td> </tr>
									</table>
								</div>		
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr> <td><a href="http://news.donga.com/3/all/20180401/89399594/1"><img class="ohw-carousel-img" src="/goodluck/resources/common/img/main/독신뉴스4.jpg" alt="이미지준비중.."  width="400" height="150"></a></td></tr>
										<tr align="center"> <td><h4>“결혼 해봐야 돈만 들지… 독신이 낫다</h4></td> </tr>
									</table>						
								</div>																
								<div class="item">
									<table style="padding: 0; margin: 0; background: #ffffff;">
										<tr align="center"><td style="padding: 0;"><iframe width="567" height="395" style="border: 1px solid black;" src="https://www.youtube.com/embed/QI7cYnBlkFQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></td></tr>
										<tr align="center"><td><h4>"[혼밥의정석]색다른 도시락 메뉴 없을까 싶을 때, 키쉬"</h4></td></tr>
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
										<tr align="center"> <td><h4>"나 홀로 시대"</h4></td> </tr>
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
						<td class = "ohw-home-table-td" align = "center" style="padding: 0; margin: 0;"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
							<table class="jwj-innertable2" border="1">
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
							<table class="jwj-innertable2" border="1">
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
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
							<table class="jwj-innertable2" border="1">
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
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;"> FAQ </font>
							<table class="jwj-innertable2" border="1">
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
							<!-- Team -->
							<section id="team" class="pb-5">
							    <div id="team_inner_div">
							        <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
							        <div class="row">
							        
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="/goodluck/resources/common/img/main/반려동물2.jpg" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">페퍼</h4>
							                                    <p class="card-text"> Mouse On.. </p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4" style="padding: 0; margin: 0;">
							                                    <h4 class="card-title"> 페퍼 </h4>
							                                    <p class="card-text" style="padding-right: 10px;" align="center">
							                                    	<Table style="text-align: center;" border="1">
							                                    		<tr><td colspan="2" align="center"> Sort : 코숏 </td></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table>
							                                    </p>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_02.png" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">타래</h4>
							                                    <p class="card-text">Mouse On..</p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Sunlimetech</h4>
							                                    <p class="card-text"> 
							 										<Table style="text-align: center;" border="1">
							                                    		<tr><th colspan="2" align="center"> Sort : 코숏 </th></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table>                                   
							                                    
							                                     </p>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_03.png" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">혼다</h4>
							                                    <p class="card-text"> Mouse On.. </p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Sunlimetech</h4>
							                                    <p class="card-text">
							 										<Table style="text-align: center;" border="1">
							                                    		<tr><th colspan="2" align="center"> Sort : 코숏 </th></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table>      							                                    
							                                    
							                                    
							                                    </p>

							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_04.jpg" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">야옹이</h4>
							                                    <p class="card-text"> Mouse On..</p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Sunlimetech</h4>
							                                    <p class="card-text">
							 										<Table style="text-align: center;" border="1">
							                                    		<tr><th colspan="2" align="center"> Sort : 코숏 </th></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table>      							                                    
							                                    
							                                    
							                                    </p>

							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_05.png" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">깜냥이</h4>
							                                    <p class="card-text"> Mouse On..</p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Sunlimetech</h4>
							                                    <p class="card-text">
							 										<Table style="text-align: center;" border="1">
							                                    		<tr><th colspan="2" align="center"> Sort : 코숏 </th></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table>      							                                    
							                                    
							                                    
							                                    </p>

							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							            <!-- Team member -->
							            <div class="col-xs-12 col-sm-6 col-md-4">
							                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
							                    <div class="mainflip">
							                        <div class="frontside">
							                            <div class="card">
							                                <div class="card-body text-center">
							                                    <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_06.jpg" alt="card image" width="90" height="65"></p>
							                                    <h4 class="card-title">나비</h4>
							                                    <p class="card-text"> Mouse On.. </p>
							                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
							                                </div>
							                            </div>
							                        </div>
							                        <div class="backside">
							                            <div class="card">
							                                <div class="card-body text-center mt-4">
							                                    <h4 class="card-title">Sunlimetech</h4>
							                                    <p class="card-text">
							 										<Table style="text-align: center;" border="1">
							                                    		<tr><th colspan="2" align="center"> Sort : 코숏 </th></tr>
							                                    		<tr><td>Age</td><td>2세</td></tr>
							                                    		<tr><td>Gender</td><td>남아</td></tr>
							                                    		<tr><td>character</td><td>개냥이</td></tr>
							                                    		<tr><td>like</td><td>오뎅꼬치장난감</td></tr>
							                                    		<tr><td>Pay</td><td>200,000원</td></tr>
							                                    	</Table> 
							                                    </p>
							                                </div>
							                            </div>
							                        </div>
							                    </div>
							                </div>
							            </div>
							            <!-- ./Team member -->
							
							        </div>
							    </div>
							</section>
							<!-- Team -->






						</td>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;"> 뉴스ROOM </font>							
							<table class="jwj-innertable3" border="1">
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
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
							<table class="jwj-innertable3" border="1">
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
							<table class="jwj-innertable3" border="1">
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
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">ROOM</font>
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
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악2.jpg" alt="음악" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 음악  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;"> -->
				<table class = "ohw-home-table" border = "1"> <!-- 렌탈  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
						<td class = "ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">공지사항</font>
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
						<td class = "ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">FAQ</font>
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
						<td class="ohw-home-table-td" align = "center"><font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="문의" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 프리랜서  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
				<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="문의" style="width:100%;"> -->

				<table class = "ohw-home-table" border = "1"> <!-- 구인  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> <font size="6" face="굴림" style="font-weight: bold;">이벤트</font>
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
			
			
		</div>		

		
	</div> <!-- homeCarousel -->	
</div> <!-- container div  -->

<div class="uk_modaldiv1"> 
  <%@ include file="/WEB-INF/views/A2.JUJ/newsmodal4.jsp" %>
</div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>