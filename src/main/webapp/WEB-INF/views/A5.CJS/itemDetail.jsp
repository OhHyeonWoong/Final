<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<style type="text/css">

</style>

<title>아이템 상세보기</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<%@ include file = "/WEB-INF/views/A5.CJS/cjsitemheaderandsider.jsp" %>
</div>
	<div>
        <div class="col-sm-9 col-md-9" style="width: 100%">
      		 <div class="panel panel-default">
        	    <div class="panel-heading">
                 <table style="width: 100%; height: 100%">
                 <tr>
                 <th style="width: 20%; height: 90%; padding: 10px;">
			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 80px; height:70px;">
				</th>
                 <th style="width: 78%;">
                 	
		
                 상품명:${item.ITEMNAME}<br>
        가격:${item.ITEMPRICE}<br>
        기간:${item.ITEMPERIOD}<br>				
                 </th>
                 </tr>
                 </table>
        	     </div>
                <div class="panel-body">
                     <br>
                <ul>
                <li style="height: 50px">${detail.DETAIL_1}</li>
                <li style="height: 50px">${detail.DETAIL_2}</li>
                <li style="height: 50px">${detail.DETAIL_3}</li>
                <li style="height: 50px">${detail.DETAIL_4}</li>
                </ul>    
                </div>
                <div class="panel-footer">
                    <div class="pull-right">
                      
                      <c:choose>
                      <c:when test="${loginUser eq null}">  
                  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#login-modal">
					<i class="fa fa-sign-in"></i> 로그인하러가기
				</button>
				
				</c:when>
                      <c:when test="${loginUser ne null}"> <button>구매하기</button></c:when>
                      </c:choose>
                      
                  
                     
                     
                      <button onclick="window.history.go(-1)">뒤로가기</button>
                    </div>
                    <div class="clearfix"></div>
                </div>
    		</div>
        
        </div>
        
        
        </div>
 </div></div></div></div></div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>