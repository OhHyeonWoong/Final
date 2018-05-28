<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>유저의 검색결과화면</title>
	<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
	<style type="text/css">
		.ukjae_Bigcategory{
			width : 100%;
			height: 70px;
			border: 1px solid black;
			padding-top : 15px;
			padding-left: 115px;
			background: darkgray;	
		}  
		
		.ukjae_Bigcategory li{
			list-style: none;
			display: inline;
			padding: 40px;
			font-size: 30px;
		}
		
		.ukjae_Bigcategory li a{
		color: white;
		border : 1px solid black;
		border-color: white;
		background-color: transparent;
		border-radius: 50px;	
		padding:5px;	
		}
		
		.ukjae_Bigcategory li a:hover{
		color: red;
		}
		
		.uk_SideArea{
			width: 260px; 		
			height: 100%; 
			overflow: scroll;
			border: 1px solid gray;
			padding-top: 0;
			
		}
		
		.uk_Area1{
			width: 900px;
			height: 100px;
			border: 1px solid gray;
		}
		.uk_Area2{
			width: 900px;
			height: 500px;
			border: 1px solid gray;

		}
		.uk_Area3{
			width: 900px;
			height: 120px;
			border: 1px solid gray;
		}
		.uk_Area4{
			width: 900px;
			height: 150px;
			border: 1px solid gray;		
		}



		#ukjae_TableAreaFiveth{
			/* background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); */
			border: none;
		}
		
		#ukjae_TableAreaFiveth tr td {
			width: 190px !important;
			height: 210px !important;
			padding: 0;
			margin: 0;
			border: 1px solid gray;
		}

		#low_image3 {
			width: 120px !important;
			height: 180px !important;
			padding: 0;
			margin: 0;
			padding: 0;
			margin: 0;
			border-radius: 20px;
		}

	</style>	
	
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
		<div class="container">
	

		<Table class="ukTotal_Area"><!-- 영역을 잡는 전체테이블  -->
			<tr>
			  <td style="width: 1170px;">
			  	User입력한 검색어 : 애완동물 <br>
			  	<nav>
			  		<ul class="ukjae_Bigcategory">
			  			<li><a href="#"> Total </a></li>
			  			<li><a href="#"> Image </a></li>
			  			<li><a href="#"> Video </a></li>
			  			<li><a href="#"> Articles </a></li>
			  		</ul>
			  	</nav>
			  </td>
			  <td style="padding: 0; margin: 0;" align="center">
			  	<img alt="여신수지" src="/goodluck/resources/common/img/main/이용자6.gif" style="width: 200px; height: 70px;">
			  </td>
			</tr> <!-- 검색바가 들어가는 영역 -->
			<tr>
				<td class="uk_Area1" align="center">  
				<p align="left" style="padding-left: 8px;"><font size="6">이미지</font></p>
				<hr style="clear: both; margin-top: 0;">
				<table id="ukjae_TableAreaFiveth">
						<tr align="center">
						
							<td style="width: 5px; border: none;"></td> 									
							
							<td><img id="low_image3" alt="다섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감1.jpg" style="border: 1px solid gray;">
							<font id="ukjaeTitle_effect"> 아기강아지의 귀여움 <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
		
							<td><img id="low_image3" alt="두번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td><img id="low_image3" alt="세번째 후보" src="/goodluck/resources/common/img/pet/동물공감3.jpg">
							<font id="ukjaeTitle_effect"> 우리해병이를 잊지마<br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td><img id="low_image3" alt="네번째 후보" src="/goodluck/resources/common/img/pet/동물공감4.jpg">
							<font id="ukjaeTitle_effect"> 누가 더 귀여워? <br>(제 공 자 : 정 욱 재) </font>					
							</td>
							<td style="width: 5px; border: none;"></td> 	 	
		
							<td><img id="low_image3" alt="여섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 <br>(제 공 자 : 정 욱 재) </font>				
							</td>
							<td style="width: 5px; border: none;"></td> 		
						</tr>				
					</table><br>					 
				
				
				
				</td>	
				<td rowspan="4" class="uk_SideArea" align="center" style="padding-top: 0;">
					<div style="border: 1px solid black; width: 95%; height: 100%;" align="center" >
						<br>
						<img alt="여신수지" src="/goodluck/resources/common/img/main/이용자6.gif" style="width: 200px; height: 200px;">
						
						<font size="2">실시간 검색어?</font> 
						<br>
						<ol>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 축구 </li>
							<li> 기차 </li>
							<li> 비행기 </li>
							<li> 여자 </li>
							<li> 미국 </li>
														
							</ol>
					</div>			
				 </td>
			</tr>				
			<tr>
				<td class="uk_Area2" align="center"> 
				<p align="left" style="padding-left: 8px;"><font size="6">관련기사1</font></p>
				<hr style="clear: both; margin-top: 0;">				
					<% for(int i=0; i<5; i++){ %>
					<table style="border: 1px solid black;"> 
						<tr>
							<td rowspan="3" style="border: 1px solid black;"> <img alt="" src="/goodluck/resources/common/img/pet/동물공감1.jpg" width="100" height="100"> </td> 
							<td style="border: 1px solid black;"> 아기강아지 &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 2018년 5월27일 새로운 생명이 탄생하였습니다. 강아지의이름은 롯데월드의 주인공의 이름을 따서 로티 / 로리로 지었습니다.<br>
							 아주 사랑스럽죠? 
							 </td>
						</tr>
					</table>
					<% } %>	
				</td>	
			</tr>				
			<tr>
				<td class="uk_Area3" align="center"> 
				<p align="left" style="padding-left: 8px;"><font size="6">관련기사2</font></p>
				<hr style="clear: both; margin-top: 0;">				
					<table style="border: 1px solid black; width: 95%;"> 
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
						<tr>
							<td style="border: 1px solid black;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid black;"> 아주 열심히 잘 할수 이씁니다.<br>
							 </td>
						</tr>
					</table>
				</td>	
			</tr>				
			<tr>
				<td class="uk_Area4"> 
					영역4
				</td>	
			</tr>				
			
		</Table>
		<hr style="clear: both;">
	
	
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
	</body>
</html>