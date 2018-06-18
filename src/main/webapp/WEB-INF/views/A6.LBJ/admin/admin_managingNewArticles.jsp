<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<!-- 스크립트 영역 -->
<!-- 부트스트랩 링크 -->
<style type="text/css">
 	.lbjdiv{
 		margin-bottom:50px;
 	}
	.lbjh3{
		/* text-align:center;
		align:center; */
	}
	.lbjtable{
		/* width:800px; */
		text-align:center;
	}
	.lbjth{
		text-align:center;
	}
</style>
<script type="text/javascript">
	function fnDeleteAgency(){
		var checkBox1 = $('input[name="chk1"]:checked');
		var chkValue = new Array();
		for(var i=0;i<checkBox1.length;i++){
			chkValue[i] = checkBox1[i].value;
			console.log(chkValue[i]);
		}
		console.log("length = " + chkValue.length);
		
		/* $.ajax({
			url:"lbjDeleteQna.go",
			type:"post",
			data:{
				question_no: chkValue
			},
			success:function(data){
				alert(data);
				if(data == '게시글 삭제 성공!'){
					window.history.go(0);
				}
			},
			error:function(a,b,c){
				alert("a = " + a + " , b = " + b + " , c = " + c);
			}
		}); */
	}
	
	function fnBoardReload(page){
		console.log("fnBoardReload(page) page = " + page);
		location.href="lbjMoveManagingNewArticles.go?page=" + page;
	}
	
	$(function(){
		$('#allCheckBox').on('click',function(){
			//모든 체크박스를 체크
			if($('input[type="checkbox"][name="chk1"]').prop('checked')){
				$('input[type="checkbox"][name="chk1"]').attr('checked',false);
			}else{
				$('input[type="checkbox"][name="chk1"]').attr('checked',true);
			}
		});
	});
</script>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		 <!--사이드바 시작-->
		 <%@ include file = "/WEB-INF/views/A3.JDK/admin_sidebar.jsp" %>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width:70%; float: right;">
			<h3 class="lbjh3" id="lbjQnA">보드 게시글 관리</h3>
			<div class="lbjdiv" id="lbjqnaDiv">
				<table class="table table-striped lbjtable" id="lbjQnaTable">
					<tr>
						<td class="lbjth">
							<input type="checkbox" id="allCheckBox" value="">전체선택
						</td>
						<td class="lbjth" colspan="4" style="text-align:left;">
							<a href="javascript:void(0);" class="btn btn-danger btn-xs" onclick="fnDeleteAgency(); return false;"><span class="glyphicon glyphicon-remove"></span>삭제</a>
						</td>
					</tr>
					<tr>
						<th class="lbjth">선택</th>
						<th class="lbjth">카테고리</th>
						<th class="lbjth">제목</th>
						<th class="lbjth">글쓴이</th>
						<th class="lbjth">작성일자</th>
					</tr>
					<c:forEach items="${board}" var="board" varStatus="status">
						<tr>
							<td><input type="checkbox" name="chk1" id="chkBox${status.count}" value="${board.agency_no}"></td>
							<td>${board.category_small_name}</td>
							<td><a href="#">${board.agency_title}</a></td>
							<td>${board.agency_writer}</td>
							<td>${board.agency_enrolldate}</td>
						</tr>
					</c:forEach>
					<%-- <tr>
						<td colspan="5">
							리스트카운트: ${boardPage.boardListCount},현재페이지: ${boardPage.boardCurrentPage},시작: ${boardPage.boardStartPage}
						</td>
					</tr> --%>
					<!-- Board 페이징 처리를 해봅시다. -->
					<c:if test="${boardPage.boardListCount > 15}">
						<!-- 페이징 처리를 합니다 -->
						<tr>
						<td colspan="5">
						<div style="text-align:center;">
							<c:if test="${boardPage.boardCurrentPage <= 1}">
								<< &nbsp;
							</c:if>
							<c:if test="${boardPage.boardCurrentPage >= 2}">
								<a href="javascript:void(0);" onclick="fnBoardReload(1); return false;"> << </a>
							</c:if>
							<c:if test="${boardPage.boardCurrentPage > boardPage.boardStartPage}">
								<a href="javascript:void(0);" onclick="fnBoardReload(${boardPage.boardCurrentPage-1}); return false;"> < </a>&nbsp;
							</c:if>
							<c:if test="${boardPage.boardCurrentPage <= boardPage.boardStartPage}">
								< &nbsp;
							</c:if>
							<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
							<c:forEach var="i" begin="${boardPage.boardStartPage}" end="${boardPage.boardEndFor}" step="1">
								<c:if test="${i eq boardPage.boardCurrentPage}">
									<font color="red" size="4"><b>${i}</b></font>&nbsp;
								</c:if>
								<c:if test="${i != boardPage.boardCurrentPage}">
									<a href="javascript:void(0);" onclick="fnBoardReload(${i}); return false;">${i}</a>&nbsp;
								</c:if>
							</c:forEach>
							
							<c:if test="${boardPage.boardCurrentPage != boardPage.boardEndRow}">
								<a href="javascript:void(0);" onclick="fnBoardReload(${boardPage.boardCurrentPage+1}); return false;">></a>&nbsp;
							</c:if>
							<c:if test="${boardPage.boardCurrentPage eq boardPage.boardEndRow}">
								> &nbsp;
							</c:if>
							
							<c:if test="${boardPage.boardCurrentPage >= boardPage.boardMaxPage}">
								>> &nbsp;
							</c:if>
							<c:if test="${boardPage.boardCurrentPage < boardPage.boardMaxPage}">
								<a href="javascript:void(0);" onclick="fnBoardReload(${boardPage.boardMaxPage}); return false;">>></a>
							</c:if>
						</div>
						</td>
						</tr>
					</c:if>
					<c:if test="${boardPage.boardListCount <= 15}">
						<tr>
							<td colspan="5">
								<font color="red" size="4"><b>1</b></font>&nbsp;
							</td>
						</tr>
					</c:if>
					<!-- Board 페이징 처리 End -->
					<!-- 페이징 처리 -->
				</table>
			</div>
		</div>
	</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>

</body>
</html>