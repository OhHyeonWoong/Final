<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SearchResult</title>

<style type="text/css">
	.ohw-search-maintd {
		width:950px;
	}
	.ohw-search-table {
		text-align:center;
	}
		
</style>	
 
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<!-- SideBar -->
<script type="text/javascript" src="/goodluck/resources/A2.JUJ/js/juj_sidebar.js"></script>
<!-- SideBar End -->

<div class="container">	            
	<table>
		<tr>
			<td class = "ohw-search-maintd">
				<table class="table table-hover ohw-search-table">
					<tr>
						<td><label></label></td>
						<td></td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>				
					</tr>	
					<tr>
						<td>20344</td>
						<td><img></td>
						<td>대세 쉐프 이연북과 함께 하는 즐거운 중화파티</td>
						<td><img src = "/goodluck/resources/common/img/level/lv62.gif"> 이연북</td>
						<td>2018-05-31</td>
					</tr>				
					<tr>
						<td>20344</td>
						<td><img></td>
						<td>대세 쉐프 이연북과 함께 하는 즐거운 중화파티</td>
						<td><img src = "/goodluck/resources/common/img/level/lv62.gif"> 이연북</td>
						<td>2018-05-31</td>
					</tr>				
					<tr>
						<td>20344</td>
						<td><img></td>
						<td>대세 쉐프 이연북과 함께 하는 즐거운 중화파티</td>
						<td><img src = "/goodluck/resources/common/img/level/lv62.gif"> 이연북</td>
						<td>2018-05-31</td>
					</tr>				
					<tr>
						<td>20344</td>
						<td><img></td>
						<td>대세 쉐프 이연북과 함께 하는 즐거운 중화파티</td>
						<td><img src = "/goodluck/resources/common/img/level/lv62.gif"> 이연북</td>
						<td>2018-05-31</td>
					</tr>
				</table>
			</td>
			<td>				
				<div class="sidecontrol_Div">
					<%@ include file = "/WEB-INF/views/A2.JUJ/SearchResultSideBar.jsp" %>
				</div>				
			</td>
		</tr>	
						
	</table>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
</body>
</html>