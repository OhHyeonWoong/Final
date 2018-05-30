<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저의 검색결과화면</title>

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
	
	.uk_SideArea{		
		padding-top: 0;
	}
	.uk_Area3{
		width: 900px;
		height: 120px;
		border: 1px solid #e3e3e3;
	}
		.ukjae_realContents{
		margin-left: 45px;
	}
	
	.ukjae_realContents tr .sm1{
		border: 1px solid #e3e3e3;
		width: 780px;
	} 
	
	.ukjae_realContents tr .sm2{
		height: 30px;
		border: none;
	}
	
	.sidecontrol_Div{
		width:250px;
		height: 1350px;
	}
		
	.bottom_area{
		margin: 0;
		padding: 0;
	}
</style>	
 
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<script type="text/javascript" src="/goodluck/resources/A2.JUJ/js/juj_sidebar.js"></script>
	<div class="container">	
		<font id="ukjaeTitle_effect"> User입력한 검색어 : 애완동물 </font> <br>
		<table class="ukTotal_Area">
			<tr>
			<td class="uk_Area3"> 
			<div style="width:auto; height: 1350px;">
			<p align="center" style="padding-left: 8px;"><font size="6">검 색 결 과</font></p>
			<hr style="clear: both; margin-top: 0;">				
				<table class="ukjae_realContents"> 
					<%for(int i=0; i<10; i++){ %>
					<tr>
						<td> 
						<font id="ukjaeTitle_effect">Q.홈페이지 디자인 해드립니다.</font> &nbsp;&nbsp;
						2018.05.15 
						</td> 
					</tr>
					<tr>
						<td class="sm1"> 
							안녕하세요? 웹 디자이너 나잘해 입니다. 3주정도 시간주시면 예쁜디자인의 홈페이지 
							만들어드리겠습니다. 희망 단가는 700만원입니다. 많은연락 부탁드립니다.^^							
						</td>					 
					</tr>
					<tr>
						<td class="sm2"></td> 								
					</tr>
					
					<% } %>						
				</table>
				</div>
				</td>	
				<td rowspan="4" class="uk_SideArea">
					<div class="sidecontrol_Div">
						<%@ include file = "/WEB-INF/views/A2.JUJ/SearchResultSideBar.jsp" %>
					</div>			
				 </td>
			</tr>				
		</table>
		<br>
		<p class="bottom_area" align="center"><a href="home.go">메인으로 돌아가기</a></p>
		<br>
</div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
</body>
</html>