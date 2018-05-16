<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>
<link href="/goodluck/resources/common/css/bootstrap.min.css" rel="stylesheet">
<script src="/goodluck/resources/common/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<style type="text/css">

.glyphicon { margin-right:10px; }
.panel-body { padding:0px; }
.panel-body table tr td { padding-left: 15px }
.panel-body .table {margin-bottom: 0px; }
</style>
<title>아이템몰</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<div style="overflow: hidden;">
따라다니는 사이드바 넣기.
</div>
<div class="container">



<!-- 아이템몰 사이드바 -->
<div class="container" style="background: red; float: left; width:100%;">
<div class="row">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>
                            
                            ~~님<br>
                            보유 캐시 : xxxx원
                            
                            
                            
                            
                            
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">최신 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com">인기 아이템보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com">소모품 보기</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">기간제 보기</a>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">청약철회보기</a>
                                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
       	<div style="background: blue">
        <div class="col-sm-9 col-md-9">
            <div class="well">
                <h1>
                카로셀넣기
                   </h1>
            </div>
       <table style="width: 100%; height:200px; border: 2px solid black;" >
            <tr style="background: white; border: 2px solid black; height: 60%;">
            <td style="width: 70%; background: white; border: 2px solid black;"> 

        <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">     최신 추가된 아이템  8x2 </h3>
				    >인기 바로가기
				</div>
				<div class="panel-body" style="width: 100%;"	>    인기 목록 세로로
            표형식+아이템 리스트 방식
            8x2</div>
			</div>
		</div>
            </td>
            <td  style="width: 25%; background: white; border: 2px solid black;"> 
           
           <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">인기목록</h3>
				    >인기 바로가기
				</div>
				<div class="panel-body" style="width: 100%; "	>    인기 목록 세로로
            표형식+아이템 리스트 방식  1x4</div>
			</div>
		</div>
        
            
            
             </td>
            </tr>
            
            <tr style="height: 40%;">
            <table style="width: 100%; background: black; border: 2px solid black; height: 100%;">
            <tr>
            <th style="width: 50%; background: white; border: 2px solid black;">
       <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">아이템 관련 공지사항  전체공지바로가기></h3>
				    >인기 바로가기
				</div>
				<div class="panel-body" style="width: 100%; "	>   
			단순 리스트 방식 4개정도.
</div>
			</div>
		</div>
            
            
            
            </th>
            <th style="width: 50%; background: white; border: 2px solid black;">

     <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title"> 여기 뭐 넣지?</h3>
				   
				</div>
				<div class="panel-body" style="width: 100%; "	>   할인중 아이템</div>
			</div>
		</div>
		
		</th>
            </tr>
            </table>
             </tr>
            </table>
            
            
            
            
            
        </div>
        
        
        
        
        
        </div>
        
        
    </div>

</div>
                                                                                
</div>
<br>
<br>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>