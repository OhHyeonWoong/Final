<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	

<script>

$(function(){
	if("${loginUser}" != ""){
	//로그인 했을경우에만 발동함.
	var id = "${loginUser.member_id}";

	$.ajax({
		url:"cjsgetmyitem.go",
		type:"post",
		data:{
			member_id: id		
		},
		dataType: "json",
		success:function(data){

		var jsonStr = JSON.stringify(data);
			
		var json = JSON.parse(jsonStr);
			
		console.log(json);
		
		var count1=1; 
		var count2=1; 
		var value1="";
		var value2="";
		value1+="<tr>";
		for(var i in json.havingitem){//보유중 아이템 삽입.
			
<%-- 			<%for(int i=0 ; i<4; i++){%> --%>
// 			<tr>
<%-- 			<% for(int j=0; j<4; j++){ %> --%>
// 			<th class="itemth">
<%-- 			<%= j %> --%>
// 			</th>
<%-- 			<%} %> --%>
// 		    </tr>
<%-- 		<%} %> --%>
		
		if(json.havingitem[i].ITEMTYPE != 2){//이모티콘을 제외하고 모두
			if(count1%5 == 0){
			value1+="</tr>";
			}
            
			value1+="<th class='itemth'><img src='/goodluck/resources/A5.CJS/itemimg/"+json.havingitem[i].ITEMFILENAME+"' style='width:100%; height:100%;  border-radius: 10px 10px 10px 10px; border-color: black;' ></th>";
			if(count1%4 == 0){
			value1+="<tr>";
			}
			count1++;
		}else{//이모티콘만
		count2++;
			$("#haveimticon").html("");
			}
		}
		value1+="</tr>";
		console.log(value1);
		$("#nowhaveitem").html(value1);	
		$("#haveimticon").html(value2);
			
		},
		error:function(a,b,c){
			alert("a : " + a + ", b : " + b + ", c : " + c);
		}
	});
	}
})
</script>

<style>
.panel.with-nav-tabs .panel-heading{
    padding: 5px 5px 0 5px;
}
.panel.with-nav-tabs .nav-tabs{
	border-bottom: none;
}
.panel.with-nav-tabs .nav-justified{
	margin-bottom: -1px;
}

.with-nav-tabs.panel-primary .nav-tabs > li > .havaitem,
.with-nav-tabs.panel-primary .nav-tabs > li > .havaitem:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > .havaitem:focus {
    color: #fff;
}
.with-nav-tabs.panel-primary .nav-tabs > .open > .havaitem,
.with-nav-tabs.panel-primary .nav-tabs > .open > .havaitem:hover,
.with-nav-tabs.panel-primary .nav-tabs > .open > .havaitem:focus,
.with-nav-tabs.panel-primary .nav-tabs > li > .havaitem:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > .havaitem:focus {
	color: #fff;
	background-color: #3071a9;
	border-color: transparent;
}
.with-nav-tabs.panel-primary .nav-tabs > li.active > .havaitem,
.with-nav-tabs.panel-primary .nav-tabs > li.active > .havaitem:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.active > .havaitem:focus {
	color: #428bca;
	background-color: #fff;
	border-color: #428bca;
	border-bottom-color: transparent;
}

</style>
<div id="myitem" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">${loginUser.member_name}님의 인벤토리</h4>
      </div>
      <div class="modal-body">
        <Br>
<div class="11" style="float: left; margin-left:10px;">

<center>
<img alt="회원이미지" src="/goodluck/resources/A5.CJS/usertitleimg/${loginUser.member_renamephoto}" style="width: 100px; height: 100px; border-radius: 100% 100% 100% 100% ">
</center>

<br>
회원님 아이디:${loginUser.member_id}<br>
회원님 이름 : ${loginUser.member_name}<br>
보유  포인트 :${loginUser.member_cash}<br>
최대 게시글 수:${loginUser.member_write_count}<br>
최대 키워드 수:${loginUser.member_keyword_count}<br>
</div>

<div class="container" style="margin-left: 150px; width: 400px;">
    <table>
    </table>
    <div class="row">
     <div class="col-md-6" style="width: 100%;">
            <div class="panel with-nav-tabs panel-primary" style="border-radius: 10px 10px 10px 10px">
                <div class="panel-heading" style="border-radius: 8px 8px 0px 0px">
                        <ul class="nav nav-tabs">
                            <li class="active">
                            <a class='havaitem' href="#tab1primary" data-toggle="tab">보유 중인 아이템</a>
                            </li>
                            <li>
                            <a class='havaitem' href="#tab2primary" data-toggle="tab">적용중인 아이템</a>
                            </li>
                        </ul>
                </div>
                  <style>
               	 .itemth {
                  width:50px;
                  height:50px;
                  background:white;
                  border-radius: 10px 10px 10px 10px;
                  border-color: black;
                  }
                  </style> 
                   
                <div class="panel-body" style="padding:0px;  background:#e9e9e9; border-radius: 0 0 10px 10px">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary" >
		<table style="height:100%; width:100%; background:#e9e9e9; border-collapse: separate;  border-spacing: 10px; border-radius: 0 0 100px 100px">
					<tbody id="nowhaveitem">
						<%for(int i=0 ; i<4; i++){%>
							<tr>
							<% for(int j=0; j<4; j++){ %>
							<th class="itemth">
							<%= j %>
							</th>
							<%} %>
						    </tr>
						<%} %>
					</tbody>	
						
						</table>
						<center>
						<<페이징>> 
						</center>
						</div>
                        <div class="tab-pane fade" id="tab2primary" style="border-radius: 0 0 10px 10px">Primary 2</div>
                    </div>
                </div>
            </div>
        </div>
	</div>

<div class="panel panel-primary" style="height:100%; border-radius: 8px 8px 10px 10px"> 
		<div class="panel-heading" style="border-radius: 5px 5px 0 0">
				보유 아이콘
		</div>
		<div class="panel-body" style="padding: 0px; background:#e9e9e9;  border-radius: 0px 0px 10px 10px">
		<table style="height:80%; width:100%; background:#e9e9e9; border-collapse: separate; border-spacing: 10px;">
					
					<tbody id="haveimticon">
					<%for(int i=0 ; i<2; i++){%>
						<tr>
							<% for(int j=0; j<4; j++){ %>
							<th class="itemth">
							<%= j %>
							</th>
							<%} %>
						    </tr>
						<%} %> 
					</tbody>
						</table>
						<center>
						<<페이징>> 
						</center>
		</div>

</div>

	</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
