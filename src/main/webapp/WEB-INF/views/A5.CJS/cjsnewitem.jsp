<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이템 상세검색</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<%@ include file = "/WEB-INF/views/A5.CJS/cjsitemheaderandsider.jsp" %>
</div>
<table>
<tr>
<c:forEach var="item"  begin="0" end="4">
<th>${item }</th>
</c:forEach>
</tr>
<tr>
<c:forEach var="item"  begin="0" end="4">
<th>${item }</th>
</c:forEach>
</tr>
</table>





   </div></div></div></div></div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>