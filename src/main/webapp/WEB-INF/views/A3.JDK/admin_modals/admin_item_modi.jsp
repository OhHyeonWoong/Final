<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>개별 아이템 수정 모달창</title>
<!-- 부트스트랩 링크 -->
<link rel="stylesheet" type="text/css" href="/goodluck/resources/common/css/bootstrap.min.css">
<style type="text/css">
</style>
<!-- 부트스트랩 스크립트 -->
<script type="text/javascript" src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<!-- 제이쿼리 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="item_modi" role="dialog" >
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content" style="width:70%;">
        	<div class="modal-header">
         	<h4 class="modal-title" style="text-align: center;">아이템 수정</h4>
        </div>
        <div class="modal-body">
        <!-- 내용 -->
          	<table class="table">
			<tr>
				<th style="width:30%;">아이템 No.</th>
				<td style="width:70%; text-align:center;"><label id="item_all_pk" style="margin-bottom: 0;">1</label></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="item_all_name" value="" style="width:80%;"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="number" id="item_all_price" value="" style="width:80%;">원</td>
			</tr>
			<tr>
			<th>기간</th>
			<td><input type="number" id="item_all_period" value="" style="width:80%;">일</td>
			</tr>
			<tr>
			<th>아이템 종류</th>
				<td style="width:70%; text-align:center;"><label id="item_all_category" style="margin-bottom: 0; width:100%;">타입</label></td>
				</tr>
			<tr>
				<th>미리보기</th>
				<td style="width:70%; text-align:center;"><img src="/goodluck/resources/A5.CJS/itemimg/00de6bdf90838c69e70d109ffac8cae0.png"/></td>
			</tr>
			<tr>
			<th>첨부파일 수정</th>
			<td><input type="file" id="item_all_file" value=""></td>
			</tr>
          	</table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">수정</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
</body>
</html>