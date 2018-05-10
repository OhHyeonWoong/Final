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
	$(function(){	//show(), hide()방식으로 화면전환을 시도함.
		
		$("#jwj-main1").show(); /* 기본적으로 첫번째화면을 제외한 나머지 화면은 hide로가려지게 설정함. */
		$("#jwj-main2").hide(); 
		
		$(".carousel-inner > ")
	
		
		//카로우셀 왼쪽이동(<) 버튼을 눌렀을시 작동하는 메소드
		$(".left carousel-control").click(function(){
			$("#samplediv").html("기본 컨텐츠로 변경완료~~!");					
			$('#jwj-main2').hide();
			$('#jwj-main1').show();						
		});
		
		//카로우셀 오른쪽이동(>) 버튼을 눌렀을시 작동하는 메소드
		$(".right carousel-control").click(function(){
			$("#samplediv").html("반려동물 컨텐츠로 변경완료~~!");
			$('#jwj-main1').hide();
			$('#jwj-main2').show();			
		});		
		
	});
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
	<h2>Carousel Example</h2>  
	<div id="samplediv">
		<!-- carousel의 컨트롤을 확인하기 위한 임시영역 -->
	</div>
	<div id="homeCarousel" class="carousel slide" data-ride="carousel">
		Indicators

		<ol class="carousel-indicators">
			<li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#homeCarousel" data-slide-to="1"></li>
			<li data-target="#homeCarousel" data-slide-to="2"></li>
			<li data-target="#homeCarousel" data-slide-to="3"></li>
			<li data-target="#homeCarousel" data-slide-to="4"></li>
			<li data-target="#homeCarousel" data-slide-to="5"></li>
			<li data-target="#homeCarousel" data-slide-to="6"></li>
			<li data-target="#homeCarousel" data-slide-to="7"></li>
			<li data-target="#homeCarousel" data-slide-to="8"></li>
			<li data-target="#homeCarousel" data-slide-to="9"></li>			
		</ol>		
		<div class="carousel-inner">
			<div class="item active">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행1.jpg" alt="여행1" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/반려동물.jpg" alt="반려동물" style="width:100%;">
			</div>    
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행3.jpg" alt="여행3" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행4.jpg" alt="여행4" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행5.jpg" alt="여행5" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행6.jpg" alt="여행6" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/무한극장.gif" alt="무한극장" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행2.jpg" alt="여행2" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행4.jpg" alt="여행4" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행6.jpg" alt="여행6" style="width:100%;">
			</div>			
		</div>		
		<a class="left carousel-control" href="#homeCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#homeCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<!-- BigContents : 공지사항 / 생활 / 반려동물 / 게임 / 음악 / 렌탈 / 여행 문의 -->
<div class = "container">
	<div id="jwj-main1" class="jwj-main1"> 
		<table class = "ohw-home-table" border = "1">
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
	
	<!-- ------------------------------------------------------------------------------------------------------------------------------ -->
	<div id="jwj-main2" class="jwj-main2">  <!-- jwj-main2 : 반려동물 -->
		<table class = "ohw-home-table" border = "1">
			<tr>
				<td class = "ohw-home-table-td" align = "center"> 반 려 동 물 이벤트
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
				<td class = "ohw-home-table-td" align = "center"> 반 려 동 물 뉴즈
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
				<td class = "ohw-home-table-td" align = "center"> 반 려 동 물 공지사항
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
				<td class = "ohw-home-table-td" align = "center"> 반 려 동 물 FAQ
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

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>