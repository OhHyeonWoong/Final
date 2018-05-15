<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 상세보기</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<h2 style="text-align:center;">QnA 상세보기</h2>
	<div class="container">
		<div>
			<fieldset>
				<legend>나의 상담 내역</legend>
				<table class="table table-striped">
					<tr><td>분야</td><td>취소요청</td><td>문의일자</td><td>2018/04/28</td></tr>
					<tr><td>제목</td><td colspan="3">단순 변심으로 인한 취소</td></tr>
					<tr><td>내용</td>
						<td colspan="3">
							<div>취소 사유 : 단순 변심</div>
						</td>
					</tr>
				</table>
			</fieldset>
		</div>
		<br><br><br>
		<div>
			<fieldset>
				<legend>답변</legend>
				<table class="table table-striped">
					<tr><td>처리상태</td><td>처리완료</td><td>답변일자</td><td>2018/04/30</td></tr>
					<tr><td>답변내용</td>
						<td colspan="3">
							<div>
							홍길동 고객님<br>
							언제나 고객님에게 신뢰를 드리고 싶은 독신사 개발자 이병준입니다.<br>
							거래 취소는 정상적으로 되었으며,<br>
							마이페이지 > 거래내역 에서 확인해보시기 바랍니다. 감사합니다.
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;">
							<input type="radio" name="satisfaction" value="매우 만족">매우 만족&nbsp;&nbsp;&nbsp;
							<input type="radio" name="satisfaction" value="만족">만족&nbsp;&nbsp;&nbsp;
							<input type="radio" name="satisfaction" value="보통">보통&nbsp;&nbsp;&nbsp;
							<input type="radio" name="satisfaction" value="불만족">불만족&nbsp;&nbsp;&nbsp;
							<input type="radio" name="satisfaction" value="불만족">매우불만족&nbsp;&nbsp;&nbsp;
						</td>
						<td><button onclick="">만족도 체크</button></td>
					</tr>
				</table>
			</fieldset>
		</div>
	</div>
	<br><br>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>