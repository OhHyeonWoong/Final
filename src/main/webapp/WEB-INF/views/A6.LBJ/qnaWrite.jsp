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
	<script type="text/javascript">
		
		function fnQnaWriteCancel(){
			location.href = 'lbjmypage.go?member_id=' + $('#member_id').val();
		}
		
		function fnQnaWrite(){
			//ajax로 글쓰기 처리
			var question_title = $('#question_title').val();
			var question_writer = $('#question_writer').val();
			var question_content = $('#question_content').val();
			var member_id = $('#member_id').val();
			var question_category = $('#sel1 option:selected').val();
			
			$.ajax({
				url:"lbjqnawritemethod.go",
				type:"post",
				data:{
					question_title: question_title,
					question_writer: question_writer,
					question_content: question_content,
					question_category: question_category,
					member_id: member_id
				},
				success:function(data){
					alert(data);
					if(data == '게시글 등록 성공'){
						location.href='lbjmypage.go?member_id=' + member_id;
					}
				},
				error:function(a,b,c){
					alert("a = " + a + " , b = " + b + " , c = " + c);
				}
			});
			/* lbjqnawritemethod.go */
		}
	</script>
	<h2 style="text-align:center;">QnA 작성하기</h2>
	<div class="container">
		<form action="" method="post">
		<input type="hidden" id="member_id" name="member_id" value="${loginUser.member_id}">
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
			<tr><td style="text-align:center;">제목</td><td><input type="text" id="question_title" name="question_title" placeholder="제목" style="width:90%;"></td></tr>
			<tr><td style="text-align:center;">질문자</td><td><input type="text" id="question_writer" name="question_writer" style="width:90%;" value="${loginUser.member_name}" readonly></td></tr>
			<tr><td style="text-align:center; vertical-align:middle;">내용</td>
				<td>
					<textarea rows="7" style="width:90%;" placeholder="여기에 내용을 입력해주세요" id="question_content" name="question_content"></textarea>
				</td>
			</tr>
			<tr><td colspan="2" style="text-align:center;">
					<Button class="btn btn-success" onclick="fnQnaWrite();"><i class="fa fa-check" style="font-size:20px"></i> 작성하기</Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<Button class="btn btn-danger" onclick="fnQnaWriteCancel();"><i class="fa fa-trash" style="font-size:19px"></i> 취소하기</Button>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>