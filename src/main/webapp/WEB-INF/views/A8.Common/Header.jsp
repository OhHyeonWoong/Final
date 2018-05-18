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
		text-decoration: none;
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
					<td>${ loginUser.member_name } 님</td>
					<td>
						<button type = "button" class = "btn btn-default" onClick = "location.href = 'lbjmypage.go'">
							<i class = "fa fa-address-card"></i> MyPage
						</button>
					</td>					
					<td>
						<button type = "button" class = "btn btn-default" onclick="window.open('myitem.go', '아이템창',' top=100, left=100, width=560, height=580,toolbar=no, scrollbars=no, status=no, resizable=no')">
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
									<li><a href="#">Auto Carousel</a></li>
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
				<div class = "ohw-menu-col-div">
					<table class = "ohw-menu-col-table">
						<tr>
							<td class = "ohw-menu-col-td"><a href = "">생활</a></td>
							<td class = "ohw-menu-col-td"><a href = "">반려동물</a></td>
							<td class = "ohw-menu-col-td"><a href = "">게임</a></td>
							<td class = "ohw-menu-col-td"><a href = "">음악</a></td>
							<td class = "ohw-menu-col-td"><a href = "">렌탈</a></td>
							<td class = "ohw-menu-col-td"><a href = "">여행</a></td>
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
							<td class = "ohw-menu-col-td ohw-menu-realtimebar">								
								<div class = "ohw-menu-realtimebar-content">
									<dl class = "ohw-menu-realtimebar-dl">										
										<dd class = "ohw-menu-realtimebar-dd">
											<ol class = "ohw-menu-realtimebar-ol">
												<li class = "ohw-menu-realtimebar-li">
													<a href="#">1. 애인</a>
												</li>												
												<li class = "ohw-menu-realtimebar-li">
													<a href="#">2. 여행</a>
												</li>												
												<li class = "ohw-menu-realtimebar-li">
													<a href="#">3. 렌탈</a>
												</li>												
												<li class = "ohw-menu-realtimebar-li">
													<a href="#">4. 생활</a>
												</li>												
												<li class = "ohw-menu-realtimebar-li">
													<a href="#">5. 게임</a>
												</li>												
											</ol>
										</dd>
									</dl>
								</div>																
							</td>
							<td class = "ohw-menu-realtimebar-dropdown">
								<a>
									<i class = "fa fa-chevron-down"></i>
								</a>
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
</body>
</html>