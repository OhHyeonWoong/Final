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
<link rel="stylesheet" href="/goodluck/A3.JDK/resources/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
<!-- Custom style -->
<link rel="stylesheet" href="/goodluck/resources/A3.JDK/css/style.css" media="screen" title="no title" charset="utf-8">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins)common 폴더 내 공용파일 사용 -->
<!-- <script	src="/rs/resources/common/js/jquery-3.3.1.min.js"></script> -->
<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<!-- 부트스트랩용 자바스크립트 파일 공용 폴더 내부  js 파일 사용-->
<script src="/rs/resources/common/bootstrap.min.js"></script>
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
<script type="text/javascript">
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
     /*사용자 설정 값 시작*/
    var speed          = 500;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'swing'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('.float_sidebar'); // 레이어 셀렉팅
    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'relative').css('z-index', '1');
    /*사용자 설정 값 끝*/
     // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
    else
        $win.scrollTop(0);
     //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop() - 270; //이부분을 조정해서 화면에 보이도록 맞추세요
        if (yPosition < 0)
    {
            yPosition = 0;
    }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
$(function(){
	$(window).scroll(function(){
		$(this).scrollTop() > -100 ? $(".float_sidebar").fadeIn() : $(".float_sidebar").fadeOut();
	});
});
</script>
</head>
<body style="display:absolute; overflow:auto;">
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<%-- <%@ include file = "/WEB-INF/views/A6.LBJ/sideBar.jsp" %> --%>
	<div class="container" id="lbjMyPageUp">
		<div style="width: 20%; float: left; height: 100%;">
			<%@ include file = "/WEB-INF/views/A6.LBJ/sideBar.jsp" %>
		</div>
		<div style="width: 76%; margin-left: 4%; float: left; height: 100%;">
			<h2 style="text-align:center;">마이페이지</h2>
			<hr>
			<!---------------- 전동기 수정 부분 : 나의 정보 -------------------------------------->
		 	<div id="lbjMyPage">
				<div class="login_form" >
				<div class="col-md-6 col-md-offset-3" style="float:none;">
					<form role="form">
						<div class="form-group">
							<label for="userid">프로필 사진</label>
							<div class="container" style="width : 130px; height : auto; margin: 0 auto; border:1px solid black;">
							<img src="#" name ="profile_img"/>
							</div><br>
							<input type="file" name="member_profile" class="form-control" id="InputProfile" style="width: 300px; margin: 0 auto;">
						</div>
						<div class="form-group">
							<label for="userid">아이디</label>
							<div class="form-group">
							<input type="text" name="member_id" class="form-control" id="InputId" placeholder="아이디" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label for="username">이름</label> <input type="text"
								class="form-control" id="member_name" placeholder="이름을 입력해 주세요" required="required" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="InputPassword1">비밀번호</label> <input type="password"
								class="form-control" id="InputPassword1" name="member_pw"  placeholder="비밀번호" required="required">
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
							<td><input type="text" class="form-control" readonly="readonly"></td>
							<td>-</td>
							<td><input type="text" class="form-control" readonly="readonly"></td>
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
							<div class="form-group">
								<input type="text" class="form-control" id="member_email" name="member_email" placeholder="" readonly="readonly">
								email 인증 요청 
							</div>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-info">확인</button>
						</div>
					</form>
						</div>
					</div>
			</div>
	<!-----------------------------------전동기 수정 부분 ------------------------------------------------->
			
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
			<div class="lbjdiv">
				<table class="table table-striped lbjtable">
					<tr>
						<td class="lbjth">
							<input type="checkbox" value="">전체선택
						</td>
						<td class="lbjth" colspan="3" style="text-align:left;">
							<a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>삭제</a>
						</td>
						<td class="lbjth" style="text-align:right;">
							<button onclick="location.href='qnawrite.go'">1:1 상담하기 > </button>
							<a class='btn btn-info btn-xs' href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a>
						</td>
					</tr>
					<tr>
						<th class="lbjth">선택</th>
						<th class="lbjth">분야</th>
						<th class="lbjth">제목</th>
						<th class="lbjth">처리상황</th>
						<th class="lbjth">등록일시</th></tr>
					<tr>
						<td><input type="checkbox" value=""></td>
						<td>취소요청</td>
						<td><a href="lbjqnadetail.go">단순변심</a></td>
						<td>답변완료</td>
						<td>2018/02/11</td>
					</tr>
					<tr>
						<td><input type="checkbox" value=""></td>
						<td>취소요청</td>
						<td><a href="lbjqnadetail.go">사기당함</a></td>
						<td>답변완료</td>
						<td>2018/03/01</td>
					</tr>
					<tr>
						<td><input type="checkbox" value=""></td>
						<td>취소요청</td>
						<td><a href="lbjqnadetail.go">비쌈</a></td>
						<td>처리중</td>
						<td>2017/11/19</td>
					</tr>
					<tr>
						<td><input type="checkbox" value=""></td>
						<td>환불요청</td>
						<td><a href="lbjqnadetail.go">아이디탈퇴</a></td>
						<td>처리완료</td>
						<td>2018/04/29</td>
					</tr>
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyReport">내가 쓴 신고글 보기</h3>
			<div class="lbjdiv">
				<table class="table table-striped lbjtable">
					<tr><th class="lbjth">글번호</th><th class="lbjth">제목</th><th class="lbjth">신고대상</th><th class="lbjth">작성일</th></tr>
					<tr><td>101</td><td><a href="#">약속 장소에 나오지 않았습니다</a></td><td>루키루키</td><td>2018/02/10</td></tr>
					<tr><td>199</td><td><a href="#">3시간 요청했는대 1시간반만 하고 갔습니다..하..</a></td><td>날라리다</td><td>2018/03/29</td></tr>
					<tr><td>608</td><td><a href="#">듀오 요청했더니 트롤짓 하네요ㅡㅡ</a></td><td>킹스오</td><td>2018/04/21</td></tr>
				</table>
			</div>
			<hr>
			<h3 class="lbjh3" id="lbjmyItem">내가 사용한 아이템 내역 보기</h3>
			<div class="lbjdiv">
				<table class="table table-striped lbjtable">
					<tr><th class="lbjth">아이템명</th><th class="lbjth">시작일</th><th class="lbjth">종료일</th><th class="lbjth">상태</th></tr>
					<tr><td>글씨크기늘리기</td><td>2017/12/31</td><td>2018/03/02</td><td>사용종료</td></tr>
					<tr><td>배경색주기</td><td>2017/03/11</td><td>2018/06/11</td><td>사용중</td></tr>
					<tr><td>폰트바꾸기</td><td>2017/04/01</td><td>2018/06/30</td><td>사용중</td></tr>
				</table>
			</div>
		</div>
	
	</div>
	
	
	
	<!-- <div class="container lbjdiv" style="">margin-top:-438px;
	<h2 style="text-align:center;">마이페이지</h2>
	<hr>
	<h3 class="lbjh3">내 정보보기</h3>
	<div class="lbjdiv">
	---------------- 전동기 수정 부분 : 나의 정보 --------------------------------------
 	<div class="container" >
		<div class="login_form" >
		<div class="col-md-6 col-md-offset-3">
			<form role="form">
				<div class="form-group">
					<label for="userid">프로필 사진</label>
					<div class="container" style="width : 130px; height : auto; margin: 0 auto; border:1px solid black;">
					<img src="#" name ="profile_img"/>
					</div><br>
					<input type="file" name="member_profile" class="form-control" id="InputProfile" style="width: 300px; margin: 0 auto;">
				</div>
				<div class="form-group">
					<label for="userid">아이디</label>
					<div class="form-group">
					<input type="text" name="member_id" class="form-control" id="InputId" placeholder="아이디" readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label for="username">이름</label> <input type="text"
						class="form-control" id="member_name" placeholder="이름을 입력해 주세요" required="required" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" id="InputPassword1" name="member_pw"  placeholder="비밀번호" required="required">
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
					<td><input type="text" class="form-control" readonly="readonly"></td>
					<td>-</td>
					<td><input type="text" class="form-control" readonly="readonly"></td>
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
					<div class="form-group">
						<input type="text" class="form-control" id="member_email" name="member_email" placeholder="" readonly="readonly">
						email 인증 요청 
					</div>
				</div>
				<div class="form-group text-center">
					<button type="submit" class="btn btn-info">확인</button>
				</div>
			</form>
				</div>
			</div>
	</div>	
	-----------------------------------전동기 수정 부분 -------------------------------------------------
	</div>
	<hr>
	<h3 class="lbjh3">현재 예약 정보보기</h3>
	<div class="lbjdiv">
	현재 예약 정보보기
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
	<h3 class="lbjh3">지난 이용정보 보기</h3>
	<div class="lbjdiv">
	지난 이용정보 보기
		<table class="table table-striped lbjtable">
			<tr><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">상태</th></tr>
			<tr><td>반려동물</td><td><a href="#">강아지 출장미용 합니다 연락주세요</a></td><td>완료</td></tr>
			<tr><td>생활</td><td><a href="#">인테리어 합니다</a></td><td>완료</td></tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">나의 QnA</h3>
	<div class="lbjdiv">
	나의 QnA
		<table class="table table-striped lbjtable">
			<tr>
				<td class="lbjth">
					<input type="checkbox" value="">전체선택
				</td>
				<td class="lbjth" colspan="3" style="text-align:left;">
					<a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>삭제</a>
				</td>
				<td class="lbjth" style="text-align:right;">
					<button onclick="location.href='qnawrite.go'">1:1 상담하기 > </button>
					<a class='btn btn-info btn-xs' href="lbjqnawrite.go"><span class="glyphicon glyphicon-edit"></span>1:1 상담하기 > </a>
				</td>
			</tr>
			<tr>
				<th class="lbjth">선택</th>
				<th class="lbjth">분야</th>
				<th class="lbjth">제목</th>
				<th class="lbjth">처리상황</th>
				<th class="lbjth">등록일시</th></tr>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td>취소요청</td>
				<td><a href="lbjqnadetail.go">단순변심</a></td>
				<td>답변완료</td>
				<td>2018/02/11</td>
			</tr>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td>취소요청</td>
				<td><a href="lbjqnadetail.go">사기당함</a></td>
				<td>답변완료</td>
				<td>2018/03/01</td>
			</tr>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td>취소요청</td>
				<td><a href="lbjqnadetail.go">비쌈</a></td>
				<td>처리중</td>
				<td>2017/11/19</td>
			</tr>
			<tr>
				<td><input type="checkbox" value=""></td>
				<td>환불요청</td>
				<td><a href="lbjqnadetail.go">아이디탈퇴</a></td>
				<td>처리완료</td>
				<td>2018/04/29</td>
			</tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">내가 쓴 신고글 보기</h3>
	<div class="lbjdiv">
	내가 쓴 신고글 보기
		<table class="table table-striped lbjtable">
			<tr><th class="lbjth">글번호</th><th class="lbjth">제목</th><th class="lbjth">신고대상</th><th class="lbjth">작성일</th></tr>
			<tr><td>101</td><td><a href="#">약속 장소에 나오지 않았습니다</a></td><td>루키루키</td><td>2018/02/10</td></tr>
			<tr><td>199</td><td><a href="#">3시간 요청했는대 1시간반만 하고 갔습니다..하..</a></td><td>날라리다</td><td>2018/03/29</td></tr>
			<tr><td>608</td><td><a href="#">듀오 요청했더니 트롤짓 하네요ㅡㅡ</a></td><td>킹스오</td><td>2018/04/21</td></tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">내가 사용한 아이템 내역 보기</h3>
	<div class="lbjdiv">
	내가 사용한 아이템 내역
		<table class="table table-striped lbjtable">
			<tr><th class="lbjth">아이템명</th><th class="lbjth">시작일</th><th class="lbjth">종료일</th><th class="lbjth">상태</th></tr>
			<tr><td>글씨크기늘리기</td><td>2017/12/31</td><td>2018/03/02</td><td>사용종료</td></tr>
			<tr><td>배경색주기</td><td>2017/03/11</td><td>2018/06/11</td><td>사용중</td></tr>
			<tr><td>폰트바꾸기</td><td>2017/04/01</td><td>2018/06/30</td><td>사용중</td></tr>
		</table>
	</div>
	<hr>
	</div>  -->
	<%-- <%@ include file = "/WEB-INF/views/A6.LBJ/login.jsp" %> --%>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>