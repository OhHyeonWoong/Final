<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
	
<!DOCTYPE html>
<html>
	<head>
		<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
		<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
		<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>
		<title>공지사항 작성 페이지</title>
		<style type="text/css">
			.container {
				padding-right: 0;
				padding-left: 0;
			}
			.total_Area{
				width: 380px;
				height: 610px;
			}
			.in_ContentsArea{
				background: white;
				color: black;
				width: 100%;
				height: 100%;			
				opacity: 0.96;
				
			}
			.padding{
				height: 10px;
			}
			
			.in_ContentTable{
				border-collapse: collapse;
				border-spacing: 0;
				width:auto;
				border: 1px solid #cfcfcf;
			}
			.in_ContentTable tr{
				padding: 0;
			}
			.in_ContentTable tr td{
				border: 1px solid #cfcfcf;
				padding: 10px;
			}
			.uk_td1{
				padding-top: 0;
				padding-bottom: 0;
			}
			.sec1{
				
				
			}		
			.uk_td2{
				
				font-family: fantasy;
			}
			.icon {
			    color : #f35050;
			    padding:5px;
			    font-size:50px;

			}
			.this_noticeNo{
				
			}
			.this_ntitle{
				
			}
			.uk_style{
				
			}
		</style>	
	</head>
	    
	<body>
	<div class="container">
	    <div class="total_Area">
			<div class="in_ContentsArea" align="center">
				<div class="padding"></div>
				<span class="glyphicon glyphicon-user icon" style="float: left; margin-left: 23%;"></span> <h3  style="float: left;">Notice Write</h3>
	
					<table class="in_ContentTable">	
						<tr align="center"> 
							<td class="uk_td1 sec1"> Title </td> <td class="uk_td1"> <input type="text" class="n1" name="new_ntitle"></td>
						</tr>
						<tr align="center"> <td class="uk_td1 sec1"> Writer </td> <td class="uk_td1"> Admin </td> </tr>
						<tr> 
							<td class="uk_td2" colspan="2">
								<textarea class="n2" rows="18" cols="48" style="resize: none;"></textarea>
							</td>  
						</tr>
						<tr> 
							<td colspan="2" align="center">
								<input type="button" class="checkalram" value="글 작성완료" style="background: navy; color: white"> &nbsp; &nbsp;	
								<a class="uk_style" href="javascript:abc();" id="AdminAlter"> 창닫기 </a>						
								<script type="text/javascript">
									$(function(){
										$(".checkalram").on("click",function(){
											location.href="addnotice.go=new_ntitle?"+$(".n1").val()+"&new_ncontents="+$(".n2").val();
											alter("h i . . . ");
											window.close();
										});
									});
									function abc(){
										window.close();
									}	
								</script>
							</td>
	
						</tr>
					</table>
					
			</div>
	    	
	    </div>
	</div><br>
	
	</body>
</html>
