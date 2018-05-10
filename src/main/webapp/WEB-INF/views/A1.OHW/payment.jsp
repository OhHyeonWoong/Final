<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div class = "container">
	<table>
		<tr>
			<td>
				<table>
					<tr>
						<td colspan = "3"><h1>결제 정보</h1></td>
					</tr>
					<tr>
						<td colspan = "3">대세 쉐프 이연북의 환상적인 중화파티</td>
					</tr>
					<tr>
						<td><div class = "ohw-payment-header-price"></div> - </td>
						<td><div class = "ohw-payment-header-sale"></div> = </td>
						<td><div class = "ohw-payment-header-result"></div></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td colspan = "3"></td>
					</tr>
					<tr>
						<td><input type = "radio" name = "choosePay"> 계좌이체</td>
						<td><input type = "radio" name = "choosePay"> 무통장입금</td>
						<td><input type = "radio" name = "choosePay"> 카카오페이</td>
					</tr>
					<tr>
						<td colspan = "3"></td>
					</tr>
				</table>
			</td>
			<td>
				<table>
					<tr>
					
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>