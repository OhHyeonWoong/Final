<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html>
<head>
	<title>Notice</title>
</head>
<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<div class="container">
	<table>
		<c:forEach var="noticeall" items="${basiclist}">
		<tr>
			<td> ${ noticeall.notice_no } </td>
				<td> <a href="ndetail.go?notice_checkno=${ noticeall.notice_no }">${ noticeall.notice_title }</a></td>
				<td> ${ noticeall.notice_writer } </td>
			<td> ${ noticeall.notice_date } </td>
		</tr>
		</c:forEach>	
	</table>
	</div>
		
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
 
</body>
</html>
