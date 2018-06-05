<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오페이 결제</title>
</head>
<body>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script>
	var IMP = window.IMP;
	IMP.init('imp16523279');
	IMP.request_pay({
	    pg : 'html5_inicis',
	    pay_method : 'vbank',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '독신사 마일리지 결제',
	    amount : ${chargeMoney},
	    buyer_email : '${loginUser.member_email}',
	    buyer_name : '${loginUser.member_name}',
	    buyer_tel : '${loginUser.member_phone}',
	    buyer_addr : '${loginUser.member_address}',
	    buyer_postcode : '123-456'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        /* msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num; */
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        /* msg += '에러내용 : ' + rsp.error_msg; */
	    }
	    
	    alert(msg);
	    if(msg == '결제가 완료되었습니다.'){
	    	var member_cash = $('#member_cash').val() * 1;
	    	var chargeMoney = $('#chargeMoney').val() * 1;
	    	var sum = member_cash + chargeMoney;
	    	
	    	location.href="lbjUpdateMemberCash.go?member_id="+$('#member_id').val()+"&member_cash="+sum;
	    }else{
	    	location.href="home.go";
	    }
	});

	</script>
	<input type="hidden" id="member_id" value="${loginUser.member_id}">
	<input type="hidden" id="member_cash" value="${loginUser.member_cash}">
	<input type="hidden" id="chargeMoney" value="${chargeMoney}">
</body>
</html>