<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<!-- 스크립트 영역 -->
<!-- 부트스트랩 링크 -->
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		<!--사이드바 시작-->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width: 70%; float: right;">
			<div>
			<fieldset>
				<legend>${qna.question_writer}님 문의내역</legend>
				<table class="table table-striped">
					<tr><td>분야</td><td>${qna.question_category}</td><td>문의일자</td><td>${qna.question_date}</td></tr>
					<tr><td>제목</td><td colspan="3">${qna.question_title}</td></tr>
					<tr><td>내용</td>
						<td colspan="3">
							<div>${qna.question_content}</div>
						</td>
					</tr>
				</table>
			</fieldset>
			</div>
			<br><br><br>
			<div>
				<fieldset>
					<legend>답변하기</legend>
					<form action="" method="post">
						<input type="hidden" name="question_no" value="${qna.question_no}">
						<table class="table table-striped">
							<tr><td>작성자</td><td><input type="text" name="answer_writer" value="작성자 아이디가 들어갈 예정(세션)" style="width:100%;" readonly><%-- ${loginUser.member_id} --%></td></tr>
							<tr><td>답변내용</td>
								<td>
									<textarea name="answer_content" rows="10" cols="103"></textarea>
								</td>
							</tr>
						</table>
					</form>
				</fieldset>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>

</body>
</html>