<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 작성하기</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<h2 style="text-align:center;">QnA 작성하기</h2>
	<div class="container">
		<form action="lbjqnawritemethod.go" method="post">
		<input type="hidden" name="member_id" value="${loginUser.member_id}">
		<table class="table table-striped">
			<tr><td style="text-align:center;">카테고리</td>
				<td>
					<select id="sel1" name="question_category">
						<option>카테고리선택</option>
						<option>이용</option>
						<option>캐시</option>
						<option>신고</option>
						<option>로그인</option>
					</select>
				</td>
			</tr>
			<tr><td style="text-align:center;">제목</td><td><input type="text" name="question_title" placeholder="제목" style="width:90%;"></td></tr>
			<tr><td style="text-align:center;">질문자</td><td><input type="text" name="question_writer" style="width:90%;" value="${loginUser.member_name}"></td></tr>
			<tr><td style="text-align:center; vertical-align:middle;">내용</td>
				<td>
					<textarea rows="7" style="width:90%;" placeholder="여기에 내용을 입력해주세요" name="question_content"></textarea>
				</td>
			</tr>
			<tr><td colspan="2" style="text-align:center;">
					<Button type="submit" class="btn btn-success"><i class="fa fa-check" style="font-size:20px"></i> 작성하기</Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<Button class="btn btn-danger" onclick=""><i class="fa fa-trash" style="font-size:19px"></i> 취소하기</Button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>