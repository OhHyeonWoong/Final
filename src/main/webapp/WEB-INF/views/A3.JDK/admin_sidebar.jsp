<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지 사이드 바</title>
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
<!--사이드바 시작 -->
    <div class="left-container" id="left-container" style="width:18%; float:left;">
      <div class="w3-sidebar w3-bar-block" id="show-nav">
        <ul id="side" class="side-nav">
          <li class="panel">
            <a id="panel1" href="jdkadminmember.go" data-toggle="collapse" data-target="#Dashboard">
             <i class="fa fa-dashboard"></i> 회원관리 <i class="fa fa-chevron-left pull-right" id="arow1"></i> </a>
          </li>
          <li class="panel">
            <a id="panel2" href="jdkadminitemlist.go" data-toggle="collapse" data-target="#charts"> 
            <i class="fa fa-bar-chart-o"></i> 아이템 관리 <i class="fa fa-chevron-left pull-right" id="arow2"></i> </a>
          </li>
          <li class="panel">
            <a id="panel4" href="javascript:;" data-toggle="collapse" data-target="#clipboard"> 
            <i class="fa fa-clipboard"></i> 신고 문의 처리 <i class="fa fa fa-chevron-left pull-right" id="arow4"></i> </a>
          </li>
          <li class="panel">
            <a id="panel5" href="lbjAdminQnaAnswer.go" data-toggle="collapse" data-target="#edit">
             <i class="fa fa-edit"></i> 질문 문의 처리 <i class="fa fa fa-chevron-left pull-right" id="arow5"></i>
            </a>
          </li>
          <li class="panel">
            <a id="panel6" href="lbjStatisticsTest.go" data-toggle="collapse" data-target="#inbox"> 
            <i class="fa fa-inbox"></i> 서비스 통계 <i class="fa fa fa-chevron-left pull-right" id="arow6"></i> </a>
          </li>
          <li class="panel">
            <a id="panel7" href="javascript:;" data-toggle="collapse" data-target="#cogs"> 
            <i class="fa fa-cogs"></i> 채팅 기록 조회 <i class="fa fa fa-chevron-left pull-right" id="arow7"></i> </a>
          </li>
        </ul>
      </div>
    </div>
<!-- 사이드바 종료 -->
</body>
</html>