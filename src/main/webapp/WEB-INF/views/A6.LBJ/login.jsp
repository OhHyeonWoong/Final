<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
	<!-- BEGIN # MODAL LOGIN -->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content" style="width:100%;">
				<div class="modal-header" align="center">
					<img class="img-circle" id="img_logo"
						src="/goodluck/resources/A6.LBJ/images/Logo.png"><!-- http://bootsnipp.com/img/logo.jpg -->
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>

				<!-- Begin # DIV Form -->
				<div id="div-forms">
					
					<!-- Begin # Login Form -->
					<form id="login-form" class="loginForm1" action="lbjlogin.go" method="post">
						<div class="modal-body">
							<div id="div-login-msg">
								<div id="icon-login-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-login-msg">아이디와 비밀번호를 입력하세요</span>
							</div>
							<input id="login_id" name="member_id" class="form-control" type="text"
								placeholder="아이디" required><!-- login_username -->
							<input id="login_password" name="member_pw" class="form-control" type="password"
								placeholder="패스워드" required>
							<div class="checkbox">
								<label> <input type="checkbox"> 아이디 기억
								</label>
							</div>
						</div>
						<div class="modal-footer">
							<div>
								<!-- <button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button> -->
								<input type="button" class="btn btn-primary btn-lg btn-block" 
									value="로그인" onclick="fnLogin();">
								<script type="text/javascript">
									function fnLogin(){
										var id = $('#login_id').val();
										var pwd = $('#login_password').val();
										$.ajax({
											url:"lbjlogin.go",
											type:"post",
											data:{
												member_id : id,
												member_pw : pwd
											},
											success:function(data){
												alert(data);
												if(data == '로그인 성공'){
													//$("#login-modal").modal("hide");
													window.history.go(0);
												}
											},
											error:function(a,b,c){
												alert(a + ", " + b + ", " + c);
											}
										});
									}
								</script>
							</div>
							<div>
								<button id="login_lostid_btn" type="button" class="btn btn-link">아이디찾기</button>
								<button id="login_lost_btn" type="button" class="btn btn-link">비밀번호재설정</button>
								<button id="login_register_btn" type="button" class="btn btn-link" onclick="location.href='jdkregistration.go'">회원가입</button>
								<hr style="border-color: red;">
								<H4 style="text-align:center;">또는</H4>
								<a id="custom-login-btn" href="javascript:loginWithKakao()">
								<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
								</a>
								<script type='text/javascript'>
								  //<![CDATA[
								    // 사용할 앱의 JavaScript 키를 설정해 주세요.
								    Kakao.init('bd5a6122e0874d4c2859d1b0192adfb0');
								    function loginWithKakao() {
								      // 로그인 창을 띄웁니다.
								      Kakao.Auth.login({
								        success: function(authObj) {
								          alert(JSON.stringify(authObj));
								        },
								        fail: function(err) {
								          alert(JSON.stringify(err));
								        }
								      });
								    };
								  //]]>
								</script>
							</div>
						</div>
					</form>
					<!-- End # Login Form -->

					<!-- Begin | Lost Password Form -->
					<form id="lost-form" class="loginForm1" style="display: none;">
						<div class="modal-body">
							<div id="div-lost-msg">
								<div id="icon-lost-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-lost-msg">아이디와 이메일을 입력하세요</span>
							</div>
							<input id="lost_id" class="form-control" type="text"
								placeholder="아이디" style="margin-bottom:10px;" required>
							<input id="lost_email" class="form-control" type="email"
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
                    <form id="lost-id-form" class="loginForm1" style="display:none;">
            		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">이름과 이메일,비번을 입력하세요</span>
                            </div>
		    				<input id="lostid_username" class="form-control" type="text" placeholder="이름" style="margin-bottom:10px;" required>
                            <input id="lostid_email" class="form-control" type="email" placeholder="이메일" required>
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
