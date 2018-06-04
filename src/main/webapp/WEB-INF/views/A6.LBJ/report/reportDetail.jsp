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
		
		function fnDeleteReport(){
			var flag = confirm("정말로 게시글을 삭제하시겠습니까?");
			
			if(flag){
				var report_no = $('#report_no').val();
				
				$.ajax({
					url:"lbjReportDelete.go",
					type:"post",
					data:{
						report_no: report_no
					},
					success:function(data){
						alert(data);
						if(data == '게시글 삭제 성공'){
							location.href='lbjmypage.go?member_id='+$('#member_id').val();
						}
					},
					error:function(a,b,c){
						alert("a = " + a + " , b = " + b + " , c = " + c);
					}
				});
			}else{
				alert("취소하셨습니다.");
			}
		}
	</script>
	<h2 style="text-align:center;">신고페이지 상세보기</h2>
	<div class="container">
		<div>
			<fieldset>
				<legend>나의 신고 내역</legend>
				<form action="" method="post">
					<input type="hidden" id="report_no" value="${report.report_no}">
					<input type="hidden" id="member_id" value="${loginUser.member_id}">
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