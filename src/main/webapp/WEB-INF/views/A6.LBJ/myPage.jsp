<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
 	.lbjdiv{
 		width:100%;
 		margin-bottom:200px;
 	}
	.lbjh3{
		/* text-align:center;
		align:center; */
	}
	.lbjtable{
		width:800px;
		text-align:center;
	}
	.lbjth{
		text-align:center;
	}
</style>
</head>
<body style="display:absolute; overflow:auto;">
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<h2 style="text-align:center;">마이페이지</h2>
	<hr>
	<div align="center" class="lbjdiv">
	<h3 class="lbjh3">내 정보보기</h3>
	<div class="lbjdiv">
	<!-- 내 정보보기 -->
	<!-- 회원가입 양식 따오기 -->
		<table class="lbjtable" border="1" cellspacing=0>
			<tr><td>아이디</td><td><input type="text" placeholder="아이디"></td></tr>
			<tr><td>비밀번호</td><td><input type="password" placeholder="비밀번호"></td></tr>
			<tr><td>이름</td><td><input type="text" placeholder="이름"></td></tr>
			<tr><td>주민등록번호</td><td><input type="text" placeholder="주민등록번호"></td></tr>
			<tr><td>나이</td><td><input type="number" placeholder="20"></td></tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">현재 예약 정보보기</h3>
	<div class="lbjdiv">
	<!-- 현재 예약 정보보기 -->
		<table class="lbjtable" border="1" cellspacing=0>
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
	<!-- 지난 이용정보 보기 -->
		<table class="lbjtable" border="1" cellspacing=0>
			<tr><th class="lbjth">카테고리</th><th class="lbjth">제목</th><th class="lbjth">상태</th></tr>
			<tr><td>반려동물</td><td><a href="#">강아지 출장미용 합니다 연락주세요</a></td><td>완료</td></tr>
			<tr><td>생활</td><td><a href="#">인테리어 합니다</a></td><td>완료</td></tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">나의 QnA</h3>
	<div class="lbjdiv">
	<!-- 나의 QnA -->
		<table class="lbjtable" border="1" cellspacing=0>
			<tr><th class="lbjth">선택</th><th class="lbjth">분야</th><th class="lbjth">제목</th><th class="lbjth">처리상황</th><th class="lbjth">등록일시</th></tr>
			<tr>
				<td></td>
				<td>취소요청</td>
				<td><a href="#">단순변심</a></td>
				<td>처리완료</td>
				<td>2018/02/11</td>
			</tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">내가 쓴 신고글 보기</h3>
	<div class="lbjdiv">
	<!-- 내가 쓴 신고글 보기 -->
		<table class="lbjtable" border="1" cellspacing=0>
			<tr><td></td></tr>
		</table>
	</div>
	<hr>
	<h3 class="lbjh3">내가 사용한 아이템 내역 보기</h3>
	<div class="lbjdiv">
	<!-- 내가 사용한 아이템 내역 -->
		<table class="lbjtable" border="1" cellspacing=0>
			<tr><td>아이템명</td><td>시작일</td><td>종료일</td><td>상태</td></tr>
			<tr><td>글씨크기늘리기</td><td>2017/12/31</td><td>2018/03/02</td><td>사용종료</td></tr>
			<tr><td>배경색주기</td><td>2017/03/11</td><td>2018/06/11</td><td>사용중</td></tr>
			<tr><td>폰트바꾸기</td><td>2017/04/01</td><td>2018/06/30</td><td>사용중</td></tr>
		</table>
	</div>
	<hr>
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>