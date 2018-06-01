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
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<div class="container">
<!--사이드바 시작-->
<%@ include file = "/WEB-INF/views/A3.JDK/admin_sidebar.jsp" %>
<!-- 사이드바 종료 -->
<!-- 내용 출력하기 -->
	<div class="w3-container" style="width:70%; float: right;">
	<!-- 여기서 부터 작성하시면 됩니다.  -->
	<!-- 전체 아이템 리스트 작성 부분 -->
	<div>
	<hr>
	<h3>전체 아이템 리스트</h3>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>아이템 명</th>
	            <th>종류</th>
	            <th>기간</th>
	            <th class="text-center">수정 및 삭제</th>
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <tr>
	                <td>9010222</td>
	                <td>캐시 아이템</td>
	                <td>90일</td>
	                <td>90일</td>
	                <td class="text-center">
	                <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>수정</a>
	                <a class="btn btn-danger btn-xs" href="#"><span class="glyphicon glyphicon-remove"></span>삭제</a>
	                </td>
	            </tr>
	</table>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
    <div style="margin: 0 auto; text-align:center;">
    <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>아이템 등록</a>
   </div>
    </div>
	<hr>
	<!-- 패키지 별 리스트 작성 부분 -->
    <div>
    <hr>
    <h3>패키지 리스트</h3>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>아이템 명</th>
	            <th>종류</th>
	            <th>기간</th>
	            <th class="text-center">수정 및 삭제</th>
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <tr>
	                <td>9010222</td>
	                <td>캐시 아이템</td>
	                <td>90일</td>
	                <td>90일</td>
	                <td class="text-center">
	                <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>수정</a>
	                <a class="btn btn-danger btn-xs" href="#"><span class="glyphicon glyphicon-remove"></span>삭제</a>
	                </td>
	            </tr>
	</table>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
    <div style="margin: 0 auto; text-align:center;">
    <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>아이템 등록</a>
   </div>
    </div>
    <hr>
	<!-- 랜덤 박스 리스트 작성 부분 -->
    <div>
    <hr>
    <h3>랜덤 박스 리스트</h3>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>아이템 명</th>
	            <th>종류</th>
	            <th>기간</th>
	            <th class="text-center">수정 및 삭제</th>
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <%-- <c:forEach> --%>
	            <tr>
	                <td>9010222</td>
	                <td>캐시 아이템</td>
	                <td>90일</td>
	                <td>90일</td>
	                <td class="text-center">
	                <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>수정</a>
	                <a class="btn btn-danger btn-xs" href="#"><span class="glyphicon glyphicon-remove"></span>삭제</a>
	                </td>
	            </tr>
	            <%-- </c:forEach> --%>
	</table>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
    <div style="margin: 0 auto; text-align:center;">
    <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>아이템 등록</a>
   </div>
    </div>    
<!-- 작성 영역 끝-->
</div>
<!-- 영역  정리용 div 지우지 말것! -->
<div style="clear: both;"></div>
<!-- 영역  정리용 div 지우지 말것! -->
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</div>
</body>
</html>