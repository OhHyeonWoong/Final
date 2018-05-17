<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>

<style type="text/css">	
		
	/* 직접 작성중 */
	.ohw-div-icon {
		width:100%;
		height:150px;
		padding-top:30px;
		background:#222222;
	}
	
	.ohw-icon {		
		width:40px;
		height:28px;
		font-size:24px;
	}
	
	.ohw-icon > a{
		color:#eeeeee !important;
	}
		
	.ohw-icon:hover > a{
		color:purple !important;		
		transition: .5s all ease;
		-webkit-transition: .5s all ease;
		-moz-transition: .5s all ease;
	}
	
	.ohw-footer-text {
		padding-top:10px;
		text-align:center;
		color:#eeeeee;
	}
	
	.ohw-envelope-modal-header {
		width:280px;
		margin-left:10px;
		margin-right:10px;
	}
	
	.ohw-envelope-modal-body {
		width:280px;
		margin-left:10px;
		margin-right:10px;
	}
	
	.ohw-envelope-modal-footer {
		width:280px;
		margin:10px;
	}
	
	.ohw-envelope-modal-text {
		width:200px !important;
	}
	
</style>
</head>

<body style="width: 100%;">
<!-- Footer -->
<div class = "ohw-div-icon" align = "center">
	<table>
		<tr>
			<td class = "ohw-icon"></td>
			<td class = "ohw-icon"></td>
			<td class = "ohw-icon"><a href = "https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a></td>
			<td class = "ohw-icon"><a href = "https://twitter.com/?lang=ko"><i class="fa fa-twitter"></i></a></td>
			<td class = "ohw-icon"><a href = "https://www.instagram.com/?hl=ko"><i class="fa fa-instagram"></i></a></td>
			<td class = "ohw-icon"><a href = "https://plus.google.com/discover"><i class="fa fa-google-plus"></i></a></td>
			<td class = "ohw-icon"><a href = "" data-toggle="modal" data-target="#envelopeModal"><i class="fa fa-envelope"></i></a></td>
			<td class = "ohw-icon"></td>
			<td class = "ohw-icon"></td>
		</tr>
		<tr>
			<td class = "ohw-footer-text" colspan = "9">
				copyright@2018.04.30 KH 정보교육원 <br>
				tel : 070-0000-0000, fax : 070-1111-1111
			</td>
		</tr>
	</table>
</div>
<div class = "ohw-envelope-div" align = "center">
	<div class="modal fade" id="envelopeModal" role="dialog">
		<div class="modal-dialog modal-sm">    
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header input-group ohw-envelope-modal-header">
					<span class = "input-group-addon"><i class = "fa fa-upload"></i></span>
					<input class = "input-group ohw-envelope-modal-text form-control" type = "text" readonly>
				</div>
				<div class="modal-body input-group ohw-envelope-modal-body">
					<span class = "input-group-addon"><i class = "fa fa-download"></i></span>
					<input class = "ohw-envelope-modal-text form-control" type = "text" value = "Admin" readonly>
				</div>
				<div class="ohw-envelope-modal-footer">
					<form action="">
						<textarea class = "form-control" rows="6" cols="30"></textarea> <br>
						<button type="submit" class="btn btn-default" data-dismiss="modal">
							<i class = "fa fa-check"></i> 전송
						</button>
					</form>
				</div>
			</div>      
		</div>
	</div>	
</div>		
</body>
</html>