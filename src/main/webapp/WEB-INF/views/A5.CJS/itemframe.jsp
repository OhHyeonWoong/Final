<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
	<!-- BEGIN # MODAL LOGIN -->

<!-- Modal -->


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
<div class="11" style="background: black; float: left; margin-left:10px;">

<center>
<img alt="회원이미지" src="https://images.pexels.com/photos/262508/pexels-photo-262508.jpeg?h=350&auto=compress&cs=tinysrgb" style="width: 100px; height: 100px">
</center>

<br>
회원님 아이디: ㅇ323<br>
회원님 이름 : <br>
보유 캐시 : 5000<br>
보유 중인 아이템 : 33<br> 
사용 중인 아이템 : 10<br>
사용 중인 아이콘 : dd<br>
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
				
						<%for(int i=0 ; i<4; i++){%>
							<tr>
							<% for(int j=0; j<4; j++){ %>
							<th class="itemth">
							<%= j %>
							</th>
							<%} %>
						    </tr>
						<%} %>
						
						
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
					<%for(int i=0 ; i<2; i++){%>
						<tr>
							<% for(int j=0; j<4; j++){ %>
							<th class="itemth">
							<%= j %>
							</th>
							<%} %>
						    </tr>
						<%} %> 
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
