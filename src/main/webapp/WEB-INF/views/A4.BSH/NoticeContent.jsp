<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NoticeContent</title>
</head>
<body>
	<div class="container">
		<div class="sidebar"style="background: blue; width: 20%; height: 100%; float: left;">
			sidebar
			<br>
			공지사항
			<br>
			옆에는
			<br>
			무슨
			<br>
			사이드바를
			<br>넣으면
			<br>좋을까
		</div>
		
		<div class="center"style="background: green; width: 78%; height: 100%; float: left; margin-left: 2%">
			<div class="Notice_div" style="background: #f5f5f5; width: 100%; height: 520px; padding: 10px; border: 1px solid #e7e7e7;">
				
			
			공지사항 center


			<table style="border: 1px solid black; width: 100%;">
					<thead style="border: 1px solid black;">
						<tr>
							<th style="border: 1px solid black; ">번호</th>
							<th style="border: 1px solid black;">제목</th>
							<th style="border: 1px solid black;">작성자</th>
							<th style="border: 1px solid black;">작성일자</th>
						</tr>
    
					</thead>
					<tbody>
						<c:forEach var="noticeAll" items="fowordNoticeAllList">
						<tr>
							<td> ${ fowordNoticeAllList.notice_no } </td>
							<td><a href="faqdetail.go?faq_checkno=${fowordNoticeAllList.notice_no}">${ fowordNoticeAllList.notice_title }</a></td>
							<td> ${ fowordNoticeAllList.notice_writer } </td>
							<td> ${ fowordNoticeAllList.notice_date } </td>
						</tr>
						</c:forEach>
					</tbody>
				</table>

				
				<span
					style="display: table; margin: 10px; margin-left: auto; margin-right: auto;">
					<button>&lt;&lt;</button>
					<button>&lt;</button> 1 2 3 4 5 6 7 8 9 0
					<button>&gt;</button>
					<button>&gt;&gt;</button>
				</span>
				
				</div>
		</div>
	</div>
</body>
</html>