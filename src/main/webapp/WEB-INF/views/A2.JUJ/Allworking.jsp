<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
		                    <a href="NoticeDetail.go" class="list-group-item">작업 6 : 공지사항 상세보기페이지 구현 </a>
		                    <a href="Notice.go" class="list-group-item"> 작업7 : 공지사항 전체리스트로이동 </a>
		                    <a href="petnewslist.go" class="list-group-item"> 작업8 : 펫News 꺼내오기 </a>
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