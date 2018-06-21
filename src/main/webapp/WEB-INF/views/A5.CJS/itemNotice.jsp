<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<style type="text/css">

</style>

<title>공지사항</title>
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
                 <small>${notice.ITEMNOTICE_DATE}</small>
				</th>
                 <th style="width: 78%;">
                 	
			공지사항 제목:  ${notice.ITEMNOTICE_TITLE}
                 </th>
                 </tr>
                 </table>
        	     </div>
                <div class="panel-body">
                     <br>
                <ul>
             ${notice.ITEMNOTICE_CONTENTS}
                </ul>    
                </div>
                <div class="panel-footer">
                    <div class="pull-right">
                                           
                      <button onclick="window.history.go(-1)">뒤로가기</button>
                    </div>
                    <div class="clearfix"></div>
                </div>
    		</div>
        
        </div>
        
        
        </div>
 </div></div></div></div></div>


<div class="modal fade" id="cjsModalbuyitem" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin-top: 10%;  margin-left: 40%;">
    <div class="modal-content" style=" width: 50%;" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">정말 구매하실건가요?</h4>
      </div>
      <div class="modal-body" style="padding: 30px;">
        <table style="width: 100%">
        <tr><th rowspan="3" style="width: 30%" bordercolor="black">
     	<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 80px; height:70px;">	
        </th><th width="20"></th><th> 상품명:${item.ITEMNAME}</th></tr>
        <tr><th></th><th> 가격:${item.ITEMPRICE}</th></tr>
        <tr><th></th><th>기간:${item.ITEMPERIOD}</th></tr>
        <tr><th><label> </label></th></tr>
        <tr><th>보유잔액:</th><th></th><th><span id="balance" style="color: red"></span></th></tr>
        </table>
      </div>
      <div style="padding: 10px">
      "구매 확정" 버튼을 누르면 아이템이 구매. <br>아이템정보를 제대로 확인하셨나요?
     </div>
      <div class="modal-footer">
      <center>
        <button type="button" id="realbuyitem" class="btn btn-primary" onclick="buyitem2('${item.ITEMLIST_NO}','${loginUser.member_id}')"> 구매 확정 </button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
       </center>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="cjsModalbuyitemfail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="margin-top: 10%;  margin-left: 40%;">
    <div class="modal-content" style=" width: 50%;" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">구매실패!</h4>
      </div>
      <div class="modal-body" style="padding: 50px;">
        <h3>캐시가 부족합니다.</h3>
      </div>
      <div style="padding: 10px">
     </div>
      <div class="modal-footer">
     </div>
    </div>
  </div>
</div>


<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>