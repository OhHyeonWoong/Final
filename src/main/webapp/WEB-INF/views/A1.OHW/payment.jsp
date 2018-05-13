<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style type="text/css">
	.ohw-payment-maintable {
		width:100%;
	}
</style>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div class = "container">
	<table class = "ohw-payment-maintable">
		<tr>
			<td>
				<table>
					<tr>
						<td colspan = "3"><h2>결제 정보</h2></td>
					</tr>
					<tr>
						<td colspan = "3"><h3>상품명 : 대세 쉐프 이연북의 환상적인 중화파티</h3></td>
					</tr>
					<tr>
						<td><div class = "ohw-payment-header-price"> 주문 가격 : 2000원 - </div></td>
						<td><div class = "ohw-payment-header-sale"> 할인 금액 : 500원 = </div></td>
						<td><div class = "ohw-payment-header-result">결제 금액 : 1500원 </div></td>
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