<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">

	<title>유저의 검색결과화면</title>
	<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/goodluck/resources/A2.JUJ/js/juj_sidebar.js"></script>	<!-- 따라다니는 사이드바 추가 -->

	<style type="text/css">
		/* effect */
		#ukjaeTitle_effect {
			font-size:13px;
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
	
		#ukjaeContents{
			font-size:9px;		
		}
	
		.ukjae_Bigcategory{
			width : 100%;
			height: 70px;
			border: 1px solid black;
			padding-top : 15px;
			padding-left: 70px;
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
			/* width: 260px; 	 */	
			/* height: 1450px; */ 
			/* border: 1px solid gray; */
			/* overflow: scroll; */
			padding-top: 0;
		}
		
		.uk_Area1{
			width: 900px;
			height: 100px;
			border: 1px solid #e3e3e3;
		}
		.uk_Area2{
			width: 900px;
			height: 500px;
			border: 1px solid #e3e3e3;

		}
		.uk_Area3{
			width: 900px;
			height: 120px;
			border: 1px solid #e3e3e3;
		}
		.uk_Area4{
			width: 900px;
			height: 150px;
			border: 1px solid #e3e3e3;		
		}

		#ukjae_TableAreaFiveth{
			/* background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg'); */
		}
		
		#ukjae_TableAreaFiveth tr td {
			width: 190px !important;
			height: 210px !important;
			padding: 0;
			margin: 0;
			border-radius: 20px;
			
		}

		#low_image_01 {
			width: 120px;
			height: 90px;
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

		<table class="ukTotal_Area"><!-- 영역을 잡는 전체테이블  -->
			<tr>
			  <td style="width: 1170px;">
			    <font id="ukjaeTitle_effect"> User입력한 검색어 : 애완동물 </font> <br>
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
				<p align="left" style="padding-left: 8px;"><font size="6">관련 이미지</font></p>
				<hr style="clear: both; margin-top: 0;">
				<table id="ukjae_TableAreaFiveth">
						<tr align="center">
						
							<td style="width: 5px; border: none;"></td> 									
							
							<td style="background: #ffffcc"><img id="low_image_01" alt="다섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감1.jpg" style="border: 1px solid gray;">
							<font id="ukjaeTitle_effect"> 아기강아지의 귀여움  </font><br>					
							
							<font id="ukjaeContents">

							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							(제 공 자 : 정 욱 재) 
							</font>
							
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
		
							<td style="background: #ffccff"><img id="low_image_01" alt="두번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 </font><br>	
							<font id="ukjaeContents">

							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							(제 공 자 : 정 욱 재) 
							</font>											
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td style="background: #ccffff"><img id="low_image_01" alt="세번째 후보" src="/goodluck/resources/common/img/pet/동물공감3.jpg">
							<font id="ukjaeTitle_effect"> 우리해병이를 잊지마 </font><br>	
							<font id="ukjaeContents">

							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							(제 공 자 : 정 욱 재) 
							</font>											
							</td>
							<td style="width: 5px; border: none;"></td> 	
		
							<td style="background: #ccccff"><img id="low_image_01" alt="네번째 후보" src="/goodluck/resources/common/img/pet/동물공감4.jpg">
							<font id="ukjaeTitle_effect"> 누가 더 귀여워? </font><br>	
							<font id="ukjaeContents">

							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.<Br>
							(제 공 자 : 정 욱 재) 
							</font>										
											
							</td>
							<td style="width: 5px; border: none;"></td> 	 	
		
							<td style="background: #ffcc99"><img id="low_image_01" alt="여섯번째 후보" src="/goodluck/resources/common/img/pet/동물공감2.jpg">
							<font id="ukjaeTitle_effect"> 동물도 은혜를갚는다 </font><br>	
							<font id="ukjaeContents">

							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.
							아기강아지가 있습니다. 아주 귀엽습니다.<Br>
							(제 공 자 : 정 욱 재) 
							</font>												
							</td>
							<td style="width: 5px; border: none;"></td> 		
						</tr>				
					</table><br>				
				
				
				
				</td>	
				<td rowspan="4" class="uk_SideArea">
					<div style="width:250px; height: 1650px; ">
						<%@ include file = "/WEB-INF/views/A2.JUJ/SearchResultSideBar.jsp" %>
					</div>			
				 </td>
			</tr>				
			<tr>
				<td class="uk_Area2"> 
				<p align="left" style="padding-left: 8px;"><font size="6">관련 게시글</font></p>
				<hr style="clear: both; margin-top: 0;">				
					<% for(int i=0; i<3; i++){ %>
					<table style="margin-left: 40px; border: 1px solid #e1e1ff;"> 
						<tr>
							<td rowspan="3"> 
							<img alt="" src="/goodluck/resources/common/img/pet/동물공감1.jpg" width="100" height="100"> 
							
							</td> 
							<td style="padding-top: 5px;"> 아기강아지 &nbsp;2018.05.15 </td> 
						</tr>	
						<tr>
							<td style="width: 640px;"> 2018년 5월27일 새로운 생명이 탄생하였습니다. 강아지의이름은 롯데월드의 주인공의 이름을 따서 로티 / 로리로 지었습니다.<br>
							 아주 사랑스럽죠? 
							 </td>
						</tr>  
					</table>
					<% } %>	
					<br>
				</td>	
			</tr>				
			<tr>
				<td class="uk_Area3"> 
				<p align="left" style="padding-left: 8px;"><font size="6">관련 게시글2</font></p>
				<hr style="clear: both; margin-top: 0;">				
					<table  style="margin-left: 40px;"> 
						<%for(int i=0; i<3; i++){ %>
						<tr>
							<td style="border: 1px solid #e3e3e3;"> Q.홈페이지 디자인 해드립니다. &nbsp;2018.05.15 </td> 
						</tr>
						<tr>
							<td style="border: 1px solid #e3e3e3; width: 750px;"> 
								아주 열심히 잘 할수 이씁니다. 							
								아주 열심히 잘 할수 이씁니다. 							
								아주 열심히 잘 할수 이씁니다. 							
								아주 열심히 잘 할수 이씁니다. 							
							</td>					 
						</tr>
						<tr>
							<td style="height: 30px; border: none;"></td> 								
						</tr>
						
						<% } %>						
					</table>
				</td>	
			</tr>				
			<tr>
				<td class="uk_Area4"> 
				<p align="left" style="padding-left: 8px;"><font size="6">관련 동영상</font></p>
				<hr style="clear: both; margin-top: 0;">				
					<table style="margin-left: 40px; /* border: 1px solid #e1e1ff; */"> 
					
						<tr>						
							<td colspan="2" align="center"> <font id="ukjaeTitle_effect"> 기절한 강아지 이동 시키기 ?!! </font> </td>
						</tr>
						<tr>
							<td rowspan="3"> 
							<iframe width="120" height="100" src="https://www.youtube.com/embed/o7nDLF935lE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>							
							
							<!-- <img alt="" src="/goodluck/resources/common/img/pet/동물공감1.jpg" width="100" height="100"> </td> --> 
							<td style="padding-top: 5px; padding-left: 8px;"> 호두랑 마루랑 &nbsp;  &nbsp;2018.05.15 </td> 
						</tr>	
						<tr>
							<td style="width: 550px; padding-left: 8px;"> 
								저번 영상과 이어지는 영상입니다! ㅎㅎ 꿀잠 자는 호두 마루는 새로운 집에 무사히 입주 할 수 있을까요? 영상으로 확인 해 주세요!
							 </td>
						</tr>
						<tr>
							<td style="height: 15px; padding-left: 8px;"> 좋아요? 구독? </td> 						
						</tr>
						<tr>
							<td style="height: 15px;">  &nbsp; </td> 						
						</tr>
						
						<tr>						
							<td colspan="2" align="center"> <font id="ukjaeTitle_effect"> 기절한 강아지 이동 시키기 ?!! </font> </td>
						</tr>
						<tr>
							<td rowspan="3"> 
							<iframe width="120" height="100" src="https://www.youtube.com/embed/o7nDLF935lE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>							
							
							<!-- <img alt="" src="/goodluck/resources/common/img/pet/동물공감1.jpg" width="100" height="100"> </td> --> 
							<td style="padding-top: 5px; padding-left: 8px;"> 호두랑 마루랑 &nbsp;  &nbsp;2018.05.15 </td> 
						</tr>	
						<tr>
							<td style="width: 550px; padding-left: 8px;"> 
								저번 영상과 이어지는 영상입니다! ㅎㅎ 꿀잠 자는 호두 마루는 새로운 집에 무사히 입주 할 수 있을까요? 영상으로 확인 해 주세요!
							 </td>
						</tr>
						<tr>
							<td style="height: 15px; padding-left: 8px;"> 좋아요? 구독? </td> 						
						</tr>
						<tr>
							<td style="height: 15px;">  &nbsp; </td> 						
						</tr>
						

					</table>
					<br>	
	
	
	
	
				</td>	
			</tr>				
			
		</Table>
			<P align="center" style="margin: 0; padding: 0;">	<A href="home.go">메인으로 돌아가기</A> </P>
		<Br>
	
	
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
	</body>
</html>