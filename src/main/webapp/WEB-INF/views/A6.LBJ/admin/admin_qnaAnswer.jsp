<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<!-- 스크립트 영역 -->
<!-- 부트스트랩 링크 -->
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		<!--사이드바 시작-->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width: 70%; float: right;">
			<!-- 컨텐츠를 넣으세요 -->
				<h3 align="center">QnA 답변하기</h3>
				<fieldset>
					<legend>답변 대기중</legend>
				</fieldset>
				<br><br>
				<fieldset>
					<legend>답변 완료</legend>
				</fieldset>
			<!-- 작성 영역 끝-->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>

</body>
</html>