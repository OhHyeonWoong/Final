<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	
	$(function(){	

			$("--").on("click", function(){
				$.ajax({
					
				});		
			});
		
		$("#jwj-main1").show(); /* 기본적으로 첫번째화면을 제외한 나머지 화면은 hide로가려지게 설정함. */
		$("#jwj-main2").hide(); 
	
		
		//카로우셀 왼쪽이동(<) 버튼을 눌렀을시 작동하는 메소드
		$(".carousel slide .left carousel-control .glyphicon glyphicon-chevron-left").mousedown(function(){ 				
			$('#jwj-main2').hide();
			$('#jwj-main1').show();						
		});
		
		//카로우셀 오른쪽이동(>) 버튼을 눌렀을시 작동하는 메소드
		$(".carousel slide .right carousel-control .glyphicon glyphicon-chevron-right").mousedown(function(){ 				
			$('#jwj-main2').hide();
			$('#jwj-main1').show();						
		});
		
	}); //JQuery Ready
	
</script>
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
		width:50%;
		height:400px;
	}
	
	.ohw-carousel-img {
		height:400px !important;
	}
	
</style>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<div class="container">  

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
		
		<!-- BigContents : 공지사항 / 생활 / 반려동물 / 게임 / 음악 / 렌탈 / 여행 문의 -->
		<div class="carousel-inner">
			<div class="item active">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/생활.jpg" alt="생활" style="width:100%;">
			</div>    
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물.jpg" alt="반려동물" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/게임.jpg" alt="게임" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/음악2.jpg" alt="음악" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/렌탈.jpg" alt="렌탈" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행.jpg" alt="여행" style="width:100%;">
			</div>	
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="문의" style="width:100%;">
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
		
		<!-- BigContents : 공지사항 / 생활 / 반려동물 / 게임 / 음악 / 렌탈 / 여행 문의 -->
		<div class="carousel-inner">
			<div class="item active">
			<!-- <img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/공지사항.jpg" alt="공지사항" style="width:100%;"> -->

			<table class = "ohw-home-table" border = "1"> <!-- main  -->
				<tr>
					<td class = "ohw-home-table-td" align = "center"> 이벤트
						<table border="1">
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
					<td class = "ohw-home-table-td" align = "center"> 독신 뉴즈
						<table border="1">
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
					<td class = "ohw-home-table-td" align = "center"> 공지사항
						<table border="1">
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
					<td class = "ohw-home-table-td" align = "center"> FAQ
						<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 생활
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 생활 뉴즈 
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 생활 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 생활 FAQ
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 반려동물 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 반려동물 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 반려동물 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 반려동물 FAQ
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 게임 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 게임 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 게임 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 게임 FAQ
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 음악 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 음악 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 음악 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 음악 FAQ
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 렌탈 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 렌탈 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 렌탈 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 렌탈 FAQ
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 여행 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 여행 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 여행 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 여행 FAQ
							<table border="1">
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

				<table class = "ohw-home-table" border = "1"> <!-- 기타  -->
					<tr>
						<td class = "ohw-home-table-td" align = "center"> 기타 이벤트
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 기타 뉴즈
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 기타 공지사항
							<table border="1">
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
						<td class = "ohw-home-table-td" align = "center"> 기타 FAQ
							<table border="1">
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
		
		<!-- <a class="left carousel-control" href=".ohw-homeCarousel2" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> 화면상에 < 로 보여지는 버튼
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href=".ohw-homeCarousel2" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span> 화면상에 > 로 보여지는 버튼
			<span class="sr-only">Next</span>
		</a> -->
		
		
	</div> <!-- homeCarousel -->	
</div> <!-- container div  -->
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>