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
				
		
		
		
                      <c:when test="${loginUser ne null}">
                        <script type="text/javascript">
                function buyitem(itempk,itemprice,memberid,itemname){
                	
                	console.log(itempk);//아이템 pk
                	console.log(itemprice);//아이템 가격
                	console.log(memberid);//유저아이디
              $.ajax({
                url:"checkusercash.go",
                data:{memberid:memberid},
                success:function(data){
                  if(data >= itemprice){
                	  $('#cjsModalbuyitem').modal('show') 
                   
                  
                    		
                  }else{
                    alert("캐시가 부족함 cash="+data);
                   
                  }
                		
               }
                })
                	
                	
                	
                	
                }
                </script>
                      <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#cjsModalbuyitem" onclick="buyitem('${item.ITEMLIST_NO}','${item.ITEMPRICE}','${loginUser.member_id}','${item.ITEMNAME}')">
  						Launch demo modal
						</button>
                       <button onclick="buyitem('${item.ITEMLIST_NO}','${item.ITEMPRICE}','${loginUser.member_id}','${item.ITEMNAME}')">구매하기</button></c:when>
              
                
                </c:choose>
                      
                  
                     
                     
                      <button onclick="window.history.go(-1)">뒤로가기</button>
                    </div>
                    <div class="clearfix"></div>
                </div>
    		</div>
        
        </div>
        
        
        </div>
 </div></div></div></div></div>


<div class="modal fade" id="cjsModalbuyitem" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">최종 확인</h4>
      </div>
      <div class="modal-body" style="padding: 50px;">
      
        <table style="width: 100%">
        <tr><th rowspan="3" style="width: 30%" bordercolor="black">
     	<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 80px; height:70px;">	
        </th><th> 상품명:${item.ITEMNAME}</th></tr>
        <tr><th> 가격:${item.ITEMPRICE}</th></tr>
        <tr><th>기간:${item.ITEMPERIOD}</th></tr>
        </table>
      </div>
   
      
      "구매 확정" 버튼을 누르면 아이템이 구매됩니다. 아이템정보를 제대로 확인하셨나요?
     
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">구매 확정</button>
      </div>
    </div>
  </div>
</div>

<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>