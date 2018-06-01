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
<div class="modal fade" id="item_modi" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        	<div class="modal-header">
         	<h4 class="modal-title">아이템 수정</h4>
        </div>
        <div class="modal-body">
        <!-- 내용 -->
          	<table class="table">
			<tr>
				<th>아이템 식별 번호</th>
				<td><input type="text" id="item_all_pk" readonly="readonly"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="item_all_name" value=""></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="number" id="item_all_price" value="">원</td>
			</tr>
			<tr>
			<th>기간</th>
			<td><input type="number" id="item_all_period" value="">일</td>
			</tr>
			<tr>
			<th>아이템 종류</th>
				<td><input type="text" id="item_all_category" value="">타입</td>
				</tr>
			<tr>
				<th>미리보기</th>
				<td><img src="/goodluck/resources/A5.CJS/itemimg/00de6bdf90838c69e70d109ffac8cae0.png"/></td>
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