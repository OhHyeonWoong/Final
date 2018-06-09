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
				<!-- <h2 align="center">통계 페이지</h2>
				<br> -->
				<h3 align="center">일일 로그인 수</h3>
				<div id="areachart"
					style=""></div><!-- width: 70%; height: 300px; -->
				<div>
					<%-- ${adminListCount} <br>
					${adminDate} <br>
					${adminVisitCount} --%>
				</div>
				<script>
				var chart = c3.generate({
					  bindto: "#areachart",
					  data: {
					    x: "date",
					    columns: [
					      /* ["date", "55세", "56세", "57세", "58세", "59세", "60세", "61세", "62세", "63세", "64세", "65세", "66세", "67세", "68세", "69세", "70세", "71세"],
					       */["date", 
					     	<c:forEach items="${adminDate}" var="date">
					            ${date},
					        </c:forEach>
					      ],
					      /* ["count", 2400, 2200, 2350, 2300, 2160, 2010, 1830, 1540, 1270, 1270, 1270, 1270, 1270, 1270, 1270, 1270, 1270],
					       */["count", 
					    	   <c:forEach items="${adminVisitCount}" var="count">
						            ${count},
						        </c:forEach>
					    	  /* for(int i=0;i<${adminListCount};i++){
					    		  if(i == ${adminListCount-1}){
						    		 ${adminVisitCount.get(i)}
						    	  }else{
						    		 ${adminVisitCount.get(i)},
						    	  }
					    	  } */
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
				</script>
			<!-- 작성 영역 끝-->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>

</body>
</html>