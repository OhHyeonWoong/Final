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
	<script type="text/javascript">
		function fnGoBack(){
			window.history.go(-1);
		}
		
		function fnUpdateReport(){
			
		}
	</script>
	<h2 style="text-align:center;">신고페이지 상세보기</h2>
	<div class="container">
		<div>
			<fieldset>
				<legend>나의 신고 내역</legend>
				<form action="" method="post">
					<table class="table table-striped" style="text-align:center;">
						<tr><td>분야</td>
							<td>
								<c:choose>
									<c:when test="${report.report_category eq 1}">
										불량이용객 신고
									</c:when>
									<c:when test="${report.report_category eq 2}">
										게시물 신고
									</c:when>
								</c:choose>
							</td><td>문의일자</td><td>${report.report_date}</td></tr>
						<tr><td>제목</td><td colspan="3">${report.report_title}</td></tr>
						<tr><td>첨부파일</td><td colspan="3"><input type="file"></td></tr>
						<tr><td>내용</td>
							<td colspan="3">
								<div>${report.report_content}</div>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="button" class="btn btn-warning" value="뒤로가기" onclick="fnGoBack();"> 
								<input type="button" class="btn btn-danger" value="삭제하기" onclick="fnDeleteReport();"> 
							</td>
						</tr>
					</table>
				</form>
			</fieldset>
		</div>
	</div>
	<br><br>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>