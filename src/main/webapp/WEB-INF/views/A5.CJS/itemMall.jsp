<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이템몰</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<%@ include file = "/WEB-INF/views/A5.CJS/cjsitemheaderandsider.jsp" %>
       <table style="width: 100%; min-height:150px;" >
            <tr style="height: 60%;">
            <td style="width: 70%; background: white; "> 

        <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">     최신 추가된 아이템   </h3>
				   
				</div>
				<div class="panel-body" style="width: 100%; padding: 10">    
				  <table style="width: 100%; height: 100%;">
				<tr>
			<c:forEach var="item" items="${newitem}" begin="0" end="3">
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE} 원 <br>
   			 <button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 </center>
			</th>
			</c:forEach>
			
					  </tr>
					  <tr>
					  <td><label> </label></td>
					  </tr>
					  <tr>		
			<c:forEach var="item" items="${newitem}" begin="4">
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE} 원 <br>
   			<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 
   			 </center>
			</th>
			</c:forEach>
					  </tr>
				  </table>
</div>
			</div>
		</div>
            </td>
            <td  style="width: 25%;"> 
           
           <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">인기목록</h3>
				    
				</div>
				<div class="panel-body" style="width: 100%; padding: 5px"	>    

<center>
<table style="width: 80%; height: 100%;">
				
		
		<c:forEach var="item" items="${popularlitm}" begin="0" end="2">
			<tr>
   			<td style="width:30%">
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px; margin-right: 15px">
			</td>
		 <td  style="width:65%">
		 <center>
   			 ${item.ITEMNAME}<br>
   			 ${item.ITEMPRICE} 원 <br>
   			<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			
   			</center>
   			 </td>
			</tr>
			<tr><td><label> </label></td></tr>
			</c:forEach>
				
				
	
	
</table>
          </center>  
            
            
            </div>
			</div>
		</div>
        
            
            
             </td>
            </tr>
            
            <tr style="height: 40%;">
            <table style="width: 100%; height: 100%;">
            <tr>
            <th style="width: 50%; background: white;">
       <div class="col-md-6" style="width: 100%; height: 100%;">
			<div class="panel panel-primary" style="width: 100%; height: 100%;">
				<div class="panel-heading" >
					<h3 class="panel-title">아이템 관련 공지사항  전체공지바로가기></h3>
				 </div>
				<div class="panel-body" style="width: 100%; ">   
	
	<table>
	<tr>
	<th>글번호</th>
	<th><center>공지사항</center></th>
	<th>작성일</th>
	</tr>
	<c:forEach var="notice" items="${itemNotice}">
	<tr>
	<th><center>${notice.ITEMNOTICE_NO}</center></th>
	<th>${notice.ITEMNOTICE_TITLE}</th>
	<th>${notice.ITEMNOTICE_DATE}</th>
	</tr>
	</c:forEach>
	</table>
	

</div>
			</div>
		</div>
            
            
            
            </th>
            <th style="width: 50%;">

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