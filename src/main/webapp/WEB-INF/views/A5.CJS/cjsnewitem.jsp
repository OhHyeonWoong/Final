<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이템 상세검색</title>
</head>
<body>
<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
<%@ include file = "/WEB-INF/views/A5.CJS/cjsitemheaderandsider.jsp" %>
</div>


        <div class="col-md-6" style="width: 100%;">
            <div class="panel panel-primary">
            
            <div class="panel-heading">
            <table style="width: 100%">
            <tr style="width: 100%">
            <th><span class="glyphicon glyphicon-list" >아이템 검색 </span></th>
            <th></th>
            <th style="width:360px;">	
<style>
.cjs1 {
    display: block;
    width: 100%;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-right:-5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;}
</style>            
            
<input type="button" class="form-control" value="출시순"  style="display: initial; width: auto; height: 100%;" > 
<input type="button" class="form-control" value="인기순"  style="display: initial; width: auto; height: 100%;" >
<input type="text" class="cjs1" id="inputSuccess5" style="display: initial; width:150px;  border-radius: 3px 0px 0px 3px" placeholder="아이템검색">
<button class="btn btn-default" type="button"  style="border-radius: 0px 3px 3px 0px; vertical-align: top; height: 100%; ">검색!</button>
            </th>
            </tr>
            </table>
                </div>
                <div class="panel-body" style="overflow:auto;">
                   <table >
                   <tr>
    
	
	
		
            <c:forEach var="item" items="${firstlist}" begin="0" end="6">
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
			<c:forEach var="item" items="${firstlist}" begin="6">
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
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-md-6">
                            <h6>
                                검색된 아이템 수 <span class="label label-info">${listCount }</span></h6>
                    </div>
                    <div class="col-md-6">
                         <ul class="pagination pagination-sm pull-right">
							<c:forEach var="item" begin="1" end="${maxPage}">
							<c:if test="${currentPage eq item}">
							<li class="disable"><a href="javascript:void(0)"><strong>${item}</strong></a></li>
							</c:if>
							<c:if test="${currentPage ne item}">
							<li><a href="javascript:void(0)">${item}</a></li>
							</c:if>
							</c:forEach>
                         </ul>
                    </div>
                    </div>
                </div>
            </div>
        </div>




   </div></div></div></div></div>
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
</body>
</html>