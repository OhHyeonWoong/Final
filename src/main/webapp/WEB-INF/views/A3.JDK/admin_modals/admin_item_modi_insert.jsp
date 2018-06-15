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
		<form enctype="multipart/form-data" method="POST" action="jdkinsertNewItem.go">
			<div class="modal-content" class="modal-content" style="width:70%;">
				<div class="modal-header" style="text-align: center;">
					<h4 class="modal-title">아이템 등록</h4>
				</div>
				<div class="modal-body">
					<table class="table">
						<tr>
							<th style="width:30%;">이름</th>
							<td style="width:70%; text-align:center;">
							<input type="text" id="item_modi_name" name="ITEMNAME">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">가격</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_modi_price" name="ITEMPRICE">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">기간</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_modi_period" name="ITEMTYPE">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">타입
							<td style="width:70%; text-align:center;">
							<select type="number" id="item_modi_category" 
							style="margin-bottom: 0;" name = "ITEMTYPE">
							<option value="1">1:제목색상변경</option>
							<option value="2">2:이모티콘(기간없음)</option>
							<option value="3">3:최대게시물+1(기간없음)</option>
							<option value="4">4:최대태그+1(기간없음)</option>
							<option value="5">5:제목크기강조</option>
							<option value="6">6:제목굵기강조</option>
							<option value="7">7:게시글프리미엄</option>
							</select>
							</td>
						</tr>
						<tr>
							<th style="width:30%;">미리보기</th><!-- 자바스크립트 구현 -->
							<td style="width:70%; text-align:center;">
							<img id="item_modi_file_thumb" src="#"/>
							</td>
						</tr>
						<tr>
							<th style="width:30%;">이미지 파일 첨부</th>
							<td style="width:70%; text-align:center;">
							<input type="file" id="item_modi_file" name="ITEMFILENAME" accept="image/gif, image/jpeg, image/png">
						</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer" style="text-align:center;">
					<input type="submit" class="btn btn-default">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="닫기">
				</div>
			</div>
		</form>
		
		</div>
	</div>
</body>
</html>