<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
	$(function(){
		$.ajax({
			url : "noticetop5.go",
			type : "get",
			datatype : "json",
			success : function(data){
				alert("추가가 완료되었습니다.");
				console.log("success : " + data);
				
				
				var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
				console.log(jsonStr);
				var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
			
			 	var tablevalue="<tr>";
				
			 	for(var i in json.list){
				//한글 깨짐을 막기 위해 문자 인코딩 처리한 json 객체의 값은 decodeURIComponent() 로 디코딩 처리함
			 	//decodeURIComponent(json.list[i].notice_title) ??? 인코딩??
			 	
			 	tablevalue += "<td>"+json.list[i].notice_no+"</td><td>"+json.list[i].notice_title+"</td><td>"+json.list[i].notice_writer+"</td><td>"+json.list[i].notice_date+"</td></tr>";
			 	 
			 	/* values += json.list[i].notice_no+"&nbsp;"+json.list[i].notice_title+"&nbsp;"+json.list[i].notice_writer+"&nbsp;"+json.list[i].notice_date+"<br></h3>"; */
				}
			 	
			 	$("#jsontest1").append(tablevalue); 
			},
			error:function(a,b,c){
				alert(a + ", " + b + ", " + c);
			}			
			
			/* error: function(jqXHR, textStatus, errorThrown){
				console.log("error : " + jqXHR + ", " 
						+ textStatus + ", " + 
						errorThrown);
			} */
			
		}); /* 공지사항 top5 Ajax끝 */	
	});
	</script>
	
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>	
		<div class="container">
		    <div class="row" style="padding-left: 25%;">
		        <div class="col-md-4" style="width: 70%;" align="center">
		            <div class="panel panel-info" align="left">
		                <div class="panel-heading" align="center">
		                    <h3 class="panel-title"> 욱재 작업리스트</h3>
		                </div>
		                <ul class="list-group">
		                    <a href="DealingState.go" class="list-group-item">작업 1 : 거래신청 후 대기화면</a>
		                    <a href="Ukcarousel.go" class="list-group-item">작업 2 : 카로셀테스트 </a>
		                    <a href="Chatting.go" class="list-group-item">작업 3 : 채팅샘플(잠시보류중..) </a>
		                    <a href="faqPage.go" class="list-group-item">작업 4: FAQ게시판작업 </a>
		                    <a href="RearchResult.go" class="list-group-item">작업 5 : 포털싸이트 비슷하게 검색결과 페이지View</a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                    <a href="Chatting.go" class="list-group-item"> - </a>
		                </ul>
		                
		                <Table border="1" id="jsontest1">
		                	<Tr><Td>글번호</Td><Td>제목</Td><Td>작성자</Td><Td>작성일</Td></Tr>
		                </Table>
		            </div>
		        </div>
		    </div>
		</div>
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>			
	</body>
</html>