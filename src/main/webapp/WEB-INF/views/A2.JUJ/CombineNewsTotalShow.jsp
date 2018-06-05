<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html>
	<head>
	<title>통합정보</title>
	<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>	
	<script type="text/javascript" src="/goodluck/resources/A2.JUJ/js/juj_sidebar.js"></script>	<!-- 따라다니는 사이드바 추가 -->		
	<style type="text/css">
		#ukjaeTitle_effect {
			color: red;
			animation: texteffect 2s infinite;
		}
		
		@-webkit-keyframes texteffect {
			from {color: red; }
			to { color: blue;  }
		}
		@keyframes texteffect  {
			from {color: red; }
			to { color: blue;  }
		}	
		.ukjae_table {
		    border-collapse: collapse;
		    width: 100%;
		}
		
		.ukjae_table th, td {
		    text-align: center;
		    padding: 5px;
		    height: 50px;
		}
		
		.ukjae_table tr:nth-child(even) {background-color: #f2f2f2;}
		.abs, #abs {
			color:white;
			text-align: center;
		}
		.dropdown-menu{
			background: white;
			color: black;
		}
		.icon{
			margin-top:5px;
			margin-bottom:12px;
			font-size: 15px;
		}
		.pageingtable{
			height: 7px;
			width: 100%;
		}
		.pageingtable tr td {
			background: black;
			height: 44px;
		}
		
		.pageingtable tr td a {
			color: white;
		}
		
		.pageingtable tr td a:hover{
			color: red;
		}

		#ukjae_TableAreaFiveth{
			/* background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); */
			border: none;
		}
		
		#ukjae_TableAreaFiveth tr td {
			width: 190px !important;
			height: 235px !important;
			padding: 0;
			margin: 0;
			border: 1px solid gray;
		}
		
		#low_image4 {
			width: 160px !important;
			height: 160px !important;
			padding: 0;
			margin: 0;
			padding: 0;
			margin: 0;
		}		
		.sidebar-nav li{
			padding-top: 20px;
			padding-bottom: 20px;
		}
		.na_1, .na_2, .na_3, .na_4{
			width: 153px;
			height: 59px;
		}
		ol .n1:hover{
			background:green;
			color: white;
		}
		
		ol .n1 .na_1:hover {
			background-color: orange;
		}
		ol .n2 .na_2:hover {
			background-color: olive;
		}
		ol .n3 .na_3:hover {
			background-color: silver;
		}
		ol .n4 .na_4:hover {
			background-color: aqua;
		}
		.C_title{
		  background: #3a6186; /* fallback for old browsers */
		  background: -webkit-linear-gradient(to left, #3a6186 , #89253e); /* Chrome 10-25, Safari 5.1-6 */
		  background: linear-gradient(to left, #3a6186 , #89253e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */		
	  	  color : #fff;  
	  	  border-radius: 10px;  
		}

	
	</style>
	<script type="text/javascript"> 
	
	
	</script>
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp"%>

	<div class="container" style="border: 1px dotted gray; border-radius: 42px;">
		<div align="center" class="C_title" style="width: 34%; padding-left: 7px; background-color: yellow; margin-left: 34%; margin-top: 10px;">
			<font style="font-size: 35px;"> News Information </font> <i class="fa fa-paper-plane" aria-hidden="true"></i> 
		</div>
		<div align="right">
			<table style="margin-right: 3%;">
				<tr>
					<td>
						<select>
							<option>제목</option>
							<option>작성자</option>
						</select>		
						<input type="text"> 	
						<button onclick="TotalSearch();">Search</button>		
					</td>
				</tr>
			</table>
			
		</div>
		<br>
		<script type="text/javascript">
			function TotalSearch(){
				alret("유저께서 통합검색을 시도하셨습니다.");
			}
			
		</script>		
		<div class="sidebar"style="height:1000px; width: 19%; float: left;" align="center">
			<%@ include file = "/WEB-INF/views/A2.JUJ/SearchResultSideBar.jsp" %>	
		  
           <!-- <ul class="nav sidebar-nav" style="height: 1002px; padding-top: 15px;">
               <li class="sidebar-brand">
                   <a href="javascript:" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; Life</a>
               </li>
               <li>
                   <a href="javascript:" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; Pet</a>
               </li>
               <li>
                   <a href="javascript:" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; Game</a>
               </li>
               <li>
                   <a href="javascript:" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; Travel</a>
               </li>

               <li class="dropdown" class="abs">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="abs"><span class="glyphicon glyphicon-cog icon"></span> &nbsp; 눌러바<span class="caret"></span></a>
                 <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">클릭요소의 세부리스트 사항 정렬</li>
                    <li><a href="#" class="abs">환</a></li>
                    <li><a href="#" class="abs">영</a></li>
                    <li><a href="#" class="abs">해</a></li>
                    <li><a href="#" class="abs">독</a></li>
                    <li><a href="#" class="abs">신</a></li>
                    <li><a href="#" class="abs">사</a></li>
                 </ul>
               </li>	                
           </ul>  -->
 			
		</div>
		
		<div class="center"style="width: 78%; height: 100%; float: left; margin-left: 2%">

			<%-- <c:forEach var="p1" items="${petlist}" step="1" end="5"> 
		
		
			</c:forEach>
			 --%>
			<!-- 메인 본문이들어가는 영역  -->
			<table id="ukjae_TableAreaFiveth">								
				<tr align="center">
					<% for(int i=0; i<5; i++){  %> 
					<td style="width: 5px; border: none;"></td>
					<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/news_pet/기사6_1.jpg">
					<font id="ukjaeTitle_effect"> 귀엽고 말랑말한 고양이 발바닥, 관리도 철저해야  <br> 출처 : Naver </font>						
					</td>
					<% } %>
					<td style="width: 5px; border: none;"></td>			
				</tr>
			</table>
			<br>

			<table id="ukjae_TableAreaFiveth">								
				<tr align="center">
					<% for(int i=0; i<5; i++){  %> 
					<td style="width: 5px; border: none;"></td>
					<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/news_pet/기사6_1.jpg">
					<font id="ukjaeTitle_effect"> 귀엽고 말랑말한 고양이 발바닥, 관리도 철저해야  <br> 출처 : Naver </font>						
					</td>
					<% } %>
					<td style="width: 5px; border: none;"></td>			
				</tr>
			</table>
			<br>
			
			<table id="ukjae_TableAreaFiveth">								
				<tr align="center">
					<% for(int i=0; i<5; i++){  %> 
					<td style="width: 5px; border: none;"></td>
					<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/news_pet/기사6_1.jpg">
					<font id="ukjaeTitle_effect"> 귀엽고 말랑말한 고양이 발바닥, 관리도 철저해야  <br> 출처 : Naver </font>						
					</td>
					<% } %>
					<td style="width: 5px; border: none;"></td>			
				</tr>
			</table>
			<br>
			
			<table id="ukjae_TableAreaFiveth">								
				<tr align="center">
					<% for(int i=0; i<5; i++){  %> 
					<td style="width: 5px; border: none;"></td>
					<td><img id="low_image4" alt="이미지 준비중" src="/goodluck/resources/common/img/news_pet/기사6_1.jpg">
					<font id="ukjaeTitle_effect"> 귀엽고 말랑말한 고양이 발바닥, 관리도 철저해야  <br> 출처 : Naver </font>						
					</td>
					<% } %>
					<td style="width: 5px; border: none;"></td>			
				</tr>
			</table>
			<br>				 
	
		</div>
	</div>
	
	<br>

	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
