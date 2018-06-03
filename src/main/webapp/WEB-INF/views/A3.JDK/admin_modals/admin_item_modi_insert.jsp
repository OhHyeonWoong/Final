<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>모달창 템플레이트</title>
<!-- 부트스트랩 링크 -->
<link rel="stylesheet" type="text/css"
	href="/goodluck/resources/common/css/bootstrap.min.css">
<style type="text/css">
</style>
<!-- 부트스트랩 스크립트 -->
<script type="text/javascript"
	src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<!-- 제이쿼리 -->
<script type="text/javascript"
	src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
});
</script>
</head>
<body>
	<!-- Modal -->
	<div class="modal fade" id="item_modi_insert" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content" class="modal-content" style="width:70%;">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">아이템 등록</h4>
				</div>
				<div class="modal-body">
					<table class="table">
						<tr>
							<th style="width:30%;">아이템 No.</th>
							<td style="width:70%; text-align:center;">
							<label id="item_all_pk" style="margin-bottom: 0;">1</label>
							</td>
						</tr>
						<tr>
							<th style="width:30%;">이름</th>
							<td style="width:70%; text-align:center;">
							<input type="text" id="item_modi_name">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">가격</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_modi_price">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">기간</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_modi_period">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">타입
							<br>
							1: 제목색상변경<br>
							2: 이모티콘(기간없음)<br>
							3: 최대게시물+1(기간없음)<br>
							4: 최대태그+1(기간없음)<br>
							5: 제목크기강조<br>
							6: 제목굵기강조<br>
							7: 게시글프리미엄</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_modi_category" style="margin-bottom: 0;">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">미리보기</th>
							<td style="width:70%; text-align:center;">
							<img id="item_modi_file_thumb" src=""/>
							</td>
						</tr>
						<tr>
							<th style="width:30%;">첨부파일 수정</th>
						<td style="width:70%; text-align:center;"><input type="file" id="item_modi_file"></td>
						</tr>
					</table>

				</div>
				<div class="modal-footer" style="text-align:center;">
					<button type="button" class="btn btn-default" data-dismiss="modal">입력</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>