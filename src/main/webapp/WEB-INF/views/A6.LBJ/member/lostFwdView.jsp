<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정용 이메일 보내기</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<h2 style="text-align:center;">Forget Password?</h2><br>
	<div class="container" style="width:40%;">
		<form method="post">
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<input type="text" id="lost_id" class="form-control" placeholder="아이디" required><br>
			</div><br>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
			<input type="email" id="lost_email" class="form-control" placeholder="abc@naver.com" required>
			</div><br>
			<input type="button" class="btn btn-primary btn-lg btn-block" value="비밀번호 재설정"
									onclick="fnFindPwd();">
		</form>
		<script type="text/javascript">
			function fnFindPwd(){
				var id = $('#lost_id').val();
				var email = $('#lost_email').val();
				
				$.ajax({
					url:"lbjmailSending.go",
					type:"post",
					data:{
						member_id: id,
						toemail: email
					},
					success:function(data){
						alert(data);
						if(data == '메일 발송 성공!'){
							//location.href="lbjmoveResetFwdView.go";
						}
					},
					error:function(a,b,c){
						alert("a : " + a + ", b : " + b + ", c : " + c);
					}
				});
			}
		</script>
	</div>
	<br><br><br>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>