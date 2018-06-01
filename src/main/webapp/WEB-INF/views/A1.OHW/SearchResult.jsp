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
	
</script>

<div class="container">	            
	<table>
		<tr>
			<td class = "ohw-search-maintd" valign = "top">
				<table class="table table-hover ohw-search-table">
					<tr>
						<td><label></label></td>
						<td></td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>				
					</tr>
					<c:forEach var="searchList" items="${ searchList }">
						<tr>
							<td>${ searchList.agency_no }</td>
							<td><img src = ""></td>
							<td><a href = "">${ searchList.agency_title }</a></td>
							<td><img src = "">${ searchList.agency_writer }</td>
							<td>${ searchList.agency_enrolldate }</td>
						</tr>
					</c:forEach>
					<!-- QnA 페이징 처리를 해봅시다. -->
					<c:if test="${qnaPage.qnaListCount > 6}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnQnaReload(1); return false;"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${qnaPage.qnaEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnQnaReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != qnaPage.qnaEndRow}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq qnaPage.qnaEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= qnaPage.qnaMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < qnaPage.qnaMaxPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaMaxPage}); return false;">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${qnaPage.qnaListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- QnA 페이징 처리 End -->
					<!-- 페이징 처리 -->										
				</table>
			</td>
			<td>				
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