<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고페이지 작성하기</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<script type="text/javascript">
		function fnReportWriteCancel(){
			alert("글 작성이 취소되었습니다.");
			//location.href="lbjmypage.go?member_id="+$('#report_writer').val();
			window.history.go(-1);
		}
		
		function fnReportWrite(){
			console.log("함수진입");
			var report_category = $('#report_category option:selected').val();
			
			if(report_category != '카테고리선택'){
				return true;
			}else{
				return false;	
			}
		}
	</script>
	<h2 style="text-align:center;">신고페이지 작성하기</h2>
	<div class="container">
		<form action="lbjReportWrite.go" method="post" enctype="multipart/form-data" 
		                                  onsubmit="return fnReportWrite();" >
		<table class="table table-striped">
			<tr><td style="text-align:center;">카테고리</td>
				<td>
					<select id="report_category" name="report_category">
						<option>카테고리선택</option>
						<option value="1">1. 불량이용객 신고</option>
						<option value="2">2. 게시물 신고</option>
					</select>
				</td>
			</tr>
			<tr><td style="text-align:center;">제목</td><td><input type="text" id="report_title" name="report_title" placeholder="제목" style="width:90%;"></td></tr>
			<tr><td style="text-align:center;">질문자</td><td><input type="text" id="report_writer" name="report_writer" style="width:90%;" value="${loginUser.member_id}" readonly></td></tr>
			<tr><td style="text-align:center;">첨부파일</td><td><input type="file" name="report_rename_filename"></td></tr>
			<tr><td style="text-align:center; vertical-align:middle;">내용</td>
				<td>
					<textarea rows="7" style="width:90%;" placeholder="여기에 내용을 입력해주세요" id="report_content" name="report_content"></textarea>
				</td>
			</tr>
			<tr><td colspan="2" style="text-align:center;">
					<Button class="btn btn-success"><i class="fa fa-check" style="font-size:20px"></i> 작성하기</Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- <input type="submit" class="btn btn-success" value="작성하기">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					<a href="javascript:void(0);" class="btn btn-danger" onclick="fnReportWriteCancel(); return false;"><i class="fa fa-trash" style="font-size:19px"></i> 취소하기</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>