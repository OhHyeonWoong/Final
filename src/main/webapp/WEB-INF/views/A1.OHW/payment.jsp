<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style type="text/css">

	.ohw-payment-maintable {		
		width:1170px;
		margin-bottom:10px;		
	}
	
	.ohw-payment-maintable-td {
		border:1px solid black;
	}
	
	.ohw-payment-subtable-north {
		width:1170px;
		margin:10px;
	}
	
	.ohw-payment-subtable-east {
		width:470px;
		text-align:center;
	}
	
	.ohw-payment-subtable-east-td {
		padding-bottom:10px;
		border:1px solid black;	
	}	
		
	.ohw-payment-subtable-west {
		width:700px;		
		text-align:center;
	}	
	
	.ohw-payment-subtable-west-radio-left {
		padding-top:10px;
		padding-bottom:10px;
		border-left:1px solid black;
		border-top:1px solid black;		
	}
	
	.ohw-payment-subtable-west-radio {
		padding-top:10px;
		padding-bottom:10px;	
		border-top:1px solid black;
	}
	
	.ohw-payment-subtable-west-radio-right {
		padding-top:10px;
		padding-bottom:10px;
		border-right:1px solid black;
		border-top:1px solid black;		
	}
		
	.ohw-payment-subtable-west-event {
	 	padding-top:10px;
		padding-bottom:10px;	
		border:1px solid black;
	}
	
	.ohw-payment-header {
		text-align:center;
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-left:1px solid black;
	}
	
	.ohw-payment-result {
		text-align:center;
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-right:1px solid black;
	}
	
	.ohw-payment-icon {
		text-align:center;		
	}
	
	textarea {
		resize:none;
	}
	
</style>

</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>

<div class = "container">
	<table class = "ohw-payment-maintable">
		<tr>
			<td class = "ohw-payment-maintable-td" colspan = "2">
				<table class = "ohw-payment-subtable-north">
					<tr>
						<td colspan = "8"><h2>결제 정보</h2></td>
					</tr>
					<tr>
						<td colspan = "8"><h3>상품명 : 대세 쉐프 이연북의 환상적인 중화파티</h3></td>
					</tr>
					<tr>
						<td>
							<label> </label>
						</td>
					</tr>
					<tr>
						<td class = "ohw-payment-header">
							<div class = "ohw-payment-header-price"> 주문 가격 : </div>
						</td>
						<td class = "ohw-payment-result">
							<div class = "ohw-payment-result-price"> 2000원 </div>
						</td>
						<td class = "ohw-payment-icon"><i class = "fa fa-plus"></i></td>
						<td class = "ohw-payment-header">
							<div class = "ohw-payment-header-sale"> 할인 금액 : </div>
						</td>
						<td class = "ohw-payment-result">
							<div class = "ohw-payment-result-sale"> 500원 </div>
						</td>
						<td class = "ohw-payment-icon"><i class = "fa fa-krw"></i></td>
						<td class = "ohw-payment-header">
							<div class = "ohw-payment-header-result"> 결제 금액 : </div>
						</td>
						<td class = "ohw-payment-result">
							<div class = "ohw-payment-result-result"> 1500원 </div>
						</td>
					</tr>
				</table>
			</td>
		</tr>		
		<tr>
			<td colspan = "2">
				<label><h3>결제 수단</h3></label>
			</td>
		</tr>
		<tr>
			<td valign = "top">
				<table class = "ohw-payment-subtable-west">								
					<tr>
						<td class = "ohw-payment-subtable-west-radio-left"><input type = "radio" name = "choosePay"> 계좌이체</td>
						<td class = "ohw-payment-subtable-west-radio"><input type = "radio" name = "choosePay"> 무통장입금</td>
						<td class = "ohw-payment-subtable-west-radio-right"><input type = "radio" name = "choosePay"> 카카오페이</td>
					</tr>
									
					<tr>
						<td class = "ohw-payment-subtable-west-event" colspan = "3">															
								각종 이벤트 진행중!<br>
								카카오 페이 사용시 5% 할인!<br>
								롯데 카드 사용시 10% 할인!<br>				
						</td>
					</tr>
				</table>
			</td>
			<td class = "ohw-payment-subtable-east-td" colspan = "2">
				<table class = "ohw-payment-subtable-east">					
					<tr>
						<td>
							<h3>최종 결제 금액</h3>
							<div><h2>1500원</h2></div> <br>
							<input type = "checkbox"> 개인 정보 판매자 제공 동의 <br>
								<textarea rows="3" cols="40" readonly> 고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 서비스 이용이 제한됩니다.</textarea> <br> <br>
							<input type = "checkbox"> 개인 정보 수집 및 이용 동의 <br>
								<textarea rows="3" cols="40" readonly> 고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용, 구매 및 결제, 일부 포인트 적립이 제한됩니다. 수집이용목적 수집 항목 보유기간 대금 결제/환불 서비스 제공, 주문/배송/거래 내역 조회 서비스 제공, 전자상거래법 준수 등 신용카드 정보, 계좌 정보, 주문/배송/거래 내역 회원탈퇴 시 까지. 단, 관계 법령의 규정에 따라 보존할 의무가 있으면 해당 기간 동안 보존용계약(이용약관)이 존속중인 탈퇴하지 않은 회원의 경우 보유기간은 보존의무기간 이상 보관할 수 있으며 이 기간이 경과된 기록에 대해서 파기요청이 있는 경우 파기함. 결제수단에 따른 개인정보 수집.이용 항목이 상이할 수 있음</textarea> <br> <br>
							<input type = "checkbox"> 주문 상품 정보에 동의 <br>
								<textarea rows="3" cols="40" readonly> 주문 서비스의 서비스명, 가격, 서비스 정보에 동의합니다.</textarea> <br> <br>
							<button class = "btn tbn-default"><i class = "fa fa-check"></i> 결제하기</button> &nbsp; &nbsp;
							<button class = "btn tbn-default"><i class = "fa fa-close"></i> 취소하기</button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>