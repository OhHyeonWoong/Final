<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<!-- 스크립트 영역 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<!-- 부트스트랩 링크 -->
<style type="text/css" src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<style type="text/css">
</style>
</head>
<body>
<!-- 헤더 -->
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
<div class="container">
 <!--사이드바 시작-->
 <%@ include file = "/WEB-INF/views/A3.JDK/admin_sidebar.jsp" %>
<!-- 사이드바 종료 -->
<!-- 내용 출력하기 -->
<!-- 이 div 안에 작성하시면 됩니다.  -->
<div class="w3-container" style="width:70%; float: right;">


<!-- 작성 영역 끝-->
</div>
</div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

</body>
</html>