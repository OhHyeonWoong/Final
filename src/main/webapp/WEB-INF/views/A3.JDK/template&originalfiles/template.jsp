<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>회원 가입 창</title>
<!-- 제이쿼리 -->
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩 링크 -->
<style type="text/css" src="/goodluck/resources/common/css/bootstrap.min.css"></style>
<!-- 부트스트랩 스크립트 -->
<script type="text/javascript" src="/goodluck/resources/common/js/bootstrap.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">

</script>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<article class="container">
		<div class="page-header">
			<h1>회원가입</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form role="form">
				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="InputEmail" placeholder="이메일 주소">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" id="InputPassword1" placeholder="비밀번호">
				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> <input type="password"
						class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
					<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
				</div>
				<div class="form-group">
					<label for="username">이름</label> <input type="text"
						class="form-control" id="username" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="username">휴대폰 인증</label>
					<div class="input-group">
						<input type="tel" class="form-control" id="username"
							placeholder="- 없이 입력해 주세요"> <span class="input-group-btn">
							<button class="btn btn-success">
								인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label for="username">인증번호 입력</label>
					<div class="input-group">
						<input type="text" class="form-control" id="username"
							placeholder="인증번호"> <span class="input-group-btn">
							<button class="btn btn-success">
								인증번호 입력<i class="fa fa-edit spaceLeft"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label>약관 동의</label>
					<div data-toggle="buttons">
						<label class="btn btn-primary active"> <span
							class="fa fa-check"></span> <input id="agree" type="checkbox"
							autocomplete="off" checked>
						</label> <a href="#">이용약관</a>에 동의합니다.
					</div>
				</div>
				<div class="form-group text-center">
					<button type="submit" class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>

		<div class="col-md-12">
			<div class="page-header">
				<h1>
					회원가입 <small>horizontal form</small>
				</h1>
			</div>
			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputEmail" type="email"
							placeholder="이메일">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPassword" type="password"
							placeholder="비밀번호">
						<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
						확인</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputPasswordCheck"
							type="password" placeholder="비밀번호 확인">
						<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputName">이름</label>
					<div class="col-sm-6">
						<input class="form-control" id="inputName" type="text"
							placeholder="이름">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="tel" class="form-control" id="inputNumber"
								placeholder="- 없이 입력해 주세요" /> <span class="input-group-btn">
								<button class="btn btn-success">
									인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
						확인</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input class="form-control" id="inputNumberCheck" type="text"
								placeholder="인증번호"> <span class="input-group-btn">
								<button class="btn btn-success" type="button">
									인증번호 확인<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
						<p class="help-block">전송된 인증번호를 입력해주세요.</p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" for="inputAgree">약관
						동의</label>
					<div class="col-sm-6" data-toggle="buttons">
						<label class="btn btn-warning active"> <input id="agree"
							type="checkbox" autocomplete="off" chacked> <span
							class="fa fa-check"></span>
						</label> <a href="#">이용약관</a> 에 동의 합니다.
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button class="btn btn-danger" type="submit">
							가입취소<i class="fa fa-times spaceLeft"></i>
						</button>
					</div>
				</div>
			</form>
			<hr>
		</div>
	</article>




<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>