<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/> -->
<!-- amCharts javascript sources -->
<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
<!-- amCharts javascript code -->
		<script type="text/javascript">
			AmCharts.makeChart("chartdiv",
				{
					"type": "serial",
					"theme":"light",
					"categoryField": "category",
					"startDuration": 1,
					"categoryAxis": {
						"gridPosition": "start"
					},
					"trendLines": [],
					"graphs": [
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-1",
							"title": "일별 로그인 수",
							"type": "column",
							"valueField": "column-1"
						}/* ,
						{
							"balloonText": "[[title]] of [[category]]:[[value]]",
							"fillAlphas": 1,
							"id": "AmGraph-2",
							"title": "graph 2",
							"type": "column",
							"valueField": "column-2"
						} */
					],
					"guides": [],
					"valueAxes": [
						{
							"id": "ValueAxis-1",
							"title": "인원 수"
						}
					],
					"allLabels": [],
					"balloon": {},
					"legend": {
						"enabled": true,
						"useGraphSettings": true
					},
					"titles": [
						{
							"id": "Title-1",
							"size": 25,
							"text": "일별 로그인 수?"
						}
					],
					"dataProvider": [
						{
							"category": '${adminDate.get(0)}',
							"column-1": ${adminVisitCount.get(0)}
						},
						{
							"category": '${adminDate.get(1)}',
							"column-1": ${adminVisitCount.get(1)}
						},
						{
							"category": '${adminDate.get(2)}',
							"column-1": ${adminVisitCount.get(2)}
						},
						{
							"category": '${adminDate.get(3)}',
							"column-1": ${adminVisitCount.get(3)}
						},
						{
							"category": '${adminDate.get(4)}',
							"column-1": ${adminVisitCount.get(4)}
						},
						{
							"category": '${adminDate.get(5)}',
							"column-1": ${adminVisitCount.get(5)}
						},
					]
				}
			);
		</script>
</head>
<body>
<%-- <c:forEach items="${adminCount}" var="count">
							'{"category":"${count.getLs_date()}","column-1":"${count.getVisitCount()}"},';
						</c:forEach> 
						{
							"category": '${adminDate.get(4)}',
							"column-1": ${adminVisitCount.get(4)}
						},
						{
							"category": '${adminDate.get(5)}',
							"column-1": ${adminVisitCount.get(5)}
						},
						{
							"category": '${adminDate.get(6)}',
							"column-1": ${adminVisitCount.get(6)}
						},
						{
							"category": '${adminDate.get(7)}',
							"column-1": ${adminVisitCount.get(7)}
						}, --%>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<!-- 차트용 스크립트 -->
	<!-- <script src="https://d3js.org/d3.v3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script> -->
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		<!--사이드바 시작-->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width: 70%; float: right;">
			<!-- 컨텐츠를 넣으세요 -->
				<!-- <h2 align="center">통계 페이지</h2>
				<br> -->
				<!-- <h3 align="center">일일 로그인 수</h3> -->
				<div id="chartdiv" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
				<!-- <div id="areachart"
					style=""></div>width: 70%; height: 300px;
				<script>
				var chart = c3.generate({
					  bindto: "#areachart",
					  data: {
					    x: "date",
					    columns: [
					      ["date", 
					    	   <c:forEach items="${adminDate}" var="date">
					             '${date}',
					            </c:forEach>
					      ],
						  ["count", 
					    	   <c:forEach items="${adminVisitCount}" var="count">
						            ${count},
						        </c:forEach>
					      ],
					    ],
					    types: {
					      count: "bar",
					    },
					    colors: {
					      count: "#B9062F",
					    },
					  },
					  bar: {
					    width: {
					      ratio: 0.5,            
					    },
					  },
					  axis: {
					    x: {
					      type: "category",
					    },
					  },
					});
				</script> -->
			<!-- 작성 영역 끝-->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>

</body>
</html>