<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고페이지 상세보기</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<h2 style="text-align:center;">신고페이지 상세보기</h2>
	<div class="container">
		<div>
			<fieldset>
				<legend>나의 신고 내역</legend>
				<table class="table table-striped" style="text-align:center;">
					<tr><td>분야</td><td>ㅇㅇㅇ</td><td>문의일자</td><td>ㅇㅇㅇ</td></tr>
					<tr><td>제목</td><td colspan="3">ㅇㅇㅇ</td></tr>
					<tr><td>첨부파일</td><td colspan="3"><input type="file"></td></tr>
					<tr><td>내용</td>
						<td colspan="3">
							<div>ㅇㅇㅇ</div>
						</td>
					</tr>
				</table>
			</fieldset>
		</div>
	</div>
	<br><br>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>