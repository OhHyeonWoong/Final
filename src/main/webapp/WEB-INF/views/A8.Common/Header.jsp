<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>

<!-- 병준이 3개 추가 -->
<link href="/goodluck/resources/A6.LBJ/css/lbj_login.css" rel="stylesheet">
<script type="text/javascript" src="/goodluck/resources/A6.LBJ/js/lbj_login.js"></script>
<!-- 카카오 로그인용 js -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 병주니 CSS 끝 -->

<style type="text/css">
	
	@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'); %>
	@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
	
	body {
		width:100%;
		overflow:auto;
	}
	
	.ohw-menu-body {
		width:100%;
		font-family:'Open Sans', 'sans-serif';
		background:#f0f0f0;		
	}

	h1, .h1 {
		font-size:36px;
		text-align:center;
		font-size:5em;
		color: #404041;
	}

	.navbar-nav>li>.dropdown-menu {
		margin-top: 20px;
		border-top-left-radius: 4px;
		border-top-right-radius: 4px;
	}

	.navbar-default .navbar-nav>li>a {
		width: 200px;
		font-weight: bold;
	}

	.mega-dropdown {
		position: static !important;
		width: 100%;
	}

	.mega-dropdown-menu {
		padding: 20px 0px;
		width: 100%;
		box-shadow: none;
		-webkit-box-shadow: none;
	}

	.mega-dropdown-menu:before {
		content: "";
		border-bottom: 15px solid #fff;
		border-right: 17px solid transparent;
		border-left: 17px solid transparent;
		position: absolute;
		top: -15px;
		left: 159.5px;
		z-index: 10;
	}	

	.mega-dropdown-menu:after {
		content: "";
		border-bottom: 17px solid #ccc;
		border-right: 19px solid transparent;
		border-left: 19px solid transparent;
		position: absolute;
		top: -17px;
		left: 158px;
		z-index: 8;
	}
	
	.navbar-collapse {
		padding:0;
	}

	.mega-dropdown-menu > li > ul {
		padding: 0;
		margin: 0;
	}

	.mega-dropdown-menu > li > ul > li {
		list-style: none;
	}

	.mega-dropdown-menu > li > ul > li > a {
		display: block;
		padding: 3px 20px;
		clear: both;
		font-weight: normal;
		line-height: 1.428571429;
		color: #999;
		white-space: normal;
	}

	.mega-dropdown-menu > li ul > li > a:hover, .mega-dropdown-menu > li ul > li > a:focus {
		text-decoration: none;
		color: #444;
		background-color: #f5f5f5;
	}

	.mega-dropdown-menu .dropdown-header {
		color: #428bca;
		font-size: 18px;
		font-weight: bold;
	}

	.mega-dropdown-menu form {
		margin: 3px 20px;
	}

	.mega-dropdown-menu .form-group {
		margin-bottom: 3px;
	}
	
	.ohw-menu-a > a {
		color:black;
	}
	
	.ohw-menu-a > a:hover {
		color:purple;
	}
	
	.ohw-div-search {		
		width:400px;
	}
	
	.ohw-div-login {
		margin-top:20px;		
	}
	
	.ohw-menu-col-div {
		height:50px;
	}
	
	.ohw-menu-col-table {
		height:50px;		
		font-size:16px;		
	}
	
	.ohw-menu-col-td {
		width:90px;		
		height:50px;
		text-align:center;				
	}
	
	.ohw-menu-col-td > a {
		display:inline-block;
		padding:12px;;
		color:#777;
		font-weight:bold;
		text-decoration:none;
		cursor:pointer;
		transition-property:color;
		transition-duration:1.0s;
	}
	
	.ohw-menu-col-td > a:hover {
		display:inline-block;
		color:black;		
	}	
	
	.ohw-menu-table {
		width:100%;
		height:135px;
		margin:0;
		padding:0;
	}	
	
	.ohw-menu-table-td {
		height:135px;
		padding:0;
	}
	
	.ohw-menu-logo {
		width:135px;
		height:135px;
	}
	
	.ohw-menu-label {
		width:135px;
		height:135px;
	}
	
	.ohw-menu-realtimebar {
		padding-left:100px;
	}		

	.ohw-menu-realtimebar-dl a {
		color: black;
		/* text-decoration: none; */
	}

	.ohw-menu-realtimebar-dl a:hover {
		color: purple;
	}

	.ohw-menu-realtimebar-dl {
		overflow: hidden;
		width: 120px;
		height: 20px;
		margin: 0;
	}

	.ohw-menu-realtimebar-dt {
		display: none;
	}

	.ohw-menu-realtimebar-dd {
		position: relative;
		margin: 0;
	}

	.ohw-menu-realtimebar-ol {
		position: absolute;
		top: 0;
		left: 0;
		margin: 0;
		padding: 0;
		list-style-type: none;
	}
	
	.ohw-menu-realtimebar-li {
		height: 20px;
		line-height: 20px;
	}
	

	/* 병준이추가 */
	.lbj-div{
		width:300px;
	}
	.lbjspan{
		margin-left:10px;
	}
	.lbjex{
		font-size:10px;
	}
	/* 병준이추가 */

	.ohw-menu-realtimebar-dropdown {
		
	}
	
	.ohw-menu-realtimebar-dropdown > a {
		color:black;
	}
	
	.ohw-menu-realtimebar-dropdown > a:hover {
		color:purple;
	}
	
</style>

<script type="text/javascript">

	/* 실시간 검색어 애니메이션 함수 */
	$(function() {
		var count = $('.ohw-menu-realtimebar-li').length;
		var height = $('.ohw-menu-realtimebar-li').height();
	
		function step(index) {
			$('.ohw-menu-realtimebar-ol').delay(3000).animate({
				top: -height * index,
			}, 500, function() {
				step((index + 1) % count);
			});
		}	
		step(1);
	});

	/* 실시간 검색어 애니메이션 */
	
	/* 로그아웃 Function */
	function fnLogout(){
		$.ajax({
			url:"lbjlogout1.go",
			success:function(data){
				alert(data);
				window.history.go(0);
			},
			error:function(a,b,c){
				alert("로그아웃 에러 : " + a + ", " + b + ", " + c);
			}
		});
	}
	/* 로그아웃 Function */
	

</script>

</head>

<body>
<div class = "container">
	<div align = "right">
		<c:if test="${empty loginUser}">
		<%-- <c:out value="${ sessionScope.loginUser }" /> --%>
			<div class = "ohw-div-login">
				<button type = "button" class = "btn btn-default" data-toggle="modal" data-target="#login-modal">
					<i class = "fa fa-sign-in"></i> LogIn
				</button>				
			</div>
		</c:if>
		<c:if test="${!empty loginUser}">
			<table>
				<tr>					
					<td>
						<div class="dropdown  ohw-menu-a">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"> ${ loginUser.member_name } 님 &nbsp; <b class="caret"></b> &nbsp;</a>
							<div class="dropdown-menu lbj-div">
								<div style="margin-left:10px; margin-right:10px;">
									<table style="width:100%; height:100%;">
										<tr>
											<td> ${ loginUser.member_name } 님 </td>
											<td align="right"><button id="lbjmypagebtn1" class="btn btn-default" onclick="location.href = 'lbjmypage.go'">MyPage</button></td>
										</tr><!-- style="margin-left:140px;"  -->
										<tr>
											<td colspan="2">ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ</td>
										</tr>
										<tr>
											<td>내 마일리지 : 3,000</td>
											<td align="right"><button id="lbjmypagebtn2" class="btn btn-default" data-toggle="modal" data-target="#chargeCash">충전</button></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>
					<!-- <td>
						<button type = "button" class = "btn btn-default" onClick = "location.href = 'lbjmypage.go'">
							<i class = "fa fa-address-card"></i> MyPage
						</button>
					</td> -->			
					<td> 
						<button type = "button" class = "btn btn-default" data-toggle="modal" data-target="#myitem">

							<i class = "fa fa-address-card"></i> MyItem
						</button>
					</td>
					<td>
						<button type = "button" class = "btn btn-default" onclick="fnLogout();">
							<i class = "fa fa-sign-out"></i> LogOut
						</button>						
					</td>
				</tr>			
			</table>		
		</c:if>
	</div>
	<!-- 병준이 캐시 충전용 모달 -->
	<div id="chargeCash" class="modal fade" role="dialog">
		<div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      <div class="modal-body">
		        <table style="width:100%;">
		        	<tr style="height:300px;">
		        		<td style="width:35%; background:black; color:white;">
		        			<span class="lbjspan" style="font-size: 20px;"><i class="fa fa-money" style="font-size:24px"></i>마일리지</span><br><br>
		        			<input type="number" min=10000 max=100000 step=5000 placeholder="충전금액" style="align:center; margin-left:10px; width:80%;">
		        			<br><br>
		        			<span class="lbjspan">보유 마일리지 : 50</span><br>
		        			<span class="lbjspan">충전 후 마일리지 : </span><br>
		        			<hr>
		        			<span class="lbjspan lbjex">※ 최대 구매 가능한 마일리지는</span><br>
		        			<span class="lbjspan lbjex">500,000 입니다.</span><br>
		        		</td>
		        		<td style="position:absolute; width:63%; background:white; vertical-align: top;">
		        			<span class="lbjspan">결제수단</span><br>
		        			<a href="javascript:void(0);" id="lbjpay" class="lbjspan" onclick="fnPaymentMethod(); return false;"><i class="fa fa-sort-down" style="font-size:24px"></i>휴대폰</a>
		        			<div id="lbjpayment-div" class="lbjspan" style="display: none;">
		        				<table style="width:100%;">
		        					<tr>
		        						<td><button id="lbjbtnPhone" class="" onclick="fnKindOfPay(this);">휴대폰</button></td>
		        						<td><button id="lbjbtnKakao" onclick="fnKindOfPay(this);">카카오페이</button></td>
		        						<td><button id="lbjbtnCredit" onclick="fnCreditMethod(this);">신용카드</button></td>
		        						<td><button id="lbjbtnnobank" onclick="fnNoBankBook(this);">무통장입금</button></td>
		        					</tr>
		        					<tr>
		        						<td colspan="4">결제한도 &nbsp;&nbsp;&nbsp;&nbsp;월 결제한도: 500,000</td>
		        					</tr>
		        				</table>
		        			</div>
		        			<div id="lbjcreditcard-div" class="lbjspan" style="display:none;">
		        				<table style="width:100%;">
		        					<tr>
		        						<td><input type="radio" name="credit" value="신한">신한</td>
		        						<td><input type="radio" name="credit" value="삼성">삼성</td>
		        						<td><input type="radio" name="credit" value="국민">국민</td>
		        						<td><input type="radio" name="credit" value="현대">현대</td>
		        					</tr>
		        					<tr>
		        						<td><input type="radio" name="credit" value="NH농협">NH농협</td>
		        						<td><input type="radio" name="credit" value="BC">BC</td>
		        						<td><input type="radio" name="credit" value="우리">우리</td>
		        						<td><input type="radio" name="credit" value="하나">하나</td>
		        					</tr>
		        					<tr>
		        						<td><input type="radio" name="credit" value="롯데">롯데</td>
		        						<td><input type="radio" name="credit" value="씨티">씨티</td>
		        						<td><input type="radio" name="credit" value="카카오뱅크">카카오뱅크</td>
		        						<td><input type="radio" name="credit" value="기타">기타</td>
		        					</tr>
		        					<tr>
		        						<td><label> </label></td>
		        					</tr>
		        					<tr>
		        						<td colspan="2">할부기간</td>
		        						<td colspan="2">
		        							<select>
		        								<option>일시불</option>
		        								<option>1개월</option>
		        								<option>2개월</option>
		        								<option>3개월</option>
		        							</select>
		        						</td>
		        					</tr>
		        				</table>
		        			</div>
		        			<div id="lbjNoBankBook-div" class="lbjspan" style="display:none;">
		        				<table style="width:100%; background:ivory;">
		        					<tr>
		        					 	<td colspan="2">받는이</td>
		        					</tr>
		        					<tr>
		        						<td>은행명</td><td>신한은행</td>
		        					</tr>
		        					<tr>
		        						<td>이름</td><td>이병준</td>
		        					</tr>
		        					<tr>
		        						<td>계좌</td><td>110-333-111111</td>
		        					</tr>
		        					<tr>
		        						<td><label> </label></td>
		        					</tr>
		        					<tr>
		        					 	<td colspan="2">보내는이</td>
		        					</tr>
		        					<tr>
		        						<td>은행명</td><td><input type="text" placeholder="은행명"></td>
		        					</tr>
		        					<tr>
		        						<td>이름</td><td>${loginUser.member_name}</td>
		        					</tr>
		        					<tr>
		        						<td>계좌</td><td><input type="text" placeholder="계좌"></td>
		        					</tr>
		        					<tr><td><label> </label></td></tr>
		        				</table>
		        			</div>
		        			<script type="text/javascript">
		        			function fnKindOfPay(data){
	                             $('#lbjNoBankBook-div').hide();
	                             $('#lbjcreditcard-div').hide();
	                             
	                             var str = '<i class="fa fa-sort-down" style="font-size:24px"></i>';                       
	                             
	                             switch(data.id){
	                             case "lbjbtnPhone":
	                              str += $('#lbjbtnPhone').text();
	                                break;
	                             case "lbjbtnKakao":
	                                str += $('#lbjbtnKakao').text();
	                                break;
	                             case "lbjbtnCredit":
	                                str += $('#lbjbtnCredit').text();
	                                break;
	                             case "lbjbtnnobank":
	                                str += $('#lbjbtnnobank').text();
	                                break;
	                             default:
	                                console.log("default");
	                             }
	                             
	                             $('#lbjpay').html(str);
	                          }
	                          
	                          function fnPaymentMethod(){
	                             var i = $('#lbjpayment-div');
	                             $('#lbjNoBankBook-div').hide();
	                             $('#lbjcreditcard-div').hide();
	                             i.toggle(".5");
	                          }
	                          
	                          function fnCreditMethod(a){
	                             fnKindOfPay(a);
	                             var z = $('#lbjcreditcard-div');
	                             $('#lbjNoBankBook-div').hide();
	                             z.show();
	                             //z.toggle(".5");
	                          }
		        				
		        				function fnPaymentMethod(){
		        					var i = $('#lbjpayment-div');
		        					$('#lbjNoBankBook-div').hide();
		        					$('#lbjcreditcard-div').hide();
		        					i.toggle(".5");
		        				}
		        				
		        				function fnCreditMethod(a){
		        					fnKindOfPay(a);
		        					var z = $('#lbjcreditcard-div');
		        					$('#lbjNoBankBook-div').hide();
		        					z.show();
		        					//z.toggle(".5");
		        				}
		        				
		        				function fnNoBankBook(a){
		        					fnKindOfPay(a);
		        					var z = $('#lbjNoBankBook-div');
		        					$('#lbjcreditcard-div').hide();
		        					z.show();
		        					//z.toggle(".5");
		        				}
		        				
		        				function fnMovePaymentPage(){
		        					/* location.href='lbjmoveMileagePaymentPage.go' */
		        					window.open("lbjmoveMileagePaymentPage.go","","width=500,height=450");
		        				}
		        			</script>
		        		</td>
		        	</tr>
		        </table>
		      </div>
		      <div class="modal-footer" style="text-align:right;">
		      	<button class="btn btn-primary" onclick="fnMovePaymentPage();">결제</button>
		        <button type="button" class="btn btn-Danger" data-dismiss="modal">취소</button>
		      </div>
		    </div>	
	  </div>
	</div>
	<!-- 병준이 모달 끝 -->
	<table class = "ohw-menu-table">
		<tr>
			<td class = "ohw-menu-table-td">
				<a href = "home.go">
					<img class = "ohw-menu-logo" alt="DokSinSa" src="/goodluck/resources/common/img/Logo1.png">
				</a>			
			</td>
			<td class = "ohw-menu-table-td">
				<div align = "center">
					<form class="" action="">
						<div class="ohw-div-search input-group">
							<input type="text" class="form-control" placeholder="Search" name="search">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i> Search
								</button>
							</div>
						</div>
					</form>
				</div>
			</td>
			<td class = "ohw-menu-table-td">
				<label id = "doktop" class = "ohw-menu-label"></label>
			</td>
		</tr>
	</table>
	
	<div class = "ohw-menu-body">
		<nav class="navbar navbar-default">		
			<div class="collapse navbar-collapse js-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown mega-dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-chevron-down pull-right"></span> 카테고리 전체 보기 
						</a>
						<ul class="dropdown-menu mega-dropdown-menu row">
				            <li class="col-sm-3">
								<ul>
									<li class="dropdown-header">New in Stores</li>
									<div id="menuCarousel" class="carousel slide" data-ride="carousel">
										<div class="carousel-inner">										
											<div class="item active">
												<a href="#">
													<img src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 1">
												</a>
												<h4><small>Summer dress floral prints</small></h4>
												<button class="btn btn-primary" type="button">49,99 €</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to Wishlist
												</button>
											</div>
											<!-- End Item -->
											
											<div class="item">
												<a href="#">
													<img src="http://placehold.it/254x150/ef5e55/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 2">
												</a>
												<h4><small>Gold sandals with shiny touch</small></h4>
												<button class="btn btn-primary" type="button">9,99 €</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to Wishlist
												</button>
											</div>
											<!-- End Item -->
											
											<div class="item">
												<a href="#">
													<img src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection" class="img-responsive" alt="product 3">
												</a>
												<h4><small>Denin jacket stamped</small></h4>
												<button class="btn btn-primary" type="button">49,99 €</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li>
										<a href="#">View all Collection <span class="glyphicon glyphicon-chevron-right pull-right"></span></a>								
									</li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Dresses</li>
									<li><a href="bshtest.go?link2_no=1">link2_no=1 테스트</a></li>
									<li><a href="bshtest.go?link2_no=2">link2_no=2 테스트</a></li>
									<li><a href="jdkitemlist.go">관리자 페이지 아이템 리스트</a></li>
									<li><a href="#">Newsletter Form</a></li>
									<li><a href="#">Four columns</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Tops</li>
									<li><a href="#">Good Typography</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Jackets</li>
									<li><a href="#">Easy to customize</a></li>
									<li><a href="#">Glyphicons</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Pants</li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
									<li><a href="#">Calls to action</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Accessories</li>
									<li><a href="#">Default Navbar</a></li>
									<li><a href="#">Lovely Fonts</a></li>
									<li><a href="#">Responsive Dropdown </a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Newsletter</li>
									<form class="form" role="form">
										<div class="form-group">
											<label class="sr-only" for="email">Email address</label>
											<input type="email" class="form-control" id="email" placeholder="Enter email">
										</div>
										<button type="submit" class="btn btn-primary btn-block">Sign in</button>
									</form>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
				<script type="text/javascript">
					<!-- Menu Big Category -->
					$.ajax({
					   	url:"categoryBig.go",
					   	type:"POST",
					   	dataType:"json",
					   	success:
					   		function(data) {					   			
								
					   			var jsonStr = JSON.stringify(data);
								var json = JSON.parse(jsonStr);
								var bigCategory = "";
								var menuTd = ""
								var realTimeBar = "";							
								
								for(var i in json.headerCategoryBig){				
									bigCategory += '<td class = "ohw-menu-col-td"><a href="ohw-' + json.headerCategoryBig[i].headerCategoryBigCode + '">' + json.headerCategoryBig[i].headerCategoryBigName + '</a></td>'
									realTimeBar += '<li class = "ohw-menu-realtimebar-li"><a href="ohw-' + json.headerCategoryBig[i].headerCategoryBigCode + '">' + json.headerCategoryBig[i].headerCategoryBigName + '</a></li>'
								}
								menuTd = '<td class = "ohw-menu-col-td ohw-menu-realtimebar"><div class = "ohw-menu-realtimebar-content"><dl class = "ohw-menu-realtimebar-dl"><dd class = "ohw-menu-realtimebar-dd"><ol class = "ohw-menu-realtimebar-ol"></ol></dd></dl></div></td><td class = "ohw-menu-realtimebar-dropdown"><a><i class = "fa fa-chevron-down"></i></a></td>'
								$('.ohw-menu-tr-category').append(bigCategory);
								$('.ohw-menu-tr-category').append(menuTd);
								$('.ohw-menu-realtimebar-ol').append(realTimeBar);
									
							}, 
						error : function(request, status, errorData) {
									alert("Error Code : " + request.status + "\n"
									+ "Message : " + request.responseText + "\n"
									+ "Error : " + errorData);
						}
					});				
					/* Menu Big Category End */						
				</script>
				<div class = "ohw-menu-col-div">
					<table class = "ohw-menu-col-table">						
						<tr class = "ohw-menu-tr-category">							
							<td class = "ohw-menu-col-td dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 작업 <span class="caret"></span></a>							
								<ul class="dropdown-menu">
									<li><a href = "ohw-movePaymentPage.go">현웅</a></li>
									<li><a href="ukWookTest.go">욱재</a></li>
									<li><a href="#">동기</a></li>
									<li><a href="#">승호</a></li>
									<li><a href="#">지석</a></li>
									<li><a href="lbjmypage.go">뱅준</a></li>
								</ul>								
							</td>
							
						</tr>
					</table>					
				</div>				
			</div>
		<!-- /.nav-collapse -->
		</nav>
	</div>
</div>
<%@ include file="/WEB-INF/views/A6.LBJ/login.jsp" %>
<%@ include file="/WEB-INF/views/A5.CJS/itemframe.jsp" %>
</body>
</html>