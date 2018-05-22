<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(결제방법) 결제</title>
<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	#lbjhead{
		text-align:center;
		background:ivory;
		height:40px;
		font-size:18pt;
		padding-top: 14px;
	}
	#lbjbody{
		/* background:pink; */
		height:240px;
	}
	#lbjfooter{
		height:120px;
	}
	.lbj-payment-td{
		text-align:right;
	}
	.lbj-payment-i{
		color:#bebebe;
	}
	#lbj-payment-cbox{
		color:#bebebe;
	}
</style>
<script type="text/javascript">
	$(function(){
		$('input[type="checkbox"]').on("click",function(){
			if($('input[type="checkbox"]').is(":checked")){
				$('.lbj-payment-i').css("color","black"); 
				$('#lbj-payment-cbox').attr("disabled",false);
			}else{
				$('.lbj-payment-i').css("color","#bebebe");
				$('#lbj-payment-cbox').attr("disabled",true);
			}
		});
	});
	
	function fnMovePractice1(){
		window.open("lbj-movePaymentPractice1.go","","width=600,height=600");
	}
	
	function fnMovePractice2(){
		window.open("lbj-movePaymentPractice2.go","","width=650,height=600");
	}
	
	function fnMovePractice3(){
		window.open("lbj-movePaymentPractice3.go","","width=650,height=600");
	}
</script>
</head>
<body>
	<div class="container">
		<div id="lbjhead" style="">
			<span id="lbjhead-span">(결제방법) 결제금액 3000</span>
		</div>
		<div id="lbjbody">
			<hr>
			<input type="checkbox"> 약관 및 이용동의<br>
			<table style="width:100%; text-align:center;">
				<tr>
					<td colspan="2"><i class="fa fa-check lbj-payment-i"> </i></td>
					<td> 전자금융거래 이용약관 </td>
					<td colspan="3" class="lbj-payment-td"><a href="javascript:void(0);" onclick="fnMovePractice1(); return false;">상세보기</a></td>
				</tr>
			</table>
			<table style="width:100%; text-align:center;">
				<tr>
					<td colspan="2"><i class="fa fa-check lbj-payment-i"> </i></td>
					<td> 개인정보의 수집 및 이용동의 </td>
					<td colspan="3" class="lbj-payment-td"><a href="javascript:void(0);" onclick="fnMovePractice2(); return false;">상세보기</a></td>
				</tr>
			</table>
			<table style="width:100%; text-align:center;">
				<tr>
					<td colspan="2"><i class="fa fa-check lbj-payment-i"> </i></td>
					<td> 개인정보 제공 및 위탁안내 </td>
					<td colspan="3" class="lbj-payment-td"><a href="javascript:void(0);" onclick="fnMovePractice3(); return false;">상세보기</a></td>
				</tr>
			</table>
		</div>
		<div id="lbjfooter">
			<hr>
			<input type="checkbox" id="lbj-payment-cbox" disabled="disabled"> 결제내역 확인 및 결제동의<br>
			 <label for="lbj-payment-cbox">(캐시 유효기간: 마지막 사용일로부터 5년)</label><br><br>
			<input type="button" class="btn btn-primary" value="결제하기" style="width:100%; margin-bottom:20px; text-align:center;">
		</div>
	</div>
</body>
</html>