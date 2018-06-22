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
<div class="btn-group" data-toggle="buttons">
			<label class="btn btn-default active">
			<input type="radio" name="cjsoptions" value="1" id="option2" autocomplete="off" checked="checked">
			출시순
			</label>
			<label class="btn btn-warning">
			<input type="radio" name="cjsoptions" value="2" id="option1" autocomplete="off">
			인기순
			</label>
		</div>

<input type="text" class="cjs1" id="cjsinputsearch" style="display: initial; width:150px;  border-radius: 3px 0px 0px 3px" placeholder="아이템검색">
<button class="btn btn-default" type="button"  onclick="cjsitemsearch();" style="border-radius: 0px 3px 3px 0px; vertical-align: top; height: 100%;">검색!</button>
            </th>
            </tr>
            </table>
            </div>
            <div class="panel-body" style="overflow:auto;">
          	
          	<table style="width: 100%">
          	<tbody id="resulttable">
            <tr>
    		
    		<c:forEach var="item" items="${firstlist}" end="6">
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE}원 <br>
   			 <button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 </center>
			</th>
			</c:forEach>
			</tr>
			<tr>
			<td><label> </label></td>
			</tr>
			<tr>		
			<c:forEach var="item" items="${firstlist}" begin="7" >
   			<th>
   			<center>
   			<img src="/goodluck/resources/A5.CJS/itemimg/${item.ITEMFILENAME}" style="width: 50px; height: 40px;">
   			<br>
   			 이름 : ${item.ITEMNAME}<br>
   			 가격 : ${item.ITEMPRICE}원 <br>
   			<button onclick="location.href='/goodluck/cjsitemDetail.go?itemno=${item.ITEMLIST_NO}'">상세보기</button>
   			 
   		</center>
		</th>
		</c:forEach>
           </tr>
           </tbody>
           </table>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-md-6">
                            <h6>
                                검색된 아이템 수 <span class="label label-info" id="listcount">${listCount}</span></h6>
                    </div>
                    <div class="col-md-6">
                       
                <ul class="pagination pagination-sm pull-right" id="itempagingcjs">
						<c:forEach var="item" begin="1" end="${maxPage}">
							<c:if test="${currentPage eq item}">
							<li class="disable"><a href="javascript:void(0)"><strong>${item}</strong></a></li>
							</c:if>
							<c:if test="${currentPage ne item}">
							<li><a href="javascript:void(0)" onclick="pageing(${item});">${item}</a></li>
							</c:if>
						</c:forEach>
                </ul>
                    </div>
                    </div>
                </div>
            </div>
        </div>

<!-- 
페이징시 보내야할것..
서치내용,서치옵션, 페이지넘버
 -->


   </div></div></div></div></div>
   
   
<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
<script type="text/javascript">

function cjsitemsearch(){
	$.ajax({
		url:"cjsitemseachpageing.go",
		type:"post",
		data:{
		option:$(":input:radio[name=cjsoptions]:checked").val(),
		search:$("#cjsinputsearch").val()
		},
		dataType: "json",
		success:function(data){
			
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
	     
			console.log(json);
			$("#cjsinputsearch1").val(json.search)
			
			$("#resulttable").html("");
			var value="";
			var count=0;
			value+="<tr>";
			console.log(json.size);
			
			for (var i in json.firstlist){
			value+="<th><center><img src='/goodluck/resources/A5.CJS/itemimg/"+json.firstlist[i].ITEMFILENAME+"' style='width: 50px; height: 40px;'>";
			value+="<br> 이름 : "+json.firstlist[i].ITEMNAME+"<br> 가격 : "+json.firstlist[i].ITEMPRICE+"원 <br> "	;		
			value+="<button onclick="+"location.href='/goodluck/cjsitemDetail.go?itemno="+json.firstlist[i].ITEMLIST_NO+"'"+">상세보기</button>";
			value+=" </center></th>";
			count++;
				if(count==7){
					break;
				}
			}
			
			value+="</tr><tr><td><label></label></td></tr>";
			value+="<tr>";
			for(var count; count<json.size; count++){
				value+="<th><center><img src='/goodluck/resources/A5.CJS/itemimg/"+json.firstlist[count].ITEMFILENAME+"' style='width: 50px; height: 40px;'>";
				value+="<br> 이름 : "+json.firstlist[count].ITEMNAME+"<br> 가격 : "+json.firstlist[count].ITEMPRICE+"원 <br> "	;		
				value+="<button onclick="+"location.href='/goodluck/cjsitemDetail.go?itemno="+json.firstlist[count].ITEMLIST_NO+"'"+">상세보기</button>";
				value+=" </center></th>";
			}
			value+="</tr>";
			$("#resulttable").html(value);
		
   			$("#listcount").text(json.listCount);
   			$("#itempagingcjs").html("");
   			
   			var value1="";
			if (json.maxpage <=1 ){
			value1+='<li class="disable"><a href="javascript:void(0)"><strong>1</strong></a></li>';
			}else{
			for (var i=1; i<=json.maxpage; i++){
			value1+='<li><a href="javascript:void(0)" onclick="pageing('+i+');">'+i+'</a></li>';
			}
		   }
			console.log(value1);
		$("#itempagingcjs").html(value1);
			
		
		
		},
		error:function(a,b,c){
			/* alert("a : " + a + ", b : " + b + ", c : " + c); */
		}
	})
}
function pageing(page){
	console.log("page="+page);
	console.log("옵션="+$(":input:radio[name=cjsoptions]:checked").val());
	console.log("내용="+$("#cjsinputsearch1").val());
	$.ajax({
		url:"cjsitemseachpageing.go",
		type:"post",
		data:{
			page: page,
			option:$(":input:radio[name=cjsoptions]:checked").val(),
			search:$("#cjsinputsearch1").val()
		},
		dataType: "json",
		success:function(data){
			
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
			for(var i in json.searchitem){
			}
			$('input:radio[name=cjsoptions]').filter('[value="'+data.option+'"]').attr('checked', true);
			
			
			console.log(json.firstlist);
			$("#resulttable").html("");
			var value="";
			var count=0;
			value+="<tr>";
			console.log(json.size);
			for (var i in json.firstlist){
			value+="<th><center><img src='/goodluck/resources/A5.CJS/itemimg/"+json.firstlist[i].ITEMFILENAME+"' style='width: 50px; height: 40px;'>";
			value+="<br> 이름 : "+json.firstlist[i].ITEMNAME+"<br> 가격 : "+json.firstlist[i].ITEMPRICE+"원 <br> "	;		
			value+="<button onclick="+"location.href='/goodluck/cjsitemDetail.go?itemno="+json.firstlist[i].ITEMLIST_NO+"'"+">상세보기</button>";
			value+=" </center></th>";
			count++;
				if(count==7){
				break;}
			}
			value+="</tr><tr><td><label></label></td></tr>";
			value+="<tr>";
			for(var count; count<json.size; count++){
				value+="<th><center><img src='/goodluck/resources/A5.CJS/itemimg/"+json.firstlist[count].ITEMFILENAME+"' style='width: 50px; height: 40px;'>";
				value+="<br> 이름 : "+json.firstlist[count].ITEMNAME+"<br> 가격 : "+json.firstlist[count].ITEMPRICE+"원 <br> "	;		
				value+="<button onclick="+"location.href='/goodluck/cjsitemDetail.go?itemno="+json.firstlist[count].ITEMLIST_NO+"'"+">상세보기</button>";
				value+=" </center></th>";
			}
			
			value+="</tr>";
			$("#resulttable").html(value);
		
   			$("#listcount").text(json.listCount);
   			
   			$("#itempagingcjs").html("");
   			var value1="";
			if (json.maxpage <=1 ){
			value1+='<li class="disable"><a href="javascript:void(0)"><strong>1</strong></a></li>';
			}else{
			for (var i=1; i<=json.maxpage; i++){
				
			if(i == json.currentPage)	
			value1+='<li class="disable"><a href="javascript:void(0)"><strong>'+i+'</strong></a></li>';	
			else
			value1+='<li><a href="javascript:void(0)" onclick="pageing('+i+');">'+i+'</a></li>';
			
		}

	}
			console.log(value1);
		$("#itempagingcjs").html(value1);
			
			
		},
			error:function(a,b,c){
					/* alert("a : " + a + ", b : " + b + ", c : " + c); */
				}
	})
}

</script>
<input type="hidden" id="cjsinputsearch1">
</body>
</html>