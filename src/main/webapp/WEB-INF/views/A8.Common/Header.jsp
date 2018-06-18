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
		cursor:pointer;
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
	
	.ohw-allmenu-big {		
		padding:5px;
		text-align:center;
		cursor:pointer;
	}
	
	.ohw-midcategory-travel, .ohw-midcategory-music, .ohw-midcategory-game, .ohw-midcategory-rental, .ohw-midcategory-agency, .ohw-midcategory-freelancer, .ohw-midcategory-animal {
		display:none;
	}
	
</style>

<script type="text/javascript">
	//아이디 기억용 쿠키 생성 및 활용 - made by lbj
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}
	
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}
	
	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
	//////////////////////////////////////////
	
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
		var flag = confirm("로그아웃 하시겠습니까?");
		if(flag){
			$.ajax({
				url:"lbjlogout1.go",
				success:function(data){
					alert(data);
					Kakao.Auth.logout();
					window.history.go(0);
				},
				error:function(a,b,c){
					alert("로그아웃 에러 : " + a + ", " + b + ", " + c);
				}
			});	
		}else{
			alert("취소하였습니다.");
		}
	}
	/* 로그아웃 Function */
	
	//병준이 마일리지 관련 함수들
	$(function(){
		$('#chargeMoney').on('change',function(){
			$('#afterChargeMoney').html("");
			var fcmHtml = "충전 후 마일리지 : ";
			var member_cash = $('#member_cash').val()*1;
			var changeMoney = $(this).val()*1;
			var sumMoney = member_cash + changeMoney;
			
			fcmHtml += sumMoney;
			$('#afterChargeMoney').html(fcmHtml);
		})
	});
	
	/////

</script>

</head>

<body>
<div class = "container">
	<div align = "right">
		<c:if test="${empty loginUser}">		
			<div class = "ohw-div-login">
				<button type = "button" class = "btn btn-default" data-toggle="modal" data-target="#login-modal" 
				data-backdrop="static" data-keyboard="false">
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
											<td align="center"> ${ loginUser.member_name } 님 </td>
											<td align="right">									
												<button id="lbjmypagebtn1" class="btn btn-default" onclick="location.href = 'lbjmypage.go?member_id=${loginUser.member_id}'" style="width:90px;">MyPage</button>
											</td>									
										</tr><!-- style="margin-left:140px;"  -->
										<tr>
											<td colspan="2"><hr></td>
										</tr>
										<tr>
											<td align="center">내 마일리지 : <font style="color:red;">${loginUser.member_cash}</font></td>
											<td align="right"><button id=" lbjmypagebtn2" class="btn btn-default" data-toggle="modal" data-target="#chargeCash" style="width:90px;">충전</button></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>			
						<c:if test="${loginUser.member_id eq 'guest'}">
						<td>
		<%-- <c:out value="${ sessionScope.loginUser }" /> --%>
			
				<button type = "button" class = "btn btn-default" data-toggle="modal" onclick="kakaologintest();">
					<i class = "fa fa-sign-in"></i>LogIn
				</button>				
		<script type="text/javascript">
		function kakaologintest(){
			$.ajax({
				url:"kakaologinbymy.go",
				success:function(data){
				console.log(data)
				if(data == "카카오로그인함"){
				window.history.go(0);	
				}else{
					$("#login-modal").modal("show");	
				}
			},
				error:function(a,b,c){
					alert("로그아웃 에러 : " + a + ", " + b + ", " + c);
				}
				
			})			
		}
		</script>
			</td>		
				</c:if>							
					<td>					
						<c:if test="${ loginUser.member_id ne 'guest'}">
							<button type = "button" class = "btn btn-default" data-toggle="modal" data-target="#myitem">
								<i class = "fa fa-address-card"></i> MyItem
							</button>
						</c:if>
						<c:if test="${ loginUser.member_id eq 'guest'}">
							<button type = "button" class = "btn btn-default" onclick="javasrcipt:alert('아이템을 확인하기 위해선 독신사사이트에 로그인해주세요!');">
								<i class = "fa fa-address-card"></i> MyItem
							</button>
						</c:if>					
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
		        		<input type="hidden" id="member_cash" value="${loginUser.member_cash}">
		        			<span class="lbjspan" style="font-size: 20px;"><i class="fa fa-money" style="font-size:24px"></i>마일리지</span><br><br>
		        			<input type="number" id="chargeMoney" min="10000" max="500000" step="5000" placeholder="충전금액" style="align:center; margin-left:10px; width:80%; color:black;">
		        			<br><br>
		        			<span class="lbjspan">보유 마일리지 : ${loginUser.member_cash}</span><br>
		        			<span id="afterChargeMoney" class="lbjspan">충전 후 마일리지 : </span><br>
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
		        						<!-- <td><button id="lbjbtnCredit" onclick="fnCreditMethod(this);">신용카드</button></td> -->
		        						<td><button id="lbjbtnnobank" onclick="fnNoBankBook(this);">무통장입금</button></td>
		        					</tr>
		        					<tr>
		        						<td colspan="4">결제한도 &nbsp;&nbsp;&nbsp;&nbsp;월 결제한도: 500,000</td>
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
								function fnKindOfPay(data) {
									$('#lbjNoBankBook-div').hide();
									$('#lbjcreditcard-div').hide();	                             
									var str = '<i class="fa fa-sort-down" style="font-size:24px"></i>';	                             
									switch(data.id) {
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
		        					var lbjpayVal = $('#lbjpay').text();
		        					var chargeMoney = $('#chargeMoney').val();
		
		        					console.log(lbjpayVal);
		        					if(chargeMoney != ""){
		        						switch(lbjpayVal){
			        					case "휴대폰":
			        						location.href="lbjMovePaymentByPhone.go?chargeMoney="+$('#chargeMoney').val();
			        						break;
			        					case "카카오페이":
			        						location.href="lbjMovePaymentByKakao.go?chargeMoney="+$('#chargeMoney').val();
			        						break;
			        					/* case "신용카드":
			        						location.href="lbjMovePaymentByCredit.go?chargeMoney="+$('#chargeMoney').val();
			        						break; */
			        					case "무통장입금":
			        						//모든 정보가 입력되었는 지 확인부터 해야됨
			        						//window.open("lbjmoveMileagePaymentPage.go","","width=500,height=450");
			        						location.href="lbjMovePaymentByNoBankBook.go?chargeMoney="+$('#chargeMoney').val();
			        						break;
			        					}
		        					}else{
		        						alert("충전할 금액을 입력하세요.");	
		        					}
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
					<form action="headerSearch.go" method="get">
						<div class="ohw-div-search input-group">
							<input type="text" class="form-control" placeholder="Search" name="searchKeyword">
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
						<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-chevron-down pull-right"></span> 카테고리 전체 보기 
						</a>
						<ul class="dropdown-menu mega-dropdown-menu row">
				            <li class="col-sm-3">
								<ul>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-live">생활</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-travel">여행</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-music">음악</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-game">게임</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-rental">렌탈</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-agency">대행</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-freelancer">프리랜서</a></li>
									<li class = "dropdown-header ohw-allmenu-big"><a class = "dropdown-header" id = "midcategory-animal">반려동물</a></li>																		
								</ul>
							</li>
							<li class="col-sm-3 ohw-midcategory-live ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "홈" onClick = "MidCategoryCount(this.id)">홈</a></li>
									<li><a id = "파티" onClick = "SmallCategoryCount(this.id)">파티</a></li>
									<li><a id = "인테리어" onClick = "SmallCategoryCount(this.id)">인테리어</a></li>
									<li><a id = "청소" onClick = "SmallCategoryCount(this.id)">청소</a></li>
									<li><a id = "수리" onClick = "SmallCategoryCount(this.id)">수리</a></li>
									<li><a id = "증/개축" onClick = "SmallCategoryCount(this.id)">증/개축</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "푸드" onClick = "MidCategoryCount(this.id)">푸드</a></li>
									<li><a id = "한식" onClick = "SmallCategoryCount(this.id)">한식</a></li>
									<li><a id = "중식" onClick = "SmallCategoryCount(this.id)">중식</a></li>
									<li><a id = "양식" onClick = "SmallCategoryCount(this.id)">양식</a></li>
									<li><a id = "디저트" onClick = "SmallCategoryCount(this.id)">디저트</a></li>
									<li><a id = "푸드-기타" onClick = "SmallCategoryCount(this.id)">기타 푸드</a></li>
								</ul>
							</li>
							<li class="col-sm-3 ohw-midcategory-live ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "뷰티" onClick = "MidCategoryCount(this.id)">뷰티</a></li>
									<li><a id = "헤어디자인" onClick = "SmallCategoryCount(this.id)">헤어 디자인</a></li>
									<li><a id = "메이크업" onClick = "SmallCategoryCount(this.id)">메이크 업</a></li>
									<li><a id = "패션" onClick = "SmallCategoryCount(this.id)">패션</a></li>
									<li><a id = "뷰티-기타" onClick = "SmallCategoryCount(this.id)">기타 뷰티</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "스포츠" onClick = "MidCategoryCount(this.id)">스포츠</a></li>
									<li><a id = "실내스포츠" onClick = "SmallCategoryCount(this.id)">실내 스포츠</a></li>
									<li><a id = "실외스포츠" onClick = "SmallCategoryCount(this.id)">실외 스포츠</a></li>
									<li><a id = "항공레저" onClick = "SmallCategoryCount(this.id)">항공 레저</a></li>
									<li><a id = "수상레저" onClick = "SmallCategoryCount(this.id)">수상 레저</a></li>
									<li><a id = "지상레저" onClick = "SmallCategoryCount(this.id)">지상 레저</a></li>
									<li><a id = "스포츠-기타" onClick = "SmallCategoryCount(this.id)">기타 스포츠</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-travel ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "국내" onClick = "MidCategoryCount(this.id)">국내</a></li>
									<li><a id = "국내-가이드" onClick = "SmallCategoryCount(this.id)">가이드</a></li>
									<li><a id = "국내-운전기사" onClick = "SmallCategoryCount(this.id)">운전기사</a></li>
									<li><a id = "국내-플래너" onClick = "SmallCategoryCount(this.id)">플래너</a></li>									
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "해외" onClick = "MidCategoryCount(this.id)">해외</a></li>
									<li><a id = "해외-가이드" onClick = "SmallCategoryCount(this.id)">가이드</a></li>
									<li><a id = "해외-운전기사" onClick = "SmallCategoryCount(this.id)">운전기사</a></li>
									<li><a id = "해외-통역" onClick = "SmallCategoryCount(this.id)">통역</a></li>
									<li><a id = "해외-플래너" onClick = "SmallCategoryCount(this.id)">플래너</a></li>									
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-music ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "악기" onClick = "MidCategoryCount(this.id)">악기</a></li>
									<li><a id = "현악기" onClick = "SmallCategoryCount(this.id)">현악기</a></li>
									<li><a id = "관악기" onClick = "SmallCategoryCount(this.id)">관악기</a></li>
									<li><a id = "타악기" onClick = "SmallCategoryCount(this.id)">타악기</a></li>
									<li><a id = "디제잉" onClick = "SmallCategoryCount(this.id)">디제잉</a></li>
									<li><a id = "악기-기타" onClick = "SmallCategoryCount(this.id)">기타 악기</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "보컬" onClick = "MidCategoryCount(this.id)">보컬</a></li>
									<li><a id = "보컬-오페라" onClick = "SmallCategoryCount(this.id)">오페라</a></li>
									<li><a id = "보컬-뮤지컬" onClick = "SmallCategoryCount(this.id)">뮤지컬</a></li>
									<li><a id = "보컬-판소리" onClick = "SmallCategoryCount(this.id)">판소리</a></li>
									<li><a id = "보컬-ROCK" onClick = "SmallCategoryCount(this.id)">ROCK</a></li>
									<li><a id = "보컬-RnB" onClick = "SmallCategoryCount(this.id)">RnB</a></li>
									<li><a id = "보컬-힙합" onClick = "SmallCategoryCount(this.id)">HipHop</a></li>
									<li><a id = "보컬-기타" onClick = "SmallCategoryCount(this.id)">기타 보컬 </a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-music ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "댄스" onClick = "MidCategoryCount(this.id)">댄스</a></li>
									<li><a id = "현대무용" onClick = "SmallCategoryCount(this.id)">현대무용</a></li>
									<li><a id = "고전무용" onClick = "SmallCategoryCount(this.id)">고전무용</a></li>
									<li><a id = "한국무용" onClick = "SmallCategoryCount(this.id)">한국무용</a></li>
									<li><a id = "발레" onClick = "SmallCategoryCount(this.id)">발레</a></li>
									<li><a id = "방송댄스" onClick = "SmallCategoryCount(this.id)">방송댄스</a></li>
									<li><a id = "댄스-기타" onClick = "SmallCategoryCount(this.id)">기타댄스</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "작곡" onClick = "MidCategoryCount(this.id)">작곡</a></li>
									<li><a id = "작곡-발라드" onClick = "SmallCategoryCount(this.id)">발라드</a></li>
									<li><a id = "작곡-RnB" onClick = "SmallCategoryCount(this.id)">RnB</a></li>
									<li><a id = "작곡-댄스가요" onClick = "SmallCategoryCount(this.id)">댄스가요</a></li>
									<li><a id = "작곡-트로트" onClick = "SmallCategoryCount(this.id)">트로트</a></li>
									<li><a id = "작곡-록" onClick = "SmallCategoryCount(this.id)">ROCK</a></li>
									<li><a id = "작곡-힙합" onClick = "SmallCategoryCount(this.id)">HipHop</a></li>
									<li><a id = "작곡-기타" onClick = "SmallCategoryCount(this.id)">기타작곡</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-game ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "PC" onClick = "MidCategoryCount(this.id)">PC</a></li>
									<li><a id = "PC-액션" onClick = "SmallCategoryCount(this.id)">액션</a></li>
									<li><a id = "PC-RPG" onClick = "SmallCategoryCount(this.id)">RPG</a></li>
									<li><a id = "PC-FPS" onClick = "SmallCategoryCount(this.id)">FPS</a></li>
									<li><a id = "PC-AOS" onClick = "SmallCategoryCount(this.id)">AOS</a></li>
									<li><a id = "PC-아케이드" onClick = "SmallCategoryCount(this.id)">아케이드</a></li>
									<li><a id = "PC-레이싱" onClick = "SmallCategoryCount(this.id)">레이싱</a></li>
									<li><a id = "PC-스포츠" onClick = "SmallCategoryCount(this.id)">스포츠</a></li>
									<li><a id = "PC-시뮬레이션" onClick = "SmallCategoryCount(this.id)">시뮬레이션</a></li>
									<li><a id = "PC-기타" onClick = "SmallCategoryCount(this.id)">기타 PC 게임</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "콘솔" onClick = "MidCategoryCount(this.id)">콘솔</a></li>
									<li><a id = "콘솔-액션" onClick = "SmallCategoryCount(this.id)">액션</a></li>
									<li><a id = "콘솔-RPG" onClick = "SmallCategoryCount(this.id)">RPG</a></li>
									<li><a id = "콘솔-FPS" onClick = "SmallCategoryCount(this.id)">FPS</a></li>
									<li><a id = "콘솔-AOS" onClick = "SmallCategoryCount(this.id)">AOS</a></li>
									<li><a id = "콘솔-아케이드" onClick = "SmallCategoryCount(this.id)">아케이드</a></li>
									<li><a id = "콘솔-레이싱" onClick = "SmallCategoryCount(this.id)">레이싱</a></li>
									<li><a id = "콘솔-스포츠" onClick = "SmallCategoryCount(this.id)">스포츠</a></li>
									<li><a id = "콘솔-시뮬레이션" onClick = "SmallCategoryCount(this.id)">시뮬레이션</a></li>
									<li><a id = "콘솔-기타" onClick = "SmallCategoryCount(this.id)">기타 콘솔 게임</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-game ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "모바일" onClick = "MidCategoryCount(this.id)">모바일</a></li>									
									<li><a id = "모바일-액션" onClick = "SmallCategoryCount(this.id)">액션</a></li>
									<li><a id = "모바일-RPG" onClick = "SmallCategoryCount(this.id)">RPG</a></li>
									<li><a id = "모바일-FPS" onClick = "SmallCategoryCount(this.id)">FPS</a></li>
									<li><a id = "모바일-AOS" onClick = "SmallCategoryCount(this.id)">AOS</a></li>
									<li><a id = "모바일-아케이드" onClick = "SmallCategoryCount(this.id)">아케이드</a></li>
									<li><a id = "모바일-레이싱" onClick = "SmallCategoryCount(this.id)">레이싱</a></li>
									<li><a id = "모바일-스포츠" onClick = "SmallCategoryCount(this.id)">스포츠</a></li>
									<li><a id = "모바일-시뮬레이션" onClick = "SmallCategoryCount(this.id)">시뮬레이션</a></li>
									<li><a id = "모바일-기타" onClick = "SmallCategoryCount(this.id)">기타 모바일 게임</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "게임기타" onClick = "MidCategoryCount(this.id)">그 외 게임</a></li>
									<li><a id = "기타-액션" onClick = "SmallCategoryCount(this.id)">액션</a></li>
									<li><a id = "기타-RPG" onClick = "SmallCategoryCount(this.id)">RPG</a></li>
									<li><a id = "기타-FPS" onClick = "SmallCategoryCount(this.id)">FPS</a></li>
									<li><a id = "기타-AOS" onClick = "SmallCategoryCount(this.id)">AOS</a></li>
									<li><a id = "기타-아케이드" onClick = "SmallCategoryCount(this.id)">아케이드</a></li>
									<li><a id = "기타-레이싱" onClick = "SmallCategoryCount(this.id)">레이싱</a></li>
									<li><a id = "기타-스포츠" onClick = "SmallCategoryCount(this.id)">스포츠</a></li>
									<li><a id = "기타-시뮬레이션" onClick = "SmallCategoryCount(this.id)">시뮬레이션</a></li>
									<li><a id = "기타장르" onClick = "SmallCategoryCount(this.id)">기타 그 외 게임</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-rental ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "렌트" onClick = "MidCategoryCount(this.id)">렌탈</a></li>
									<li><a id = "주거용품" onClick = "SmallCategoryCount(this.id)">주거용품</a></li>
									<li><a id = "생활용품" onClick = "SmallCategoryCount(this.id)">생활 용품</a></li>
									<li><a id = "스포츠용품" onClick = "SmallCategoryCount(this.id)">스포츠 용품</a></li>									
									<li class="divider"></li>									
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-agency ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "1인" onClick = "MidCategoryCount(this.id)">1인</a></li>
									<li><a id = "애인대행" onClick = "SmallCategoryCount(this.id)">애인 대행</a></li>
									<li><a id = "친구대행" onClick = "SmallCategoryCount(this.id)">친구 대행</a></li>									
									<li class="divider"></li>
									<li class="dropdown-header"><a  id = "다인" onClick = "MidCategoryCount(this.id)">다인</a></li>
									<li><a id = "하객대행" onClick = "SmallCategoryCount(this.id)">하객 대행</a></li>
									<li><a id = "방청객대행" onClick = "SmallCategoryCount(this.id)">방청객 대행</a></li>
									<li><a id = "덱스트라대행" onClick = "SmallCategoryCount(this.id)">엑스트라 대행</a></li>									
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-freelancer ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "프로그래머" onClick = "MidCategoryCount(this.id)">프로그래머</a></li>
									<li><a id = "C" onClick = "SmallCategoryCount(this.id)">C</a></li>
									<li><a id = "C++" onClick = "SmallCategoryCount(this.id)">C++</a></li>
									<li><a id = "C#" onClick = "SmallCategoryCount(this.id)">C#</a></li>
									<li><a id = "Java" onClick = "SmallCategoryCount(this.id)">Java</a></li>
									<li><a id = "PHP" onClick = "SmallCategoryCount(this.id)">PHP</a></li>
									<li><a id = "Node" onClick = "SmallCategoryCount(this.id)">Node</a></li>
									<li><a id = "프로그램-기타" onClick = "SmallCategoryCount(this.id)">기타 프로그래머</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "디자이너" onClick = "MidCategoryCount(this.id)">디자이너</a></li>
									<li><a id = "포토샾" onClick = "SmallCategoryCount(this.id)">포토샵</a></li>
									<li><a id = "일러스트레이터" onClick = "SmallCategoryCount(this.id)">일러스트레이터</a></li>
									<li><a id = "디자인" onClick = "SmallCategoryCount(this.id)">디자인</a></li>
									<li><a id = "디자이너-기타" onClick = "SmallCategoryCount(this.id)">기타 디자이너</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-freelancer ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "작가" onClick = "MidCategoryCount(this.id)">작가</a></li>
									<li><a id = "소설가" onClick = "SmallCategoryCount(this.id)">소설가</a></li>
									<li><a id = "만화가" onClick = "SmallCategoryCount(this.id)">만화가</a></li>
									<li><a id = "스토리작가" onClick = "SmallCategoryCount(this.id)">스토리 작가</a></li>
									<li><a id = "방송작가" onClick = "SmallCategoryCount(this.id)">방송 작가</a></li>
									<li><a id = "각본가" onClick = "SmallCategoryCount(this.id)">각본가</a></li>
									<li><a id = "시나리오라이터" onClick = "SmallCategoryCount(this.id)">시나리오 라이터</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "번역" onClick = "MidCategoryCount(this.id)">번역</a></li>
									<li><a id = "영어" onClick = "SmallCategoryCount(this.id)">영어</a></li>
									<li><a id = "중국어" onClick = "SmallCategoryCount(this.id)">중국어</a></li>
									<li><a id = "일본어" onClick = "SmallCategoryCount(this.id)">일본어</a></li>
									<li><a id = "러시아어" onClick = "SmallCategoryCount(this.id)">러시아어</a></li>
									<li><a id = "프랑스어" onClick = "SmallCategoryCount(this.id)">프랑스어</a></li>
									<li><a id = "독일어" onClick = "SmallCategoryCount(this.id)">독일어</a></li>
									<li><a id = "외국어-기타" onClick = "SmallCategoryCount(this.id)">기타 외국어</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-animal ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "강아지" onClick = "MidCategoryCount(this.id)">강아지</a></li>
									<li><a id = "강아지-미용" onClick = "SmallCategoryCount(this.id)">미용</a></li>
									<li><a id = "강아지-펫시터" onClick = "SmallCategoryCount(this.id)">펫 시터</a></li>
									<li><a id = "강아지-행동교정" onClick = "SmallCategoryCount(this.id)">행동 교정</a></li>
									<li><a id = "강아지-진료" onClick = "SmallCategoryCount(this.id)">진료</a></li>
									<li class="divider"></li>
									<li class="dropdown-header"><a id = "고양이" onClick = "MidCategoryCount(this.id)">고양이</a></li>
									<li><a id = "고양이-미용" onClick = "SmallCategoryCount(this.id)">미용</a></li>
									<li><a id = "고양이-펫시터" onClick = "SmallCategoryCount(this.id)">펫 시터</a></li>
									<li><a id = "고양이-행동교정" onClick = "SmallCategoryCount(this.id)">행동 교정</a></li>
									<li><a id = "고양이-진료" onClick = "SmallCategoryCount(this.id)">진료</a></li>
								</ul>
							</li>			
							<li class="col-sm-3 ohw-midcategory-animal ohw-midcategory-all">
								<ul>
									<li class="dropdown-header"><a id = "반려동물기타" onClick = "MidCategoryCount(this.id)">기타 동물</a></li>
									<li><a id = "기타동물-미용" onClick = "SmallCategoryCount(this.id)">미용</a></li>
									<li><a id = "기타동물-펫시터" onClick = "SmallCategoryCount(this.id)">펫 시터</a></li>
									<li><a id = "기타동물-행동교정" onClick = "SmallCategoryCount(this.id)">행동 교정</a></li>
									<li><a id = "기타동물-진료" onClick = "SmallCategoryCount(this.id)">진료</a></li>									
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
								var realTimeBar = "";
								var realTimeBarDrop = "";
								
								for(var i in json.headerCategoryBig){				
									bigCategory += '<td class = "ohw-menu-col-td">' + 
														'<a id = "' + json.headerCategoryBig[i].headerCategoryBigName + '" onClick = "BigCategoryCount(this.id)" >' + json.headerCategoryBig[i].headerCategoryBigName + '</a>' + 
													'</td>'									
								}
								
								for(var i in json.headerCategorySmall){				
									realTimeBar += '<li class = "ohw-menu-realtimebar-li">' + 
														'<a id = "' + json.headerCategorySmall[i].headerCategorySmallName + '" onClick = "SmallCategoryCount(this.id)">' + json.headerCategorySmall[i].headerCategorySmallName + '</a>' + 
													'</li>'												
								}
								
								for(var i in json.headerCategorySmall){				
									realTimeBarDrop += '<li class = "ohw-menu-realtimebar-drop">' + 
															'<a id = "' + json.headerCategorySmall[i].headerCategorySmallName + '" onClick = "SmallCategoryCount(this.id)">' + json.headerCategorySmall[i].headerCategorySmallName + '</a>' + 
														'</li>'												
								}
								
								menuTd = '<td class = "ohw-menu-col-td ohw-menu-realtimebar">' + 
											'<div class = "ohw-menu-realtimebar-content">' + 
												'<dl class = "ohw-menu-realtimebar-dl">' + 
													'<dd class = "ohw-menu-realtimebar-dd">' + 
														'<ol class = "ohw-menu-realtimebar-ol"></ol>' + 
													'</dd>' + 
												'</dl>' + 
											'</div>' + 
										'</td>' + 
										'<td class = "ohw-menu-realtimebar-dropdown dropdown">' + 
											'<a class="dropdown-toggle" data-toggle="dropdown" href="#">' + 										
													'<i class = "fa fa-chevron-down"></i>' + 											
											'</a>' + 
											'<ul class="ohw-dropdown-menu dropdown-menu">' + 
												/* 드랍다운 소카테고리 들어가는 자리 */
											'</ul>' + 
											'</a>' + 
										'</td>'									
								
								$('.ohw-menu-tr-category').append(bigCategory);
								$('.ohw-menu-tr-category').append(menuTd);
								$('.ohw-menu-realtimebar-ol').append(realTimeBar);
								$('.ohw-dropdown-menu').append(realTimeBarDrop);
									
							}, 
						error : function(request, status, errorData) {
									alert("Error Code : " + request.status + "\n"
										+ "Message : " + request.responseText + "\n"
										+ "Error : " + errorData);
						}
					});				
					/* Menu Big Category End */					
					
					/* Category Click Count */					
					function BigCategoryCount(id){
						location.href='/goodluck/BigCategoryCount.go?bigCode=' + id + "&page=1";
					};
					
					function MidCategoryCount(id){
						location.href='/goodluck/MidCategoryCount.go?midCode=' + id + "&page=1";
					};
					
					function SmallCategoryCount(id){
						location.href='/goodluck/SmallCategoryCount.go?smallCode=' + id + "&page=1";						
					};					
					/* Category Click Count End */
					
					/* AllCategory Show Hide */
					$("#midcategory-live").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-live").show();						
					});
					
					$("#midcategory-travel").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-travel").show();						
					});					
					
					$("#midcategory-music").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-music").show();						
					});					
					
					$("#midcategory-game").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-game").show();						
					});					
					
					$("#midcategory-rental").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-rental").show();						
					});					
					
					$("#midcategory-agency").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-agency").show();						
					});					
					
					$("#midcategory-freelancer").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-freelancer").show();						
					});					
					
					$("#midcategory-animal").hover(function(){
						$(".ohw-midcategory-all").hide(); $(".ohw-midcategory-animal").show();						
					});
					/* AllCategory Show Hide End */
					
				</script>
				<div class = "ohw-menu-col-div">
					<table class = "ohw-menu-col-table">						
						<tr class = "ohw-menu-tr-category">							
							<td class = "ohw-menu-col-td dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 작업 <span class="caret"></span></a>							
								<ul class="dropdown-menu">
									<li><a href = "ohw-movePaymentPage.go">현웅</a></li>
									<li><a href="ukWookTest.go">욱재</a></li>
									<li><a href="lbjmypage.go">동기</a></li>
									<li><a href="bshtest.go?link2_no=인테리어">승호</a></li>
									<li><a href="#">지석</a></li>
									<li><a href="lbjMoveManagingNewArticles.go">뱅준</a></li>
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