<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<!-- 스크립트 영역 -->
<style type="text/css">
	.lbj-td{
		text-align:center;
	}
</style>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/A8.Common/Header.jsp"%>
	<script type="text/javascript">
		function fnIngReload(page){
			console.log("fnIngReload(page) = " + page);
			$.ajax({
				url:"lbjAdminQnaIng.go",
				dataType:"json",
				data:{
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#ingTable').empty();
					
					var htmlStr = '<table class="table table-stripped" id="ingTable"><tr>'+
					'<td class="lbj-td">분야</td><td class="lbj-td">제목</td><td class="lbj-td">글쓴이</td>'+
					'<td class="lbj-td">등록일시</td></tr>';
					
					for(var i in json.ing){
						console.log("json.ing.question_no = " + json.ing[i].question_no);
						htmlStr += '<tr><td class="lbj-td">'+json.ing[i].question_category+'</td>'+
						"<td class='lbj-td'><a href='lbjAdminQnaWrite.go?question_no="+json.ing[i].question_no+"'>"+json.ing[i].question_title+"</a></td>"+
						'<td class="lbj-td">'+json.ing[i].question_writer+'</td>'+
						'<td class="lbj-td">'+json.ing[i].question_date+'</td></tr>';
					}
					//페이징 처리//
					htmlStr += '<tr><td colspan="4" class="lbj-td"><div style="text-align:center;">'
					if(json.ing[0].ingListCount > 6){
						if(json.ing[0].page <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnIngReload(1); return false;"> << </a>&nbsp;';
						}
						if(json.ing[0].page > json.ing[0].ingStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnIngReload('+(json.ing[0].page-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.ing[0].ingStartPage;i<=json.ing[0].ingEndRow;i++){
							if(i == json.ing[0].page){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnIngReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.ing[0].page != json.ing[0].ingEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnIngReload('+(json.ing[0].page+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.ing[0].page >= json.ing[0].ingMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnIngReload('+json.ing[0].ingMaxPage+'); return false;">>></a>';
						}
						htmlStr += '</div></td></tr></table>';
					}else{
						htmlStr += '<tr><td colspan="4" class="lbj-td">'+
						'<font color="red" size="4"><b>1</b></font>&nbsp;</td></tr></table>';
					}
					//페이징처리 끝//
					$('#ingDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
		
		function fnEndReload(page){
			console.log("fnEndReload(page) = " + page);
			$.ajax({
				url:"lbjAdminQnaEnd.go",
				dataType:"json",
				data:{
					page: page
				},
				success:function(data){
					var jstr = JSON.stringify(data);
					var json = JSON.parse(jstr);
					
					$('#endTable').empty();
					
					var htmlStr = '<table class="table table-stripped" id="endTable"><tr>'+
					'<td class="lbj-td">분야</td><td class="lbj-td">제목</td><td class="lbj-td">글쓴이</td>'+
					'<td class="lbj-td">등록일시</td></tr>';
					
					for(var i in json.end){
						console.log("json.end.question_no = " + json.end[i].question_no);
						htmlStr += '<tr><td class="lbj-td">'+json.end[i].question_category+'</td>'+
						'<td class="lbj-td"><a href="#">'+json.end[i].question_title+'</a></td>'+
						'<td class="lbj-td">'+json.end[i].question_writer+'</td>'+
						'<td class="lbj-td">'+json.end[i].question_date+'</td></tr>';
					}
					//페이징 처리//
					htmlStr += '<tr><td colspan="4" class="lbj-td"><div style="text-align:center;">'
					if(json.end[0].endListCount > 6){
						if(json.end[0].page <= 1){
							htmlStr += "<< &nbsp";
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnEndReload(1); return false;"> << </a>&nbsp;';
						}
						if(json.end[0].page > json.end[0].endStartPage){
							htmlStr += '<a href="javascript:void(0);" onclick="fnEndReload('+(json.end[0].page-1)+'); return false;"> < </a>&nbsp;';
						}else{
							htmlStr += '< &nbsp';
						}
						//현재 페이지가 포함된 그룹의 페이지 숫자 출력
						for(var i=json.end[0].endStartPage;i<=json.end[0].endEndRow;i++){
							if(i == json.end[0].page){
								htmlStr += '<font color="red" size="4"><b>'+i+'</b></font>&nbsp;';
							}else{
								htmlStr += '<a href="javascript:void(0);" onclick="fnEndReload('+i+'); return false;">'+i+'</a>&nbsp;';
							}
						}
						//기모리 ///////////////
						if(json.end[0].page != json.end[0].endEndRow){
							htmlStr += '<a href="javascript:void(0);" onclick="fnEndReload('+(json.end[0].page+1)+'); return false;">></a>&nbsp;';
						}else{
							htmlStr += '> &nbsp;';
						}
						if(json.end[0].page >= json.end[0].endMaxPage){
							htmlStr += '>> &nbsp;';
						}else{
							htmlStr += '<a href="javascript:void(0);" onclick="fnEndReload('+json.end[0].endMaxPage+'); return false;">>></a>';
						}
						htmlStr += '</div></td></tr></table>';
					}else{
						htmlStr += '<tr><td colspan="4" class="lbj-td">'+
						'<font color="red" size="4"><b>1</b></font>&nbsp;</td></tr></table>';
					}
					//페이징처리 끝//
					$('#endDiv').html(htmlStr);
				},
				error:function(a,b,c){
					alert("a = " + a + " ,b = " + b + " ,c = " + c);
				}
			});
		}
	</script>
	<!-- 전체 헤더 영역 푸터 영역 사이 컨테이너 영역 -->
	<div class="container">
		<!--사이드바 시작-->
		<%@ include file="/WEB-INF/views/A3.JDK/admin_sidebar.jsp"%>
		<!-- 사이드바 종료 -->
		<!-- 내용 출력하기 -->
		<!-- 이 div 안에 작성하시면 됩니다.  -->
		<div class="w3-container" style="width: 70%; float: right;">
			<!-- 컨텐츠를 넣으세요 -->
				<h3 align="center">QnA 답변하기</h3>
				<fieldset>
					<legend>답변 대기중</legend>
					<div id="ingDiv">
					<table class="table table-stripped" id="ingTable">
						<tr>
							<td class="lbj-td">분야</td><td class="lbj-td">제목</td><td class="lbj-td">글쓴이</td><td class="lbj-td">등록일시</td>
						</tr>
						<c:forEach items="${qnaIng}" var="ing">
							<tr>
								<td class="lbj-td">${ing.question_category}</td>
								<td class="lbj-td"><a href="javascript:location.href='lbjAdminQnaWrite.go?question_no=${ing.question_no}'">${ing.question_title}</a></td>
								<td class="lbj-td">${ing.question_writer}</td>
								<td class="lbj-td">${ing.question_date}</td>
							</tr>
						</c:forEach>
						<!-- ing 페이징 처리 시작 -->
						<c:if test="${ingPage.ingListCount > 6}">
							<tr>
							<td colspan="4" class="lbj-td">
							<div style="text-align:center;">
								<c:if test="${ingPage.page <= 1}">
									<< &nbsp;
								</c:if>
								<c:if test="${ingPage.page >= 2}">
									<a href="javascript:void(0);" onclick="fnIngReload(1); return false;"> << </a>
								</c:if>
								<c:if test="${ingPage.page > ingPage.ingStartPage}">
									<a href="javascript:void(0);" onclick="fnIngReload(${ingPage.page-1}); return false;"> < </a>&nbsp;
								</c:if>
								<c:if test="${ingPage.page <= ingPage.ingStartPage}">
									< &nbsp;
								</c:if>
								<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
								<c:forEach var="i" begin="${ingPage.ingStartPage}" end="${ingPage.ingEndRow}" step="1">
									<c:if test="${i eq ingPage.page}">
										<font color="red" size="4"><b>${i}</b></font>&nbsp;
									</c:if>
									<c:if test="${i != ingPage.page}">
										<a href="javascript:void(0);" onclick="fnIngReload(${i}); return false;">${i}</a>&nbsp;
									</c:if>
								</c:forEach>
								
								<c:if test="${ingPage.page != ingPage.ingEndRow}">
									<a href="javascript:void(0);" onclick="fnIngReload(${ingPage.page+1}); return false;">></a>&nbsp;
								</c:if>
								<c:if test="${ingPage.page eq ingPage.ingEndRow}">
									> &nbsp;
								</c:if>
								
								<c:if test="${ingPage.page >= ingPage.ingMaxPage}">
									>> &nbsp;
								</c:if>
								<c:if test="${ingPage.page < ingPage.ingMaxPage}">
									<a href="javascript:void(0);" onclick="fnIngReload(${ingPage.ingMaxPage}); return false;">>></a>
								</c:if>
							</div>
							</td>
							</tr>
						</c:if>
						<c:if test="${ingPage.ingListCount <= 6}">
							<tr>
								<td colspan="4" class="lbj-td">
									<font color="red" size="4"><b>1</b></font>&nbsp;
								</td>
							</tr>
						</c:if>
						<!-- Ing 페이징 처리 End-->
					</table>
					</div>
				</fieldset>
				<br><br>
				<fieldset>
					<legend>답변 완료</legend>
					<div id="endDiv">
					<table class="table table-stripped" id="endTable">
						<tr>
							<td class="lbj-td">분야</td><td class="lbj-td">제목</td><td class="lbj-td">글쓴이</td><td class="lbj-td">등록일시</td>
						</tr>
						<c:forEach items="${qnaEnd}" var="end">
							<tr>
								<td class="lbj-td">${end.question_category}</td>
								<td class="lbj-td"><a href="#">${end.question_title}</a></td>
								<td class="lbj-td">${end.question_writer}</td>
								<td class="lbj-td">${end.question_date}</td>
							</tr>
						</c:forEach>
						<!-- End 페이징 처리 시작 -->
						<c:if test="${endPage.endListCount > 6}">
							<tr>
							<td colspan="4" class="lbj-td">
							<div style="text-align:center;">
								<c:if test="${endPage.page <= 1}">
									<< &nbsp;
								</c:if>
								<c:if test="${endPage.page >= 2}">
									<a href="javascript:void(0);" onclick="fnEndReload(1); return false;"> << </a>
								</c:if>
								<c:if test="${endPage.page > endPage.endStartPage}">
									<a href="javascript:void(0);" onclick="fnEndReload(${endPage.page-1}); return false;"> < </a>&nbsp;
								</c:if>
								<c:if test="${endPage.page <= endPage.endStartPage}">
									< &nbsp;
								</c:if>
								<!-- 현재 페이지가 포함된 그룹의 페이지 숫자 출력 -->
								<c:forEach var="i" begin="${endPage.endStartPage}" end="${endPage.endEndRow}" step="1">
									<c:if test="${i eq endPage.page}">
										<font color="red" size="4"><b>${i}</b></font>&nbsp;
									</c:if>
									<c:if test="${i != endPage.page}">
										<a href="javascript:void(0);" onclick="fnEndReload(${i}); return false;">${i}</a>&nbsp;
									</c:if>
								</c:forEach>
								
								<c:if test="${endPage.page != endPage.endEndRow}">
									<a href="javascript:void(0);" onclick="fnEndReload(${endPage.page+1}); return false;">></a>&nbsp;
								</c:if>
								<c:if test="${endPage.page eq endPage.endEndRow}">
									> &nbsp;
								</c:if>
								
								<c:if test="${endPage.page >= endPage.endMaxPage}">
									>> &nbsp;
								</c:if>
								<c:if test="${endPage.page < endPage.endMaxPage}">
									<a href="javascript:void(0);" onclick="fnEndReload(${endPage.endMaxPage}); return false;">>></a>
								</c:if>
							</div>
							</td>
							</tr>
						</c:if>
						<c:if test="${endPage.endListCount <= 6}">
							<tr>
								<td colspan="4" class="lbj-td">
									<font color="red" size="4"><b>1</b></font>&nbsp;
								</td>
							</tr>
						</c:if>
						<!-- End 페이징 처리 End -->
					</table>
					</div>
				</fieldset>
			<!-- 작성 영역 끝-->
		</div>
	</div>
	<%@ include file="/WEB-INF/views/A8.Common/Footer.jsp"%>
</body>
</html>