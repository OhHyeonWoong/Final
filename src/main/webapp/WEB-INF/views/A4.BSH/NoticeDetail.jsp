<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
	
<!DOCTYPE html>
<html>
	<head>
		<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />	 -->	
		<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript">
			function backalllist(){ //공지사항 전체리스트로 돌아가기
				location.href("Notice.go");
			}
		
			$(function(){
				$("#AdminAlter").on("click",function(){ /* 게시글수정은 운영자가 Ajax를 통하여 가능하도록한다. */
					$.ajax({
						url : ,
						type : "get",
						data : ,
						datatype : ,
						success : function(data){
							
						},
						error : function(a,b,c){
							console.log("a : "+a+"b : "+b+"c : "+c);
						}
					});
				});
			});
		</script>	
		<title>공지사항 상세보기 페이지</title>
		<style type="text/css">
			.total_Area{
				width: 100%;
				height: 900px;
				padding-top: 6%;
				padding-left: 21%;
			}
			.in_ContentsArea{
				background: white;
				color: black;
				width: 75%;
				height: 770px;			
				opacity: 0.96;
				
			}
			.padding{
				height: 10px;
			}
			
			.in_ContentTable{
				border-collapse: collapse;
				border-spacing: 0;
				width: 550px;
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
				width: 200px;
				
			}		
			.uk_td2{
				height: 520px;
				font-family: fantasy;
				/* overflow: scroll; */
			}
			.icon {
			    color : #f35050;
			    padding:5px;
			    font-size:50px;
			}
		</style>	
	</head>
	
	
	
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	
	
	<%-- <% if(loginUser.equals("admin")){ 관리자면 수정이가능하게 %>

	<% }else if(!(loginUser.equals("admin"))){ 관리자가 아니면 수정이 불가능하게 %>
	
	<% } %> --%>
	<div class="container">
	    <div class="total_Area" style="background-image: url('http://demos.creative-tim.com/material-bootstrap-wizard/assets/img/wizard-book.jpg')">
			<div class="in_ContentsArea" align="center">
				<div class="padding"></div>
				<span class="glyphicon glyphicon-user icon" style="float: left; margin-left: 28%;"></span> <h3  style="float: left;">공 지 글 상 세 보 기</h3>
				<table class="in_ContentTable">			
					<tr align="center"> <td class="uk_td1 sec1"> 글제목 </td> <td class="uk_td1"> 공지사항1 </td> </tr>
					<tr align="center"> <td class="uk_td1 sec1"> 작성자 </td> <td class="uk_td1"> 운영자 </td> </tr>
					<tr> 
						<td class="uk_td2" colspan="2">
							<textarea rows="25" cols="86" style="resize: none; overflow: scroll;" readonly="readonly">불법적인 만남, 혹은 게시물 게재로 신고를 당하였다면 1신고에 아웃입니다. 괸한 불란을 일으켰다가는 무조건 제제입니다.
							
							</textarea>
						
						</td> 
					</tr>
					<tr> 
						<td colspan="2" align="center"> 
							<button id="AdminAlter" style="background: none;"> 수정하기 </button> &nbsp;&nbsp;&nbsp;&nbsp;
							<button style="background: none;" onclick="backalllist();"> 돌아가기 </button>							
						</td>
					</tr>
				</table>
			</div>
	    	
	    </div>
	</div><br>
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
