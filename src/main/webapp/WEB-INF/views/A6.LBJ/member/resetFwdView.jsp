<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>

<style type="text/css">

	/* .lbj-reseticon {
		padding:0 !important;
		height:34px !important;
	}
	
	.lbj-reseticoni {
		padding:0;
		height:17px !important;
	} */
	.lbj-remake{
		margin:0;
		padding:0;
		height:350px;
	}
</style>

</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<br>
	<c:out value="${member_id}" />
	<br>
	<h2 style="text-align:center;">Reset Password!</h2><br>
	<div class="container" style="width:40%;">
		<!-- 이건 서브밋으로 처리할 수 있을 듯 -->
		<form method="post" action="lbjfindpwd.go">
			<input type="hidden" name="member_id" value="${member_id}">
			<div class="input-group">
				<div class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></div>
				<input type="password" name="member_pw" class="form-control" placeholder="비밀번호" required>
			</div><br>
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" class="form-control" placeholder="비밀번호확인" required>
			</div><br>
			<input type="submit" value="비밀번호 재설정" class="btn btn-success btn-lg btn-block">
		</form>
	</div>
	<br><br><br>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>