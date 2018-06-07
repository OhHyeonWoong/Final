<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<!-- 스크립트 영역 -->
<script type="text/javascript"
	src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
</script>
<!-- 부트스트랩 링크 -->
<style type="text/css"
	src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<style type="text/css">

</style>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<!-- 차트용 스크립트 -->
	<script src="https://d3js.org/d3.v3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		<!--사이드바 시작-->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width: 70%; float: right;">
			<!-- 컨텐츠를 넣으세요 -->
				<h1 align="center">통계 페이지</h1>
				<br>
				<h4 align="center" style="color:#329632;">일일 방문자 수</h4>
				<div id="areachart"
					style="width: 70%; height: 300px; margin-left:270px;"></div>
				<br><br>
				<h4 align="center" style="margin-left: 300px; color:#CD1039;">일일 예약 횟수</h4>
				<div id="areachart1" align="center"
					style="width: 70%; height: 300px; margin-left:270px;"></div>
				<script>
					var areachart = c3.generate({
						bindto : "#areachart",
						data : {
							columns : [ 
									[ '총 접속자 수', 300, 350, 300, 190, 50, 25 ],
									[ '로그인한 유저 수', 130, 100, 140, 200, 150, 50 ] 
							],
							type : 'line',
							colors : {
								'방문자 수' : '#329632' //C12
							}
						},
						<%-- data : {
							x : 'x',
							columns : [
									[ 'x', 
										<% for(Visit v:totalVisit){ %>
										<% if(i == totalVisit.size()){ %>
											<%= totalVisit.get(i).getVisitDate() %>
										<% }else{ %>
											<%= "'" + v.getVisitDate() + "'" %>, 
											/* new java.util.Date() */
										<% } %>
										<% } %> 
										
									],
									[ '방문자 수', 
										<% for(int i=0;i<totalVisit.size();i++){ %>
											<% if(i == totalVisit.size()){ %>
												<%= totalVisit.get(i).getVisitCount() %>
											<% }else{ %>
												<%= totalVisit.get(i).getVisitCount() %>,
											<% } %>
										<% } %>
									] 
								], --%>
							/* type : 'line',
							colors : {
								'방문자 수' : '#329632' //C12
							} */
						},
					  axis : {
							x : {
								type : 'timeseries',
								tick : {
									format : '%y-%m-%d' //%H:%M:%S
								}
							}
						} 
					});

					var areachart1 = c3.generate({
						bindto : "#areachart1",
						  data : {
							columns : [ 
									[ '총 접속자 수', 300, 350, 300, 190, 50, 25 ],
									[ '로그인한 유저 수', 130, 100, 140, 200, 150, 50 ] 
							],
							type : 'line',
							colors : {
								'x' : '#B0F7FF',
								'예약 횟수': "#CD1039"
							}
						}, 
						<%-- data : {
							x : 'x',
							columns : [
									[ 'x', 
										<% for(Visit v:totalReservationCount){ %>
											<%= "'" + v.getVisitDate() + "'" %>, 
											/* new java.util.Date() */
										<% } %>
									],
									[ '예약 횟수', 
										<% for(int i=0;i<totalReservationCount.size();i++){ %>
											<%= totalReservationCount.get(i).getVisitCount() %>,
										<% } %>	
									] 
							],
							type : 'line',
							colors : {
								'x' : '#B0F7FF',
								'예약 횟수': "#CD1039"
							}
						}, --%>
						axis : {
							x : {
								type : 'timeseries',
								tick : {
									format : '%y-%m-%d' //%H:%M:%S
								}
							}
						}
					});
				</script>

			
			<!-- 작성 영역 끝-->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>

</body>
</html>