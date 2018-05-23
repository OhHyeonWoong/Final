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
    <div class="left-container" id="left-container" style="width:25%; float:left;">
      <!--사이드바 시작-->
      <div class="w3-sidebar w3-bar-block" id="show-nav">
        <ul id="side" class="side-nav">
          <li class="panel">
            <a id="panel1" href="javascript:;" data-toggle="collapse" data-target="#Dashboard"> <i class="fa fa-dashboard"></i> 회원관리
              <i class="fa fa-chevron-left pull-right" id="arow1"></i> </a>
          </li>
          <li class="panel">
            <a id="panel2" href="javascript:;" data-toggle="collapse" data-target="#charts"> <i class="fa fa-bar-chart-o"></i> 아이템 관리
              <i class="fa fa-chevron-left pull-right" id="arow2"></i> </a>
          </li>
          <li class="panel">
            <a id="panel3" href="javascript:;" data-toggle="collapse" data-target="#calendar"> <i class="fa fa-calendar"></i> 게시판 관리
              <i class="fa fa-chevron-left pull-right" id="arow3"></i> </a>
          </li>
          <li class="panel">
            <a id="panel4" href="javascript:;" data-toggle="collapse" data-target="#clipboard"> <i class="fa fa-clipboard"></i> 신고 문의 처리
              <i class="fa fa fa-chevron-left pull-right" id="arow4"></i> </a>
          </li>
          <li class="panel">
            <a id="panel5" href="javascript:;" data-toggle="collapse" data-target="#edit"> <i class="fa fa-edit"></i> 질문게시판 처리
              <i class="fa fa fa-chevron-left pull-right" id="arow5"></i>
            </a>
          </li>
          <li class="panel">
            <a id="panel6" href="javascript:;" data-toggle="collapse" data-target="#inbox"> <i class="fa fa-inbox"></i> N/A
              <i class="fa fa fa-chevron-left pull-right" id="arow6"></i> </a>
          </li>
          <li class="panel">
            <a id="panel7" href="javascript:;" data-toggle="collapse" data-target="#cogs"> <i class="fa fa-cogs"></i> N/A
              <i class="fa fa fa-chevron-left pull-right" id="arow7"></i> </a>
          </li>
          <li class="panel">
            <a id="panel8" href="javascript:;" data-toggle="collapse" data-target="#paper"> <i class="fa fa-paper-plane"></i> N/A
              <i class="fa fa fa-chevron-left pull-right" id="arow8"></i> </a>
          </li>
          <li class="panel">
            <a id="panel9" href="javascript:;" data-toggle="collapse" data-target="#trash"> <i class="fa fa-trash"></i> N/A
              <i class="fa fa fa-chevron-left pull-right" id="arow9"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
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