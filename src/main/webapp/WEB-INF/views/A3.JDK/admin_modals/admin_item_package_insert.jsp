<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>모달창 템플레이트</title>
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
<div class="modal fade" id="item_package_insert" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      	<form enctype="multipart/form-data" method="POST" action="jdkinsertNewPackageItem.go">
			<div class="modal-content" class="modal-content" style="width:70%;">
				<div class="modal-header" style="text-align: center;">
					<h4 class="modal-title">패키지 등록</h4>
				</div>
				<div class="modal-body">
					<table class="table">
						<tr>
							<th style="width:30%;">패키지 명</th>
							<td style="width:70%; text-align:center;">
							<input type="text" id="item_package_name" name="PACKAGE_NAME">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">가격</th>
							<td style="width:70%; text-align:center;">
							<input type="number" id="item_package_price" name="PACKAGE_PRICE">
							</td>
						</tr>
						<tr>
							<th style="width:30%;">포함하는 아이템 목록</th>
						<!-- 	<td style="width:70%; text-align:center;"> -->
							<!-- </td> -->
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