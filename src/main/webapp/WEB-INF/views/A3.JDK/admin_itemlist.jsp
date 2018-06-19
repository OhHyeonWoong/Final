<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<div class="w3-container" style="width:75%; float: right;">
	<!-- 여기서 부터 작성하시면 됩니다.  -->
	<!-- 전체 아이템 리스트 작성 부분 -->
	<div>
	<h4>개별 아이템 리스트</h4>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>이름</th>
	            <th>종류</th>
	            <th>기간</th>
	            <th>가격</th>
	            <th>판매횟수</th>
	            <th>이미지</th>
	            <th class="text-center">수정</th>
	        </tr>
	        <tr>
	        <!-- 페이징처리 -->
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <tr>
	            <td>아이템 식별 번호</td>
	            <td>이름</td>
	            <td>종류</td>
	            <td>기간</td>
	            <td>가격</td>
	            <td>판매횟수</td>
	            <td>이미지</td>
	            <td class="text-center">
	            <a class='btn btn-danger btn-xs' data-toggle="modal" href="#item_modi">
	                <span class="glyphicon glyphicon-edit" ></span>상세보기</a>
	            </td>
	            </tr>
	</table>
	<div>
	
	</div>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
    <div style="margin: 0 auto; text-align:center;">
    <a class='btn btn-info btn-xs' data-toggle="modal" href="#item_modi_insert">
    <span class="glyphicon glyphicon-edit"></span>아이템 등록</a>
   </div>
    </div>
	<hr>
	<!-- 패키지 별 리스트 작성 부분 -->
    <div>
    <hr>
    <h4>패키지 리스트</h4>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>이름</th>
	            <th>종류</th>
	            <th>기간</th>
	            <th>가격</th>
	            <th>포함 아이템 식별번호</th>
	            <th>판매횟수</th>
	            <th class="text-center">수정</th>
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <tr>
	            <td>아이템 식별 번호</td>
	            <td>이름</td>
	            <td>종류</td>
	            <td>기간</td>
	            <td>가격</td>
	            <td>포함 아이템 식별 번호</td>
	            <td>판매횟수</td>
	                <td class="text-center">
	                <a class='btn btn-danger btn-xs' data-toggle="modal" href="#item_package">
	                <span class="glyphicon glyphicon-edit"></span>상세보기</a>
	                </td>
	            </tr>
	</table>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
	<div>
	
	</div>
    <div style="margin: 0 auto; text-align:center;">    	
    <a class='btn btn-info btn-xs' data-toggle="modal" href="#item_package_insert">
    <span class="glyphicon glyphicon-edit"></span>아이템 등록</a><br><br>
    	<label style="color: red">※ 변경시 최고 관리자한테 문의하시오.</label>
   </div>
    </div>
    <hr>
	<!-- 랜덤 박스 리스트 작성 부분 -->
    <div>
    <hr>
    <h4>랜덤 박스 리스트</h4>
	<table class="table table-striped custab">
	    <thead>
	        <tr>
	            <th>아이템 식별 번호</th>
	            <th>이름</th>
	            <th>종류</th>
	            <th>가격</th>
	            <th>포함 아이템 식별번호</th>
	            <th>판매횟수</th>
	            <th class="text-center">수정</th>
	        </tr>
	    </thead>
	    <!-- 실제 리스트 부분 -->
	            <%-- <c:forEach> --%>
	            <tr>
	            <td>아이템 식별 번호</td>
	            <td>이름</td>
	            <td>종류</td>
	            <td>가격</td>
	            <td>포함 아이템 식별번호</td>
	            <td>판매횟수</td>
                <td class="text-center">
                <a class='btn btn-danger btn-xs' data-toggle="modal" href="#item_random">
                <span class="glyphicon glyphicon-edit"></span>상세보기</a>
	            </td>
	            </tr>
	            <%-- </c:forEach> --%>
	</table>
	<br>
	<div>
	
	</div>
	<!-- 아이템 등록 하는 버튼 div 영역 -->
    <div style="margin: 0 auto; text-align:center;">
    <label style="color: red">※ 랜덤박스 추가는 불가능합니다!!</label>
   </div>
    </div>    
<!-- 작성 영역 끝-->
</div>
<!-- 영역  정리용 div 지우지 말것! -->
<div style="clear: both;"></div>
<br><br>
<!-- 등록 버튼 이나 수정 삭제 버튼시 뜨는 모달창 모음 -->
	<!-- 개별 아이템 수정 모달창 인클루드-->
	<%@ include file = "/WEB-INF/views/A3.JDK/admin_modals/admin_item_modi.jsp"  %>
	<!-- 패키지 아이템 수정 모달창 인클루드 -->
	<%@ include file = "/WEB-INF/views/A3.JDK/admin_modals/admin_item_package.jsp"  %>
	<!-- 랜덤 아이템 수정 모달창 인클루드 -->
	<%@ include file = "/WEB-INF/views/A3.JDK/admin_modals/admin_item_random.jsp"  %>
	<!-- 개별 아이템 등록 모달창-->
	<%@ include file="/WEB-INF/views/A3.JDK/admin_modals/admin_item_modi_insert.jsp" %>
	<!--패키지 아이템 등록 모달창-->
	<%@ include file="/WEB-INF/views/A3.JDK/admin_modals/admin_item_package_insert.jsp" %>
<!--푸터 -->
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</div>
</body>
</html>