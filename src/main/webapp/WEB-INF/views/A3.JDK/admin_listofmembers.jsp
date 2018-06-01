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

<body id="main">
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<div class="container">
<!-- 사이드바 -->
  <%@ include file = "/WEB-INF/views/A3.JDK/admin_sidebar.jsp" %>
<!-- 사이드바 종료 -->
<!-- 내용 출력하기 -->
<div class="w3-container" style="width:70%; float: right;">
<!-- 여기서 부터 작성하시면 됩니다.  -->

<!-- 관리자 회원 관리 리스트 시작 -->
<!-- 헤더 영역 -->
<h3 style="test-align: center;">회원 가입 리스트</h3>
<!-- 회원 검색 -->
<div>
<form>
<select name="">
<option></option>
<option></option>
<option></option>
</select>
<select name="">
<option></option>
<option></option>
<option></option>
</select>
<select name="">
<option></option>
<option></option>
<option></option>
</select>
</form>
</div>
<!-- 리스트 출력 테이블 -->
<table class="table table-striped custab">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Parent ID</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
            <tr>
                <td>1</td>
                <td>News</td>
                <td>News Cate</td>
                <td class="text-center">
                <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span>회원 정보 수정</a> 
                <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>회원 탈퇴 처리</a></td>
            </tr>
    </table>
</div>
<!-- 작성 영역 끝-->
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>