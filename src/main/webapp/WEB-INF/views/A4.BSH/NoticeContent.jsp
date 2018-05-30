<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 전체리스트</title>
<style type="text/css">
	#uk_notice {
	    border-collapse: collapse;
	    width: 100%;
	}
	
	th, td {
	    text-align: center;
	    padding: 5px;
	}
	
	#uk_notice tr:nth-child(even) {background-color: #f2f2f2;}
	.abs, #abs {
		color:white;
		text-align: center;
	}
	.dropdown-menu{
		background: white;
		color: black;
	}
	.icon{
		
		size: 25px;
	}

</style>
</head>
<body>
	<div class="container">
		<div class="sidebar"style="background:black; color:white; width: 20%; height: 100%; float: left;" align="center">
			<div style="width: 100%; height: 520px;">
	            <ul class="nav sidebar-nav" style="height: 100%; padding-top: 15px;">
	                <li class="sidebar-brand">
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 싸</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 이</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 드</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 바</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 활</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 용</a>
	                </li>
	                <li>
	                    <a href="#" class="abs"><span class="glyphicon glyphicon-tags icon"></span> &nbsp; 필</a>
	                </li>
	                <li class="dropdown" class="abs">
	                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="abs"><span class="glyphicon glyphicon-cog icon"></span> &nbsp; 눌러바<span class="caret"></span></a>
	                  <ul class="dropdown-menu" role="menu">
	                     <li class="dropdown-header">클릭요소의 세부리스트 사항 정렬</li>
	                     <li><a href="#" class="abs">환</a></li>
	                     <li><a href="#" class="abs">영</a></li>
	                     <li><a href="#" class="abs">해</a></li>
	                     <li><a href="#" class="abs">독</a></li>
	                     <li><a href="#" class="abs">신</a></li>
	                     <li><a href="#" class="abs">사</a></li>
	                  </ul>
	                </li>	                
	            </ul>
 			</div>
		</div>
		
		<div class="center"style="width: 78%; height: 100%; float: left; margin-left: 2%">
			<div class="Notice_div" style="width: 100%; height: 520px; padding: 10px; border: 1px solid #e7e7e7;">

			<h3>공지사항</h3>
			<table id="uk_notice">
					<thead style="border: 1px solid #d6d6d6;">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
    
					</thead>
					<tbody>
						<c:forEach var="noticeall" items="${fowordNoticeAllList}">
						<tr>
							<td> ${ noticeall.notice_no } </td>
			 				<td> <a href="ndetail.go?notice_checkno=${ noticeall.notice_no }">${ noticeall.notice_title }</a></td>
			 				<td> ${ noticeall.notice_writer } </td>
							<td> ${ noticeall.notice_date } </td>
						</tr>
						</c:forEach>
					</tbody>
				</table>

				
				<span
					style="display: table; margin: 10px; margin-left: auto; margin-right: auto;">
					<button>&lt;&lt;</button>
					<button>&lt;</button> 1 2 3 4 5 6 7 8 9 0
					<button>&gt;</button>
					<button>&gt;&gt;</button>
				</span>
				
				</div>
		</div>
	</div>
	<br>
</body>
</html>