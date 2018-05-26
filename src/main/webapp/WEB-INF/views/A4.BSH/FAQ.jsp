<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html>
<head>
	<title>FAQ</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<Div>
	 첫번째 전체리스트 : ${alllist} <hr style="clear: both;">
	 두번째 이용리스트 : ${useinglist} <hr style="clear: both;">
	 세번째 결제리스트 : ${paymentlist} <hr style="clear: both;">
	 네번째 신고리스트 : ${reportlist} <hr style="clear: both;">
	 다섯번째 로그인리스트 : ${loginlist} <hr style="clear: both;">
</Div>

<%@ include file = "/WEB-INF/views/A4.BSH/FAQContent.jsp" %>







			
<hr style="clear: both;"> 
	

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>
