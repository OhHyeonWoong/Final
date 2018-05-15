<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset=UTF-8>
	<title>나의 거래내역..</title>
	<style type="text/css">
	table {
    border-radius: 12px;
	}
	
	table thead tr{
	    background-color:lavender;
	    border: 2px solid #ddd;
	}
	
	table thead tr th{
	    border: 2px solid #ddd;
	    text-align:center;
	}
	
	
	table {
	    border: 1px solid #ddd;
	    padding: 10px;
	    text-align: center;
	    font-size: 14px;
	    margin: 4px 2px;
	    cursor: pointer;
	}
	
	table tr td{
	     border: 2px solid #ddd;
	     align:center;
	}
	
	/* ********************************************* */
	
	h2 {
	    color: red;
	    animation: titlemove 5s infinite;
	}
	
	/* Chrome, Safari, Opera */
	@-webkit-keyframes titlemove {
	    from {color: red;}
	    to {color: blue;}
	} */
	
	/* Standard syntax */
	@keyframes titlemove {
	    from {color: red;}
	    to {color: blue;}
	} 
	
	</style>
	
	</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	

		<div class="container">
			<div class="row">
				<h2>My DealingList</h2>
		
		<table class="table table-bordered">
		    <thead>
		      <tr>
		        <th>Contents</th>
		        <th>Dealer</th>
		        <th>Date</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>생활</td>
		        <td>홍길동</td>
		        <td>2018.05.15</td>
		      </tr>
		      <tr>
		        <td>반려동물</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>게임</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>음악</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>프리랜서</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>반려동물</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>반려동물</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>반려동물</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>
		      <tr>
		        <td>반려동물</td>
		        <td> . . . </td>
		        <td> . . . </td>
		      </tr>

		    </tbody>
		  </table>
			</div>
		</div>	
	
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>