<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<!-- 스크립트 영역 -->
<script type="text/javascript"
	src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
});	

	
</script>
<!-- 부트스트랩 링크 -->
<style type="text/css"
	src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<style type="text/css">
</style>
</head>
<body id="main">
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<div class="container">
		<!-- 사이드바 -->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<div class="w3-container" style="width: 80%; float: right;">
			<!-- 여기서 부터 작성하시면 됩니다.  -->

			<!-- 관리자 회원 관리 리스트 시작 -->
			<!-- 헤더 영역 -->
			<h3 style="text-align: center;">회원 관리</h3>
			<hr>
			<!-- 회원 검색 -->
			<div>
				<form>
					<div style="float:left;">
						<select class="form-control" name="searchOption">
							<option value="">이름</option>
							<option value="">아이디</option>
							<option value="">이메일</option>
							<option value="">생년월일</option>
							<option value="">회원번호</option>
						</select>
					</div>
					<div>
						<input type="text" class="form-control" placeholder="Search" name="searchMember" style="float: left; width: 30%;">
						<div class="input-group-btn" style="right;">
							<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i> Search
							</button>
						</div>
					</div>
				</form>
			</div>
			<hr>
			<br>
			<!-- 리스트 출력 테이블 -->
			<table class="table">
				<thead>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>생년월일</th>
						<th>Email</th>
						<th class="text-center"></th>
					</tr>
				</thead>
				<c:foreach> 
				<tr>
					<td>아이디</td>
					<td>이름</td>
					<td>생년월일</td>
					<td>Email</td>
					<td class="text-center"><a class='btn btn-info btn-xs'
						href="#"><span class="glyphicon glyphicon-edit"></span>수정</a> <a
						href="#" class="btn btn-danger btn-xs"><span
							class="glyphicon glyphicon-remove"></span>회원 탈퇴 </a></td>
				</tr>
				</c:foreach>
			</table>
		</div>
		<!-- 작성 영역 끝-->
	</div>

	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>
</body>
</html>