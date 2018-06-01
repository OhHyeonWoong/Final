<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!---------------------------------- Jeon Dong Gi ------------------------------->
<!-- 부트스트랩: common 폴더 내 부트스르랩 공용 파일 사용 -->
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<!-- font awesome -->
<link rel="stylesheet" href="/goodluck/resources/A3.JDK/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="/goodluck/resources/A3.JDK/css/style.css" media="screen" title="no title" charset="utf-8">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins)common 폴더 내 공용파일 사용 -->
<!-- <script	src="/rs/resources/common/js/jquery-3.3.1.min.js"></script> -->
<!-- <script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script> -->
<!-- 부트스트랩용 자바스크립트 파일 공용 폴더 내부  js 파일 사용-->
<!-- <script src="/rs/resources/common/bootstrap.min.js"></script> -->
<!---------------------------------- Jeon Dong Gi-------------------------------->
<!-- byungjun -->
<link href="/goodluck/resources/A6.LBJ/css/lbj_sidebar.css" rel="stylesheet">
<!-- byungjun -->
<style type="text/css">
 	.lbjdiv{
 		margin-bottom:50px;
 	}
	.lbjh3{
		/* text-align:center;
		align:center; */
	}
	.lbjtable{
		/* width:800px; */
		text-align:center;
	}
	.lbjth{
		text-align:center;
	}
</style>
</head>
<body style="display:absolute; overflow:auto;">
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<script type="text/javascript" src="/goodluck/resources/A6.LBJ/js/lbj_sidebar.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#allCheckBox').on('click',function(){
				//모든 체크박스를 체크
				if($('input[type="checkbox"][name="chk1"]').prop('checked')){
					$('input[type="checkbox"][name="chk1"]').attr('checked',false);
				}else{
					$('input[type="checkbox"][name="chk1"]').attr('checked',true);
				}
			});
		});
		
		function fnDeleteQna(){
			var checkBox1 = $('input[name="chk1"]:checked');
			var chkValue = new Array();
			for(var i=0;i<checkBox1.length;i++){
				chkValue[i] = checkBox1[i].value;
				console.log(chkValue[i]);
			}
			console.log("length = " + chkValue.length);
			
			$.ajax({
				url:"lbjDeleteQna.go",
				type:"post",
				data:{
					question_no: chkValue
				},
				success:function(data){
					alert(data);
					if(data == '게시글 삭제 성공!'){
						window.history.go(0);
					}
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
			/* var checkBox2 = $('input[name="chk1"]:checked').val();
			console.log(checkBox1);
			console.log(checkBox2); */
		}
		
		function fnQnaReload(page){
			console.log("fnQnaReload(page) = " + page);
			$.ajax({
				url:"lbjMyQna.go",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					//$('#lbjQnaTable').empty();
					$('#lbjQnaTable').empty();
					/* $('#lbjQnaTable').removeClass("table table-striped lbjtable");
					$('#lbjQnaTable').addClass("table table-striped lbjtable"); */
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjQnaTable"><tr><td class="lbjth"><input type="checkbox" id="allCheckBox" value="">전체선택</td>'+
				'<td class="lbjth" colspan="3" style="text-align:left;"><a href="javascript:void(0);" class="btn btn-danger btn-xs" onclick="fnDeleteQna(); return false;"><span class="glyphicon glyphicon-remove"></span>삭제</a></td>'+
				'<td class="lbjth" style="text-align:right;"><a class="btn btn-info btn-xs" href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a></td>'+
				'</tr><tr><th class="lbjth">선택</th><th class="lbjth">분야</th>'+
				'<th class="lbjth">제목</th><th class="lbjth">처리상황</th><th class="lbjth">등록일시</th></tr>';
					
					for(var i in json.qna){
						console.log("json.qna.question_no = " + json.qna[i].question_no);
						htmlStr += "<tr><td><input type='checkbox' name='chk1' id='chkBox"+i
						+"' value="+json.qna[i].question_no+"></td><td>"+ json.qna[i].question_category
						+"</td><td><a href='lbjqnadetail.go?question_writer="+json.qna[i].question_writer+"&question_no="+json.qna[i].question_no+"'>"+json.qna[i].question_title
					    +"</a></td><td>"+json.qna[i].question_answer_state+"</td><td>"+json.qna[i].question_date+"</td></tr>";
					}
					//페이징 처리//
					htmlStr += '<tr><td colspan="5"><div style="text-align:center;">'
					if(json.qna[0].qnaListCount > 6){
						if(json.qna[0].qnaCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload(1); return false;"> << </a>&nbsp;';
						}
						if(json.qna[0].qnaCurrentPage > json.qna[0].qnaStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+(json.qna[0].qnaCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						console.log("json.qna[0].qnaStartPage = " + json.qna[0].qnaStartPage);
						console.log("json.qna[0].qnaEndRow = " + json.qna[0].qnaEndRow);
						for(var i=json.qna[0].qnaStartPage;i<=json.qna[0].qnaEndRow;i++){
							if(i == json.qna[0].qnaCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.qna[0].qnaCurrentPage != json.qna[0].qnaEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+(json.qna[0].qnaCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.qna[0].qnaCurrentPage >= json.qna[0].qnaMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnQnaReload('+json.qna[0].qnaMaxPage+'); return false;">>></a>';
						}
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 끝//
					$('#lbjqnaDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		function fnItemReload(page){
			console.log("fnItemReload(page) = " + page);
			$.ajax({
				url:"lbjMyItem.go",
				type:"post",
				dataType:"json",
				data:{
					member_id: $('#InputId').val(),
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#lbjItemTable').empty();
					
					var htmlStr = '<table class="table table-striped lbjtable" id="lbjItemTable"><tr>'+
					'<th class="lbjth">아이템명</th><th class="lbjth">구매일</th><th class="lbjth">시작일</th>'+
					'<th class="lbjth">종료일</th><th class="lbjth">이용횟수</th></tr>';
					
					for(var i in json.item){
						console.log("qna 페이징 처리");
						htmlStr += '<tr><td>'+json.item[i].itemname+'</td>'+
						'<td>'+json.item[i].buy_date+'</td>'+
						'<td>'+json.item[i].start_date+'</td>'+
						'<td>'+json.item[i].end_date+'</td>'+
						'<td>'+json.item[i].final_status+'</td></tr>';
					}
					
					//페이징 처리//
					htmlStr += '<tr><td colspan="5"><div style="text-align:center;">'
					if(json.item[0].itemListCount > 6){
						if(json.item[0].qnaCurrentPage <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload(1);"> << </a>&nbsp;';
						}
						if(json.item[0].qnaCurrentPage > json.item[0].qnaStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+(json.item[0].qnaCurrentPage-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.item[0].qnaStartPage;i<=json.item[0].itemEndRow;i++){
							if(i == json.item[0].qnaCurrentPage){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.item[0].qnaCurrentPage != json.item[0].itemEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+(json.item[0].qnaCurrentPage+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.item[0].qnaCurrentPage >= json.item[0].itemMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnItemReload('+json.item[0].itemMaxPage+'); return false;">>></a>';
						}
					}
					htmlStr += '</div></td></tr></table>';
					//페이징처리 끝//
					$('#lbjitemDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		//검사 결과가 모두 일치하면 true로 리턴
		var flag = false;
		//이메일 인증번호 저장용 변수
		var confirmNum = 0;
		//인증번호 확인버튼이 눌렸는지 여부 체크하는 변수
		var clickCheck = false;
		//이메일 발송 메소드
		function fnMemberGoEmail(){
			var email = $('#member_email').val();
			$.ajax({
				url:"lbjConfirmMailSending.go",
				type:"post",
				data:{
					//이메일 날리기
					member_email: email
				},
				dataType:"json",
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					if(json.confirmResult[0].message == '발송성공'){
						confirmNum = json.confirmResult[0].confirmNum;
					}
					alert(json.confirmResult[0].message);
					console.log("json.confirmResult = " + confirmNum);
					
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
		}
		//인증번호 체크하는 코드
		function fnConfirmNumCheck(){
			var certify = $('#certify').val();
			if(confirmNum == certify){
				alert("인증번호가 일치합니다.");
				clickCheck = true;
			}else{
				alert("인증번호가 일치하지 않습니다.");
				clickCheck = false;
			}
		}
		//회원정보 수정 전(submit 전)에 값 체크해서 보냄
		function fnValidationCheck(){
			/*
			 * 1. 비밀번호가 일치하는지 
			 * 2. 인증번호가 일치하는지
			 */ 
			// 1
			var pass1 = $('#InputPassword1').val();
			var pass2 = $('#InputPassword2').val();
			if(pass1 == pass2){
				flag = true;
			}else{
				flag = false;
				alert("비밀번호가 일치하지 않습니다.");
			}

			console.log("flag = " + flag);
			if(flag == true && clickCheck == true){
				return true;
			}else{
				alert("누락된 정보가 없나 확인해보세요.");
				return false;
			}
		}
	</script>
	<%-- <%@ include file = "/WEB-INF/views/A6.LBJ/sideBar.jsp" %> --%>
	<c:choose>
		<c:when test="${loginUser eq null}">
			<script type="text/javascript">
				location.href="home.go";
			</script>
		</c:when>
		<c:otherwise>
		
		<div class="container" id="lbjMyPageUp">
		<div style="width: 20%; float: left; height: 100%;">
			<%@ include file = "/WEB-INF/views/A6.LBJ/sideBar.jsp" %>
		</div>
		<div style="width: 76%; margin-left: 4%; float: left; height: 100%;">
			<h2 style="text-align:left;">마이페이지</h2>
			<hr>
			<!---------------- 전동기 수정 부분 : 나의 정보 -------------------------------------->
		 	<div>
		 	    <!-- 병준이 추가, 이상하시면 지우세요 동기형 -->
		 		<h3 class="lbjh3" id="lbjMyPage" style="">내 정보보기</h3>
		 		<!-- 벼어어어어어어어어어어주누누누누누이이이 -->
				<div class="login_form" >
				<div class="col-md-6 col-md-offset-3" style="float:none; align:center; margin-left:150px;">
					<form role="form" action="lbjUpdateMember.go" method="post" enctype="multipart/form-data" 
					  onsubmit="return fnValidationCheck();">
					  	<input type="hidden" name="member_regident_number" value="${loginUser.member_regident_number}">
						<div class="form-group">
							<label for="userid">프로필 사진</label>
							<div style="width : 200px; height : 200px; margin: 0 auto; border:1px solid black;">
							<img src="/goodluck/resources/uploadProfiles/${loginUser.member_renamephoto}" name ="profile_img" alt="profile_img" style="width:200px; height : 200px;"/>
							</div><br>
							<input type="file" name="member_profile" class="form-control" id="InputProfile" value="${loginUser.member_renamephoto}" style="width: 100%; margin: 0 auto;">
							<input type="hidden" name="member_profile1" value="${loginUser.member_renamephoto}">
						</div>
						<div class="form-group">
							<label for="userid">아이디</label>
							<div class="form-group">
							<input type="text" name="member_id" class="form-control" id="InputId" placeholder="아이디" 
								readonly="readonly" value="${loginUser.member_id}">
							</div>
						</div>
						<div class="form-group">
							<label for="username">이름</label> <input type="text"
								class="form-control" id="member_name" name="member_name" placeholder="이름을 입력해 주세요" required="required" 
								readonly="readonly" value="${loginUser.member_name}">
						</div>
						<div class="form-group">
							<label for="InputPassword1">비밀번호</label> <input type="password"
								class="form-control" id="InputPassword1" name="member_pw"  placeholder="비밀번호"
								 required="required" value="${loginUser.member_pw}">
						</div>
						<div class="form-group">
							<label for="InputPassword2">비밀번호 확인</label> <input type="password"
								class="form-control" id="InputPassword2" placeholder="비밀번호 확인" required="required">
							<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
						</div>
						<div class="form-group">
							<label for="username">주민등록번호</label><br> 
							<table>
							<tr>
							<td><input type="text" class="form-control" readonly="readonly" 
							value="${fn:substring(loginUser.member_regident_number,0,6)}"></td>
							<td>-</td>
							<td><input type="text" class="form-control" readonly="readonly" 
							value="${fn:substring(loginUser.member_regident_number,6,7)}******"></td>
							</tr>	
							</table>
						</div>
						<div class="form-group">
							<label for="username">주소</label><br> 
							<input type="text" class="form-control" id="member_address" name="member_address" 
							placeholder="주소를 입력해 주세요." required="required" value="${loginUser.member_address}">
						</div>
						<div class="form-group">
							<label for="username">전화번호</label><br> 
							<input type="text" class="form-control" id="member_phone" name="member_phone" 
							placeholder="전화번호를 입력해주세요." required="required" value="${loginUser.member_phone}">
						</div>
						
						<div class="form-group">
							<label for="useremail">이메일</label>
							<div class="input-group">
								<input type="text" class="form-control" id="member_email" name="member_email" placeholder="이메일" 
								readonly="readonly" value="${loginUser.member_email}">
								<!--email 인증 요청--> 
                  				<span class="input-group-btn"><a href="javascript:void(0);" class="btn btn-default" onclick="fnMemberGoEmail(); return false;"><i class="fa fa-envelope"></i>인증요청</a></span>
							</div>
						</div>
						 <div class="form-group">
			               <label for="username">인증번호 입력</label>
			               <div class="input-group">
			               <input type="text" class="form-control" id="certify" placeholder="인증번호" required="required">
			               <!-- 인증번호 요청시 번호 입력확인 -->
			               <span class="input-group-btn"><a href="javascript:void(0);" class="btn btn-default" onclick="fnConfirmNumCheck(); return false;"><i class="fa fa-envelope"></i>인증번호 확인</a></span>
			               <!-- <input type="button" class="btn btn-default" value="인증번호 입력"> -->
			               </div>
			            </div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-info">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" class="btn btn-danger" value="탈퇴">
						</div>
					</form>
						</div>
					</div>
			</div>
	<!-----------------------------------전동기 수정 부분 ------------------------------------------------->
			<hr>
			<h3 class="lbjh3" id="lbjnowreservationInfo">현재 예약 정보보기</h3>
			<div class="lbjdiv">
			
				<table class="table table-striped lbjtable">
					<tr><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">상태</th></tr>
					<tr><td>게임</td><td><a href="#">롤 자크 배우실분 구합니다 現마스터</a></td><td>예약중</td></tr>
					<tr><td>여행</td><td><a href="#">파리 가이드 해주실 분 구합니다</a></td><td>거래중</td></tr>
					<tr><td>게임</td><td><a href="#">롤 원딜학개론 오픈합니다 前챌린저 </a></td><td>거래중</td></tr>
					<tr><td>음악</td><td><a href="#">드럼 배우실 분 구합니다 신청하세요</a></td><td>예약중</td></tr>
					<tr><td>음악</td><td><a href="#">방송댄스 배우실분?</a></td><td>거래중</td></tr>
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjpreservationInfo">지난 이용정보 보기</h3>
			<div class="lbjdiv">
				<table class="table table-striped lbjtable">
					<tr><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">상태</th></tr>
					<tr><td>반려동물</td><td><a href="#">강아지 출장미용 합니다 연락주세요</a></td><td>완료</td></tr>
					<tr><td>생활</td><td><a href="#">인테리어 합니다</a></td><td>완료</td></tr>
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjQnA">나의 QnA</h3>
			<div class="lbjdiv" id="lbjqnaDiv">
				<table class="table table-striped lbjtable" id="lbjQnaTable">
					<tr>
						<td class="lbjth">
							<input type="checkbox" id="allCheckBox" value="">전체선택
						</td>
						<td class="lbjth" colspan="3" style="text-align:left;">
							<a href="javascript:void(0);" class="btn btn-danger btn-xs" onclick="fnDeleteQna(); return false;"><span class="glyphicon glyphicon-remove"></span>삭제</a>
						</td>
						<td class="lbjth" style="text-align:right;">
							<a class='btn btn-info btn-xs' href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a>
						</td>
					</tr>
					<tr>
						<th class="lbjth">선택</th>
						<th class="lbjth">분야</th>
						<th class="lbjth">제목</th>
						<th class="lbjth">처리상황</th>
						<th class="lbjth">등록일시</th>
					</tr>
					<c:forEach var="qna" items="${lbjMyQna}" varStatus="status">
						<tr>
							<td><input type="checkbox" name="chk1" id="chkBox${status.count}" value="${qna.question_no}"></td>
							<td>${qna.question_category}</td>
							<td><a href="lbjqnadetail.go?question_writer=${qna.question_writer}&question_no=${qna.question_no}">${qna.question_title}</a></td>
							<td>${qna.question_answer_state}</td>
							<td>${qna.question_date}</td>
						</tr>
					</c:forEach>
					<!-- QnA 페이징 처리를 해봅시다. -->
					<c:if test="${qnaPage.qnaListCount > 10}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnQnaReload(1); return false;"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage-1}); return false;"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${qnaPage.qnaEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnQnaReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != qnaPage.qnaEndRow}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaCurrentPage+1}); return false;">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq qnaPage.qnaEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= qnaPage.qnaMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < qnaPage.qnaMaxPage}">
								<a href="javascript:void(0);" onclick="fnQnaReload(${qnaPage.qnaMaxPage}); return false;">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${qnaPage.qnaListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- QnA 페이징 처리 End -->
					<!-- 페이징 처리 -->
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyReport">내가 쓴 신고글 보기</h3>
			<div class="lbjdiv" id="lbjitemDiv">
				<table class="table table-striped lbjtable">
					<tr>
						<th colspan="4" class="lbjth" style="text-align:right;">
							<a class='btn btn-info btn-xs' href="lbjGoReportWrite.go"><span class="glyphicon glyphicon-edit"></span>작성하기</a>
						</th>
					</tr>
					<tr><th class="lbjth">글번호</th><th class="lbjth">제목</th><th class="lbjth">신고대상</th><th class="lbjth">작성일</th></tr>
					<tr><td>101</td><td><a href="javascript:location.href='lbjGoReportDetail.go'">약속 장소에 나오지 않았습니다</a></td><td>루키루키</td><td>2018/02/10</td></tr>
					<tr><td>199</td><td><a href="#">3시간 요청했는대 1시간반만 하고 갔습니다..하..</a></td><td>날라리다</td><td>2018/03/29</td></tr>
					<tr><td>608</td><td><a href="#">듀오 요청했더니 트롤짓 하네요ㅡㅡ</a></td><td>킹스오</td><td>2018/04/21</td></tr>
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyItem">내가 사용한 아이템 내역 보기</h3>
			<div class="lbjdiv">
				<table class="table table-striped lbjtable" id="lbjItemTable">
					<tr><th class="lbjth">아이템명</th><th class="lbjth">구매일</th><th class="lbjth">시작일</th><th class="lbjth">종료일</th><th class="lbjth">이용횟수</th></tr>
					<c:forEach var="item" items="${lbjMyItem}" varStatus="status">
						<tr>
							<td>${item.itemname}</td>
							<td>${item.buy_date}</td>
							<td>${item.start_date}</td>
							<td>${item.end_date}</td>
							<td>${item.final_status}</td>
						</tr>
					</c:forEach>
					<!-- <tr><td>글씨크기늘리기</td><td>2017/11/10</td><td>2017/12/31</td><td>2018/03/02</td><td>2</td></tr>
					<tr><td>배경색주기</td><td>2017/03/09</td><td>2017/03/11</td><td>2018/06/11</td><td>3</td></tr>
					<tr><td>폰트바꾸기</td><td>2017/02/10</td><td>2017/04/01</td><td>2018/06/30</td><td>1</td></tr>
				 -->
				 <!-- item 페이징 처리 -->
					 <c:if test="${itemPage.qnaListCount > 6}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${qnaPage.qnaCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnItemReload(1);"> << </a>
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage > qnaPage.qnaStartPage}">
								<a href="javascript:void(0);" onclick="fnItemReload(${qnaPage.qnaCurrentPage-1});"> < </a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage <= qnaPage.qnaStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${qnaPage.qnaStartPage}" end="${itemPage.itemEndRow}" step="1">
								<c:if test="${i eq qnaPage.qnaCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != qnaPage.qnaCurrentPage}">
									<a href="javascript:void(0);" onclick="fnItemReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${qnaPage.qnaCurrentPage != itemPage.itemEndRow}">
								<a href="javascript:void(0);" onclick="fnItemReload(${qnaPage.qnaCurrentPage+1});">></a>&nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage eq itemPage.itemEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${qnaPage.qnaCurrentPage >= itemPage.itemMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${qnaPage.qnaCurrentPage < itemPage.itemMaxPage}">
								<a href="javascript:void(0);" onclick="fnItemReload(${qnaPage.itemMaxPage});">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${itemPage.itemListCount <= 6}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- item 페이징 처리 End -->
				 </table>
			</div>
		</div>
	</div>
	<%-- <%@ include file = "/WEB-INF/views/A6.LBJ/login.jsp" %> --%>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
		</c:otherwise>
	</c:choose>
	
</body>
</html>