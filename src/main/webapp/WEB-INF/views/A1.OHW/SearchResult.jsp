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
	
	.ohw-search-sidebar {		
		width:220px;
		height:300px;
		margin:0px;
		padding:0px;
		background:gray;
	}
		
</style>	
 
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<script type="text/javascript">
	/* SideBar */
	$(function(){
	    var $win = $(window);
	    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
	     /*사용자 설정 값 시작*/
	    var speed          = 1000;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
	    var easing         = 'swing'; // 따라다니는 방법 기본 두가지 linear, swing
	    var $layer         = $('.ohw-search-sidebar'); // 레이어 셀렉팅
	    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
	    $layer.css('position', 'relative').css('z-index', '1');
	    /*사용자 설정 값 끝*/
	     // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
	    if (top > 0 )
	        $win.scrollTop(layerTopOffset+top);
	    else
	        $win.scrollTop(0);
	     //스크롤이벤트가 발생하면
	    $(window).scroll(function(){
	        yPosition = $win.scrollTop() - 200; //이부분을 조정해서 화면에 보이도록 맞추세요
	        if (yPosition < 0)
	    { 
	            yPosition = 0;
	    }
	        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
	    });
	});
	$(function(){
		$(window).scroll(function(){
			$(this).scrollTop() > -100 ? $(".ohw-search-sidebar").fadeIn() : $(".ohw-search-sidebar").fadeOut();
		});
	});
	/* SideBar End */
	
	/* SearchResultAjax */
	$.ajax({
	   	url:"headerSearchAjax.go",
	   	type:"POST",
	   	data:
	   	dataType:"json",
	   	success:
	   		function(data) {
	   			var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				var searchList = "";											
				
				for(var i in json.searchList){				
					searchList += '<tr><td class = ""><a id = "' + json.searchList[i].agency_no + '" onClick = "" >' + json.searchList[i].agency_title + '</a></td></tr>'
				}
				
				$('.ohw-search-table').append(searchList);				
					
			}, 
		error : function(request, status, errorData) {
					alert("Error Code : " + request.status + "\n"
					+ "Message : " + request.responseText + "\n"
					+ "Error : " + errorData);
		}
	});	
	/* SearchResultAjax End */

	$(document).ready(function() {
		$('.ohw-hidden-get').val(<%=  %>);
	});
	
</script>

<div class="container">	            
	<table>
		<tr>
			<td class = "ohw-search-maintd" valign = "top">
				<table class="table table-hover ohw-search-table">
					<tr>
						<td><label></label></td>
						<td><input type = "text" class = "ohw-hidden-get" value = "${ searchKeyword }" name = "searchKeyword"></td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>				
					</tr>
					<%-- <c:forEach var="searchList" items="${ searchList }">
						<tr>
							<td>${ searchList.agency_no }</td>
							<td><img src = ""></td>
							<td><a href = "">${ searchList.agency_title }</a></td>
							<td><img src = "">${ searchList.agency_writer }</td>
							<td>${ searchList.agency_enrolldate }</td>
						</tr>
					</c:forEach> --%>													
				</table>
			</td>
			<td valign = "top">				
				<div class="ohw-search-sidebar">
					<table>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
					</table>
				</div>				
			</td>
		</tr>						
	</table>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
</body>
</html>