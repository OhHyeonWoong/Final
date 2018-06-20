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
	
	.pagination > li > a {
		cursor:pointer;
	}
	
	.ohw-search-sidebar {		
		width:220px;
		height:300px;
		margin:0px;
		padding:0px;
		background:gray;
	}
	
	.ohw-agency-title > a {
		text-decoration:none;
		color:black;
	}
	
	.ohw-agency-title > a:hover {
		text-decoration:none;
		color:purple;
	}
	
	.ohw-search-sidebar-table {
		width:100%;
		text-align:center;
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
	        yPosition = $win.scrollTop() - 104; //이부분을 조정해서 화면에 보이도록 맞추세요
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
		
	function pageCount(searchKeyword, masterPage, slavePage) {
		console.log("searchKeyword : " + searchKeyword + 
				" / masterPage : " + masterPage + 
				" / slavePage : " + slavePage);
		var sk = "headerSearch.go?searchKeyword="+searchKeyword+"&curMasterPage="+masterPage+"&curSlavePage="+slavePage;
		console.log(sk);
		location.href="headerSearch.go?searchKeyword="+searchKeyword+"&curMasterPage="+masterPage+"&curSlavePage="+slavePage;
		return true;
	}
</script>

<div class="container">	            
	<table>
		<tr>
			<td class = "ohw-search-maintd" valign = "top">
				<h6>현재 검색어 : ${ searchResult.searchKeyword }</h6>
				<table class="table table-hover ohw-search-table">					
					<tr>
						<td colspan = "5" align = "left">
							<h2>주인님들의 글</h2>
						</td>
					</tr>
					<tr>
						<td><label></label></td>						
						<td>
							<input type = "hidden" class = "ohw-hidden-get" value = "${ searchResult.searchKeyword }" name = "searchKeyword" readonly>						
						</td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>				
					</tr>
					<c:forEach var="searchMasterResult" items="${ searchResult.searchMasterList }">						
						<tr>
							<td>${ searchMasterResult.agency_no }</td>
							<td><img src = ""></td>
							<td class = "ohw-agency-title">
								<a href = "BoardDetail.go?BoardNo=${ searchMasterResult.agency_no }">${ searchMasterResult.agency_title }</a>
							</td>							
							<td>
								<img src = "/goodluck/resources/common/img/level/lv${ searchMasterResult.score_buy_rate }.gif">
								${ searchMasterResult.agency_writer }
							</td>
	         				<td>${ searchMasterResult.agency_enrolldate }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan = "5" align = "center">
							<ul class = "pagination">
								<c:if test="${ searchResult.pagingMasterView.curBlock > 1 }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '1', '${ searchResult.pagingSlaveView.curPage }')">
											처음
										</a>
									</li>
								</c:if>
								<c:if test="${ searchResult.pagingMasterView.curBlock > 1 }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.prevPage }', '${ searchResult.pagingSlaveView.curPage }')">
											이전
										</a>
									</li>
								</c:if>
								<c:forEach var="pagingMasterView" 
									begin="${ searchResult.pagingMasterView.blockBegin }" 
									end="${ searchResult.pagingMasterView.blockEnd }">
									<c:choose>
										<c:when test="${ pagingMasterView == searchResult.pagingMasterView.curPage }">
											<li class = "active">
												<span style = "color:white;">
													${ pagingMasterView }
												</span>
											</li>
										</c:when>
										<c:otherwise>
											<li>
												<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ pagingMasterView }', '${ searchResult.pagingSlaveView.curPage }')">${ pagingMasterView }</a>
											</li>
										</c:otherwise>
									</c:choose>								
								</c:forEach>
								<c:if test="${ searchResult.pagingMasterView.curBlock <= searchResult.pagingMasterView.totBlock }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.nextPage }', '${ searchResult.pagingSlaveView.curPage }')">
											다음
										</a>
									</li>
								</c:if>
								<c:if test="${ searchResult.pagingMasterView.curBlock <= searchResult.pagingMasterView.totBlock }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.totPage }', '${ searchResult.pagingSlaveView.curPage }')">
											끝
										</a>
									</li>
								</c:if>							
							</ul>
						</td>
					</tr>
				</table>
			</td>
			<td valign = "top" rowspan = "5">				
				<div class="ohw-search-sidebar">
					<table class = "ohw-search-sidebar-table">
						<tr>
							<td align = "center">최근에 본 글</td>
						</tr>
						<c:forEach var = "viewHistory" items = "">
							<tr>
								<td>
									
								</td>
							</tr>
						</c:forEach>						
					</table>
				</div>				
			</td>			
		</tr>
		<tr>
			<td class = "ohw-search-maintd" valign = "top">
				<table class="table table-hover ohw-search-table">
					<tr>
						<td colspan = "5" align = "left">
							<h2>노예들의 글</h2>
						</td>
					</tr>
					<tr>
						<td><label></label></td>						
						<td><input type = "hidden" class = "ohw-hidden-get" value = "${ searchResult.searchKeyword }" name = "searchKeyword" readonly></td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>				
					</tr>
					<c:forEach var="searchSlaveResult" items="${ searchResult.searchSlaveList }">
						<tr>
							<td>${ searchSlaveResult.agency_no }</td>
							<td><img src = ""></td>
							<td class = "ohw-agency-title"><a href = "BoardDetail.go?BoardNo=${ searchSlaveResult.agency_no }">${ searchSlaveResult.agency_title }</a></td>
							<td><img src = "/goodluck/resources/common/img/level/lv${ searchSlaveResult.score_sell_rate }.gif"> ${ searchSlaveResult.agency_writer }</td>
							<td>${ searchSlaveResult.agency_enrolldate }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan = "5" align = "center">
							<ul class = "pagination">
								<c:if test="${ searchResult.pagingSlaveView.curBlock > 1 }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.curPage }', '1')">
											처음
										</a>
									</li>
								</c:if>
								<c:if test="${ searchResult.pagingSlaveView.curBlock > 1 }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.curPage }', '${ searchResult.pagingSlaveView.prevPage }')">
											이전
										</a>
									</li>
								</c:if>
								<c:forEach var="pagingSlaveView" 
									begin="${ searchResult.pagingSlaveView.blockBegin }" 
									end="${ searchResult.pagingSlaveView.blockEnd }">
									<c:choose>
										<c:when test="${ pagingSlaveView == searchResult.pagingSlaveView.curPage }">
											<li class = "active">
												<span style = "color:white;">
													${ pagingSlaveView }
												</span>
											</li>
										</c:when>
										<c:otherwise>
											<li>
												<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.curPage }', '${ pagingSlaveView }')">${ pagingSlaveView }</a>
											</li>
										</c:otherwise>
									</c:choose>								
								</c:forEach>
								<c:if test="${ searchResult.pagingSlaveView.curBlock <= searchResult.pagingSlaveView.totBlock }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.curPage }', '${ searchResult.pagingSlaveView.nextPage }')">
											다음
										</a>
									</li>
								</c:if>
								<c:if test="${ searchResult.pagingSlaveView.curBlock <= searchResult.pagingSlaveView.totBlock }">
									<li>
										<a onClick = "pageCount('${ searchResult.searchKeyword }', '${ searchResult.pagingMasterView.curPage }', '${ searchResult.pagingSlaveView.totPage }')">
											끝
										</a>
									</li>
								</c:if>							
							</ul>
						</td>
					</tr>
				</table>
			</td>						
		</tr>					
	</table>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp"  %>
</body>
</html>