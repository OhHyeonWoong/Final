<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Notice</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div> 
	<table style="border: 1px solid black; width: 100%;">
			<tr>
				<th style="border: 1px solid black; ">번호</th>
				<th style="border: 1px solid black;">제목</th>
				<th style="border: 1px solid black;">작성자</th>
				<th style="border: 1px solid black;">작성일자</th>
			</tr>
			<c:forEach var="noticeall" items="${fowordNoticeAllList}">
			<tr>
				<td> ${ noticeall.notice_no } </td>
 				<td> ${ noticeall.notice_title }</td>
 				<td> ${ noticeall.notice_writer } </td>
				<td> ${ noticeall.notice_date } </td>
			</tr>
			</c:forEach>
	</table>
  
</div>
<%-- <td><a href="faqdetail.go?faq_checkno=${fowordNoticeAllList.notice_no}">${ fowordNoticeAllList.notice_title }</a></td>
 --%>	

<%-- <%@ include file = "/WEB-INF/views/A4.BSH/NoticeContent.jsp" %> --%>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>
