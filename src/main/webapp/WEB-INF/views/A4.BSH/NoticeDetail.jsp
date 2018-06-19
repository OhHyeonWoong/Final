<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
	
<!DOCTYPE html>
<html>
	<head>
		<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
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
				opacity: 0.92;
				
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
			}
			.icon {
			    color : #f35050;
			    padding:5px;
			    font-size:50px;
			}
			.this_noticeNo{
				width: 330px !important;
			}
			.this_ntitle{
				width: 320px;
			}
		</style>	
	</head>
	    
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	
	
	<%-- <% if(loginUser.equals("admin")){ 관리자면 수정이가능하게 %>
			테이블에 받은 내용을 input타입text로하되 readonly설정을X
	<% }else if(!(loginUser.equals("admin"))){ 관리자가 아니면 수정이 불가능하게 %>
			테이블에 받은 내용을 input타입text로하되 readonly설정을O
	<% } %> --%>
	
	<div class="container">
	    <div class="total_Area" style="background-image: url('http://demos.creative-tim.com/material-bootstrap-wizard/assets/img/wizard-book.jpg')">
			<div class="in_ContentsArea" align="center">
				<div class="padding"></div>
				<span class="glyphicon glyphicon-user icon" style="float: left; margin-left: 28%;"></span> <h3  style="float: left;">공 지 글 상 세 보 기</h3>
				

				<table class="in_ContentTable">			
					<tr align="center"> 
						<td class="uk_td1 sec1"> 글제목</td> 
						<td class="uk_td1"> 
							<c:if test="${loginUser.member_status eq 3}">
							<input type="text" class="this_ntitle" value="${notice_info.notice_title}"> 
							</c:if>
							<c:if test="${loginUser.member_status!=3 or loginUser eq null}">
							<input type="text" class="this_ntitle" value="${notice_info.notice_title}" readonly="readonly"> 							
							</c:if>
							<input type="hidden" class="this_no" value="${notice_info.notice_no}">
						</td>	
					</tr>
					<tr align="center"> <td class="uk_td1 sec1"> 작성자 </td> <td class="uk_td1">Admin</td> </tr>
					<tr> 
						<td class="uk_td2" colspan="2">
							<c:if test="${loginUser.member_status eq 3}">
							<textarea class="this_ncontents" rows="25" cols="86" style="resize: none; overflow: scroll;">${notice_info.notice_content}</textarea>
							<%-- <div class="this_ncontents" style="width: 570px; height: 520px; overflow: scroll; resize: none;"><section>${notice_info.notice_content}</section></div>	 --%>							
							</c:if>
							<c:if test="${loginUser.member_status!=3 or loginUser eq null}">
							<textarea class="this_ncontents" rows="25" cols="86" style="resize: none; overflow: scroll;" readonly="readonly">${notice_info.notice_content}</textarea>	
							<%-- <div class="this_ncontents" style="width: 570px; height: 520px; overflow: scroll; resize: none;">${notice_info.notice_content}</div>	 --%>					
							</c:if>
						</td>  
					</tr>
					<tr>   
						<td colspan="2" align="center"> 	
							<c:if test="${loginUser.member_status eq 3}">
							<span class="glyphicon glyphicon-user"></span><a href="javascript:alterNoticeContents();" id="AdminAlter"> 수정하기</a> &nbsp;&nbsp;&nbsp;&nbsp;
							<span class="glyphicon glyphicon-trash"></span><a href="javascript:delnotice();"> 삭제하기 </a> &nbsp;&nbsp;&nbsp;&nbsp;
							</c:if>
							<script type="text/javascript">
			
							 	function alterNoticeContents(){
							 		alert("수정이 완료되었습니다.");
							 		
							 		$.ajax({
										url : "notice_alter.go",
										//3가지를 보낸다.(글번호,글제목,글 내용)
										data : {  
												 noticeNo : $(".this_no").val(),
												 noticeTitle : $(".this_ntitle").val(),
												 noticecontents : $(".this_ncontents").val()
												},
										type : "get"
							 		}); 
								}
							 	
							 	function delnotice(){
							
							 		alert("해당 공지글 삭제가 완료되었습니다.");
									location.href="admin_ndelete.go?select_pk="+$(".this_no").val();
							 	}
							 	
							</script>
							
							<span class="glyphicon glyphicon-tags"></span><a href="Notice.go" id="AdminAlter"> 목록으로 </a>
						</td>
					</tr>
				</table>

				
				
			</div>
	    	
	    </div>
	</div><br>
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
