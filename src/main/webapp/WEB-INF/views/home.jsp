<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>

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
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행1.jpg" alt="여행1" style="width:100%;">
			</div>
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행2.jpg" alt="여행2" style="width:100%;">
			</div>    
			<div class="item">
				<img class = "ohw-carousel-img" src="/goodluck/resources/common/img/main/여행3.jpg" alt="여행3" style="width:100%;">
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

<div class = "container">
	<div>
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
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>