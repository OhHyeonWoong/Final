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
					<tr><td>분야</td><td>${myDetailQna.question_category}</td><td>문의일자</td><td>${myDetailQna.question_date}</td></tr>
					<tr><td>제목</td><td colspan="3">${myDetailQna.question_title}</td></tr>
					<tr><td>내용</td>
						<td colspan="3">
							<div>${myDetailQna.question_content}</div>
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
					<tr><td>처리상태</td><td>${myDetailQna.question_answer_state}</td><td>답변일자</td><td>${myDetailQnaAnswer.answer_date}</td></tr>
					<tr><td>답변내용</td>
						<td colspan="3">
							<div>
							${myDetailQnaAnswer.answer_content}
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align:center;">
							<c:if test="${myDetailQnaAnswer.answer_good != null}">
								<input type="radio" id="r1" name="satisfaction" value="매우 만족" disabled>매우 만족&nbsp;&nbsp;&nbsp;
								<input type="radio" id="r2" name="satisfaction" value="만족" disabled>만족&nbsp;&nbsp;&nbsp;
								<input type="radio" id="r3" name="satisfaction" value="보통" disabled>보통&nbsp;&nbsp;&nbsp;
								<input type="radio" id="r4" name="satisfaction" value="불만족" disabled>불만족&nbsp;&nbsp;&nbsp;
								<input type="radio" id="r5" name="satisfaction" value="불만족" disabled>매우불만족&nbsp;&nbsp;&nbsp;
							</c:if>
							<script type="text/javascript">
								$(function(){
									var radioVar = $('input[type="radio"][name="satisfaction"]').val(); 
									switch(radioVar){
									case "매우 만족":
										$('#r1').attr('checked',true);
										break;
									case "만족":
										$('#r2').attr('checked',true);
										break;
									case "보통":
										$('#r3').attr('checked',true);
										break;
									case "불만족":
										$('#r4').attr('checked',true);
										break;
									case "매우 불만족":
										$('#r5').attr('checked',true);
										break;
									}
								});
							</script>
						</td>
						<td>
							<c:if test="${empty myDetailQnaAnswer.answer_good}">
								<button onclick="">만족도 체크</button>
							</c:if>
							<c:if test="${myDetailQnaAnswer.answer_good != null}">
								<button onclick="" disabled>만족도 체크</button>
							</c:if>
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