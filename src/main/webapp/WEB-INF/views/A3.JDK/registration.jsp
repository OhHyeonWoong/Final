<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>회원 가입 창</title>


<!-- 전동기 부트스트랩 영역입니다. -->
<!-- 제이쿼리 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 링크 -->
<style type="text/css" src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<!-- 부트스트랩 스크립트 -->
<script type="text/javascript" src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>   
<!-- 전동기 부트스트랩 영역입니다. -->
<style type="text/css">

</style>
<script type="text/javascript">


</script>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

	<div class="container" >
		<div class="login_form" >
			<h3 style="text-align : center;">회원가입</h3>
		<div class="col-md-6 col-md-offset-3">
<!-- 회원가입 폼 시작 -->
			<form role="form" enctype="multipart/form-data" method="post" action="">
				<div class="form-group">
					<label for="userid">프로필 사진</label>
					<div style="width : 130px; height : auto; margin: 0 auto;">
					<img src="/goodluck/resources/A3.JDK/images/base_profile.png" name ="profile_img" style="width : 130px; height : auto;">
					</div>
					<br>
					<input type="file" name="member_profile" class="form-control" id="InputProfile" style="width: 300px; margin: 0 auto;">
				</div>
				<div class="form-group">
					<label for="userid">아이디</label>
					<div class="input-group">
					<input type="text"  id="member_id" name="member_id" class="form-control" placeholder="아이디" required="required">
					<span class="input-group-btn"><button class="btn btn-default" style="">
					<i class = "fa fa-search"></i> 중복검사</button></span>
					</div>
				</div>
				<div class="form-group">
					<label for="username">이름</label> 
					<input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요" required="required">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> 
					<input type="password" class="form-control" id="password1" name="member_pw"  placeholder="비밀번호" required="required">
				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> 
					<input type="password" class="form-control" id="password2" placeholder="비밀번호 확인" required="required">
					<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>
				<div class="form-group">
					<label for="username">주민등록번호</label><br> 
					<table>
					<tr>
					<td><input type="text" class="form-control" required="required" placeholder="주민등록번호 앞 6자리"></td>
					<td>-</td>
					<td><input type="text" class="form-control" required="required" style="width: 35px; float:left;" maxlength="1">●●●●●●</td>
					</tr>	
					</table>
				</div>
				<div class="form-group">
					<label for="username">주소</label><br> 
					<input type="text" class="form-control" id="member_address" name="member_address" placeholder="주소를 입력해 주세요." required="required">
				</div>
				<div class="form-group">
					<label for="username">전화번호</label><br> 
					<input type="text" class="form-control" id="member_phone" name="member_phone" placeholder="전화번호를 입력해주세요." required="required">
				</div>
				
				<div class="form-group">
					<label for="useremail">이메일</label>
					<div class="input-group">
						<input type="text" class="form-control" id="register" placeholder="이메일을 입력해주세요 ex)example@example.com" required="required">
						<!--email 인증 요청--> 
						<span class="input-group-btn"><button class="btn btn-default"><i class="fa fa-envelope"></i>인증요청</button>	</span>
					</div>
				</div>

				<div class="form-group">
					<label for="username">인증번호 입력</label>
					<div class="input-group">
					<input type="text" class="form-control" id="certify" placeholder="인증번호" required="required">
					<!-- 인증번호 요청시 번호 입력확인 -->
					<span class="input-group-btn"><button class="btn btn-default"><i class="fa fa-envelope"></i>인증번호 입력</button></span>
					</div>
				</div>
				
				<div class="form-group text-center">
					<div class="form-group">
						 <input id="agree" type="checkbox" autocomplete="off"> 
						<a href="location.href=''" data-toggle="modal" data-target="#termsOfService">이용약관</a> 에 동의 합니다.
					</div>
				</div>
					
					<br><br>	
				<div class="form-group text-center">
				
					<button type="submit" class="btn btn-default">회원가입</button>
					<button type="button" class="btn btn-default">가입취소</button>
					
				</div>
			</form>
<!-- 회원가입 폼 종료 -->
				</div>
			</div>
		</div>

<!-- 회원약관 모달창 인클루드 -->
<%@ include file="/WEB-INF/views/A3.JDK/termsOfService.jsp" %>
<!-- 회원약관 모달창 인클루드 -->
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>