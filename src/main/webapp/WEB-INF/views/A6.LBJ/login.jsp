<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
	<!-- BEGIN # MODAL LOGIN -->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
					<img class="img-circle" id="img_logo"
						src="http://bootsnipp.com/img/logo.jpg">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>

				<!-- Begin # DIV Form -->
				<div id="div-forms">

					<!-- Begin # Login Form -->
					<form id="login-form">
						<div class="modal-body">
							<div id="div-login-msg">
								<div id="icon-login-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-login-msg">아이디와 비밀번호를 입력하세요</span>
							</div>
							<input id="login_id" class="form-control" type="text"
								placeholder="아이디" required><!-- login_username -->
							<input id="login_password" class="form-control" type="password"
								placeholder="패스워드" required>
							<div class="checkbox">
								<label> <input type="checkbox"> 아이디 기억
								</label>
							</div>
						</div>
						<div class="modal-footer">
							<div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
							</div>
							<div>
								<button id="login_lostid_btn" type="button" class="btn btn-link">아이디찾기</button>
								<button id="login_lost_btn" type="button" class="btn btn-link">비밀번호재설정</button>
							</div>
						</div>
					</form>
					<!-- End # Login Form -->

					<!-- Begin | Lost Password Form -->
					<form id="lost-form" style="display: none;">
						<div class="modal-body">
							<div id="div-lost-msg">
								<div id="icon-lost-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-lost-msg">아이디와 이메일을 입력하세요</span>
							</div>
							<input id="lost_id" class="form-control" type="text"
								placeholder="아이디" required>
							<input id="lost_email" class="form-control" type="text"
								placeholder="이메일" required>
						</div>
						<div class="modal-footer">
							<div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">비밀번호 재설정</button>
							</div>
							<div>
								<button id="lost_login_btn" type="button" class="btn btn-link">로그인</button>
								<button id="lost_lostid_btn" type="button" class="btn btn-link">아이디찾기</button>
							</div>
						</div>
					</form>
					<!-- End | Lost Password Form -->
					 <!-- Begin | Lost Id Form -->
                    <form id="lost-id-form" style="display:none;">
            		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">이름과 이메일,비번을 입력하세요</span>
                            </div>
		    				<input id="lostid_username" class="form-control" type="text" placeholder="이름" required>
                            <input id="lostid_email" class="form-control" type="text" placeholder="이메일" required>
                            <input id="lostid_userpwd" class="form-control" type="password" placeholder="비밀번호" required>
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">아이디찾기</button>
                            </div>
                            <div>
                                <button id="lostid_login_btn" type="button" class="btn btn-link">로그인</button>
                                <button id="lostid_lost_btn" type="button" class="btn btn-link">비밀번호재설정</button>
                            </div>
		    		    </div>
                    </form>
                    <!-- End | Lost Id Form -->
				</div>
				<!-- End # DIV Form -->
			</div>
		</div>
	</div>
	<!-- END # MODAL LOGIN -->
