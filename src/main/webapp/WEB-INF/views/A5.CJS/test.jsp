<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



<!-- Button trigger modal -->
<button type="button" onclick="reflash()" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#itemmix">
조합하러가기
</button>


<div class="modal fade" id="itemmix" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content" style="background-color: white;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">아이콘 조합</h4>
      </div>
      <div class="modal-body">
<style>
.cjsitemsolt>tbody>tr{
height:33%; 
}

#socialicons
{
width:75%;
margin:0 auto;
overflow:auto;
}
  
.socialicon
{
width:100px;
height:100px;
border-radius:50%;
overflow:hidden;
background:#e4e4e4;
position:relative;
float:left;
margin:0px 0px 10px 10px ;
} 

.socialiconcircle1
{
width:150px;
height:150px;
position:absolute;
left:0px;
top:100px;
-webkit-animation:fill 2s infinite;
-moz-animation:fill 2s infinite;
animation:fill 2s infinite;
}

.socialiconcircle2
{
width:94px;
height:94px;
border-radius:50%;
background:#fff;
position:absolute;
left:3px;
top:3px;
}

.icons
{
font-size:2em;
position:absolute;
left: 33px;
top: 33px;
-webkit-animation:iconjump 2s infinite;
-moz-animation:iconjump 2s infinite;
animation:iconjump 2s infinite;  
}

/* fill color */  
.dribbblecolor{background:#ea4c89;}
.facebookcolor{background:#3b5998;} 
.googlecolor{background:#dd4b39;} 
.flickrcolor{background:#ff0084;}
.pinterestcolor{background:#c8232c;}
.youtubecolor{background:#c4302b;}
.githubcolor{background:#171515;}
.linkedincolor{background:#0e76a8;}
.tumblrcolor{background:#34526f;}

/* icons color */  
.dribbble{color:#ea4c89!important}
.facebook{color:#3b5998!important}
.google{color:#dd4b39!important}                                   
.flickr{color:#ff0084!important}
.pinterest{color:#c8232c!important;}
.youtube{color:#c4302b!important;}  
.github{color:#171515!important;}  
.linkedin{color:#0e76a8!important;} 
.tumblr{color:#34526f!important;}


/* fill background */      
@-webkit-keyframes fill
{
0%{top:100px;}
100%{top:0px;}
}

@-moz-keyframes fill
{
0%{top:100px;}
100%{top:0px;}
}

@keyframes fill
{
0%{top:100px;}
100%{top:0px;}
}

/* jump social icons */
@-webkit-keyframes iconjump
{
0%{top:33px;}
10%{top:70px;}
20%{top:33px;}
50%{top:33px;}
90%{top:33px;} 
100%{top:33px;}
}

@-moz-keyframes iconjump
{
0%{top:33px;}
10%{top:70px;}
20%{top:33px;}
50%{top:33px;}
90%{top:33px;} 
100%{top:33px;}
}

@keyframes iconjump
{
0%{top:33px;}
10%{top:70px;}
20%{top:33px;}
50%{top:33px;}
90%{top:33px;} 
100%{top:33px;}
}
</style>
<table style="width: 100%">
<tr><th>
   <div class="row">
		<div class="col-md-6" style="width: 100%;">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">조합 재료</h3>
					</div>
				<div class="panel-body" style="overflow: auto; height: 350px; padding:0">
				<table>
				<tbody id="mixlist"> </tbody>
				</table>
				</div>
			</div>
		</div>
		
	</div>

</th>
<th style="width: 30%">
<table class="cjsitemsolt" style="height: 400px; width: 400px;" background="/goodluck/resources/A5.CJS/itemmallcaros/f3dfea21209548190f724c6e8d10c52c.gif"  >
<tbody>
<tr>
<th style="width: 33%"></th><th style="height:33%; width:33%; padding-top: 0;"><div id="item1" style="width: 100%; height: 100%;">
<div >
<div class="socialicon">
<div class="facebookcolor socialiconcircle1"></div>
<div class="socialiconcircle2">
<img class="mixitem1" src="/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" style="width: 100%; height: 100%">
</div> 
</div>
</div></div></th>
<th style="width: 33%">
</th></tr><tr>
<th></th>
<th style="padding-top: 10px;">
<div>
<div class="socialicon">
<div class="googlecolor socialiconcircle1"></div>
<div class="socialiconcircle2">
<img class="mixitemresult" src="/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" style="width: 100%; height: 100%">
</div> 
</div>
</div>
</th><th></th></tr>
<tr>
<th style="padding: 15px;" >
<div >
<div class="socialicon">
<div class="flickrcolor socialiconcircle1"></div>
<div class="socialiconcircle2">
<img class="mixitem2" src="/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" style=" width: 100%; height: 100%">
</div> 
</div>     
</div>
</th>
<th></th>
<th style="padding: 15px;">
<div >
<div class="socialicon">
<div class="googlecolor socialiconcircle1"></div>
<div class="socialiconcircle2">
<img class="mixitem3" src="/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" style=" width: 100%; height: 100%">
</div> 
</div>
</div>
</th>
</tr>
</tbody>
</table>
</th></tr></table>
   </div>
      <div class="modal-footer" style="text-align:right;">
     <small>아이콘을 3개 삽입하셔야 조합이 가능합니다.<br>조합을 한 경우 복구는 절대 불가능합니다.<br>조합한 아이콘 외 아이콘이 랜덤하게 1개 생성됩니다.<br>조합을 통해 레어아이콘을 획득할수있습니다.   </small> <br>
      <button id="mixbutton" type="button" class="btn btn-primary" onclick="mix()">조합하기</button>
      <button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
      </div>
    </div>
  </div>
</div>
<script>
function mix(){
	$("#mixbutton").hide();
	if($(".mixitem1").attr("src") != "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" &&
	   $(".mixitem2").attr("src") != "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png" &&
	   $(".mixitem3").attr("src") != "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png")
	{
	 console.log($(".mixitem1").attr("id"));
	 console.log($(".mixitem2").attr("id"));
	 console.log($(".mixitem3").attr("id"));
			$.ajax({
				url:"cjsmix.go",
				dataType: "json",
				data:{
					pk1:$(".mixitem1").attr("id"),
					pk2:$(".mixitem2").attr("id"),
					pk3:$(".mixitem3").attr("id"),
					memberid:"${loginUser.member_id}"
					},
					success:function(data){
					var jsonStr = JSON.stringify(data);
						
					var json = JSON.parse(jsonStr);
							
					
				console.log(json.ITEMFILENAME);	
				console.log(json.ITEMNAME);	
				$(".mixitemresult").attr("src","/goodluck/resources/A5.CJS/itemimg/"+json.ITEMFILENAME)
				alert(json.ITEMNAME+"을 획득!");
				
				$('.mixitem1').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
				$('.mixitem2').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
				$('.mixitem3').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
				
				reflashaftermix();
				
				}
			})	
		
			 
	}else{
		alert("조합아이콘 3개를 선택해주세요!");
	}
	$("#mixbutton").show();
}
function pickicon(a){
	$('.mixitemresult').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	if($(".mixitem1").attr("src") == "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png"){
		$(".mixitem1").attr("src",$("img[class="+a.id+"]").attr("src"));	
		$(".mixitem1").attr("id",a.id);	
		$("#mixlist a[id="+a.id+"]").hide();
	
	} else if($(".mixitem2").attr("src") == "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png"){
		$(".mixitem2").attr("src",$("img[class="+a.id+"]").attr("src"));
		$(".mixitem2").attr("id",a.id);	
		$("#mixlist a[id="+a.id+"]").hide();
	
	} else if($(".mixitem3").attr("src") == "/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png"){
		$(".mixitem3").attr("src",$("img[class="+a.id+"]").attr("src"));
		$(".mixitem3").attr("id",a.id);	
		$("#mixlist a[id="+a.id+"]").hide();
	}  
	
	
}
$(function(){
	$('.mixitem1').click(function(){
		$("a[id="+$('.mixitem1').attr('id')+"]").show();
		$('.mixitem1').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
		$('.mixitem1').removeAttr("id");
	});
	
	$('.mixitem2').click(function(){
		$("a[id="+$('.mixitem2').attr('id')+"]").show();
		$('.mixitem2').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
		$('.mixitem2').removeAttr("id");
	});
	$('.mixitem3').click(function(){
		$("a[id="+$('.mixitem3').attr('id')+"]").show();
		$('.mixitem3').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
		$('.mixitem3').removeAttr("id");
})
})

function reflash(){
	var id = "${loginUser.member_id}";
	console.log("${loginUser.member_id}");
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
			
	
		
		var Array1= new Array(); 
		var Array2= new Array(); 
		var Array3= new Array();
		Array3[0]=new Array();
		Array3[1]=new Array();
		Array3[2]=new Array();
		Array3[3]=new Array();
		var Array4= new Array();
		Array4[0]=new Array();
		Array4[1]=new Array();
		Array4[2]=new Array();
		var value1="";
		
		for(var i in json.havingitem){//보유중 아이템 삽입.
		Array1.push(json.havingitem[i]);
		}
		for(var i in json.havingimticon){
		Array2.push(json.havingimticon[i]);
		}
		var value3=$("#myusingitem").html("");
		for(var i in json.usingitem){
		value3+="<tr style='height:70px'>";
		value3+="<th><div><img src='/goodluck/resources/A5.CJS/itemimg/"+json.usingitem[i].ITEMFILENAME+"' style='width:50px; height:50px;'></div></th>"
		value3+="<th>"+json.usingitem[i].ITEMNAME+"</th>";
		value3+="<th>"+json.usingitem[i].END_DATE+"</th>"
		value3+="</tr>";
		} 
		
		$("#myusingitem").html(value3);
		
		if(json.havingitem[0]!=null){
		$("#itempage").val(json.havingitem[0].currentPage);
	
		}
		
		if(json.havingimticon[0]!=null){
		$("#itempage1").val(json.havingimticon[0].currentPage);
		}
    
//아이템조합을 위한알고릐즘
    value4="";
    var count3=0;
	for(var i in json.mixitem){
	    if(count3==0){
	    value4+="<tr>";
	    }
		$("#mixlist").html($("#mixlist").html()+json.mixitem);
		value4+="<th></th>";
		if(json.mixitem[i].ITEMFILENAME!=null)
		value4+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='pickicon(this); return false;'><img class='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+json.mixitem[i].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+json.mixitem[i].ITEMNAME+"</div></a></th></div>";
		else
		value4+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; ' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
		count3++;
		if(count3==3){
		value4+="</tr>";
		count3=0;	
		}
	}
	$("#mixlist").html(value4);
			
//각 배열을 직렬화
		for(var i=Array1.length; i<16; i++ ){
			Array1.push("");
		}
		for(var i=Array2.length; i<8; i++ ){
			Array2.push("");
		}
	
		var count1=0;
		var count2=0;
		
//직렬화 배열을 다시 2차원으로 나눔.
		for(var i=0; i<4; i++){
			for(var j=0; j<4; j++){
			Array3[i][j]=Array1[count1];
			count1++;
			}
		}
		for(var i=0; i<2; i++){
			for(var j=0; j<4; j++){
				Array4[i][j]=Array2[count2];
				count2++;
			}
		}//직렬화 를 2차원으로 배열 완료
		

//2차원배열을 이제 인벤토리에 넣을 value밸류에 넣어줘야한다. 
for(var i=0; i<4; i++){//소모성 아이템부터 
			value1+="<tr>";
			for(var j=0; j<4; j++){
		if(Array3[i][j].ITEMFILENAME!=null)
			value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
		else
			value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
			}
			value1+="</th>"; 
		}
		
		
		
		
	//페이징처리
		$("#havingitempaging").html("");
		if(json.havingitem[0]!= null){
 		for(var i=1; i<=json.havingitem[0].maxPage; i++){
		if(i==json.havingitem[0].currentPage)
 		$("#havingitempaging").html($("#havingitempaging").html()+"&nbsp;<font size=5>"+i+"</font>");
		else
	    $("#havingitempaging").html($("#havingitempaging").html()+"&nbsp;"+"<a onclick='paging("+i+")' href='javascript:void(0)'>"+i+"</a>");
 		}
		}else{
		$("#havingitempaging").html($("#havingitempaging").html()+"1");		
		}
// 		job.put("currentPage",gmi.getCurrentPage());
// 		job.put("maxPage", gmi.getMaxpage());
		
		
		var value2="";
		for(var i=0; i<2; i++){//이모티콘
			value2+="<tr>";
			for(var j=0; j<4; j++){
			if(Array4[i][j].selected==1){
			value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
			$("#afterauserajaximg").attr("src","/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME);
			}else if(Array4[i][j].ITEMFILENAME!=null)
			value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
			else
			value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
			}
			value2+="</th>";
		}
		
		//페이징처리
$("#havingimticonpaging").html("");
	if(json.havingimticon[0]!=null){
	 		for(var i=1; i<=json.havingimticon[0].maxPage; i++){
			if(i==json.havingimticon[0].currentPage)
	 		$("#havingimticonpaging").html($("#havingimticonpaging").html()+"&nbsp;<font size=5>"+i+"</font>");
			else
		    $("#havingimticonpaging").html($("#havingimticonpaging").html()+"&nbsp;"+"<a onclick='paging1("+i+")' href='javascript:void(0)'>"+i+"</a>");
		} 
	 }else{
	$("#havingimticonpaging").html($("#havingimticonpaging").html()+"1");
	 }	
		$("#nowhaveitem").html(value1);	
		$("#haveimticon").html(value2);
		
		
		if(json.boardcount!=null)
			{$("#boardcount").html(json.boardcount);
			}
			if(json.keywordcount!=null)
			{$("#keywordcount").html(json.keywordcount)
			
			}
		
		
		},
		error:function(a,b,c){
			alert("a : " + a + ", b : " + b + ", c : " + c);
		}
	})
	
	$("a[id="+$('.mixitem1').attr('id')+"]").show();
	$('.mixitem1').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem1').removeAttr("id");
	$("a[id="+$('.mixitem2').attr('id')+"]").show();
	$('.mixitem2').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem2').removeAttr("id");
	$("a[id="+$('.mixitem3').attr('id')+"]").show();
	$('.mixitem3').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem3').removeAttr("id");
	$('.mixitemresult').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	
}
function reflashaftermix(){
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
			
	
		
		var Array1= new Array(); 
		var Array2= new Array(); 
		var Array3= new Array();
		Array3[0]=new Array();
		Array3[1]=new Array();
		Array3[2]=new Array();
		Array3[3]=new Array();
		var Array4= new Array();
		Array4[0]=new Array();
		Array4[1]=new Array();
		Array4[2]=new Array();
		var value1="";
		
		for(var i in json.havingitem){//보유중 아이템 삽입.
		Array1.push(json.havingitem[i]);
		}
		for(var i in json.havingimticon){
		Array2.push(json.havingimticon[i]);
		}
		var value3=$("#myusingitem").html("");
		for(var i in json.usingitem){
		value3+="<tr style='height:70px'>";
		value3+="<th><div><img src='/goodluck/resources/A5.CJS/itemimg/"+json.usingitem[i].ITEMFILENAME+"' style='width:50px; height:50px;'></div></th>"
		value3+="<th>"+json.usingitem[i].ITEMNAME+"</th>";
		value3+="<th>"+json.usingitem[i].END_DATE+"</th>"
		value3+="</tr>";
		} 
		
		$("#myusingitem").html(value3);
		
		if(json.havingitem[0]!=null){
		$("#itempage").val(json.havingitem[0].currentPage);
	
		}
		
		if(json.havingimticon[0]!=null){
		$("#itempage1").val(json.havingimticon[0].currentPage);
		}
    
//아이템조합을 위한알고릐즘
    value4="";
    var count3=0;
	for(var i in json.mixitem){
	    if(count3==0){
	    value4+="<tr>";
	    }
		$("#mixlist").html($("#mixlist").html()+json.mixitem);
		value4+="<th></th>";
		if(json.mixitem[i].ITEMFILENAME!=null)
		value4+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='pickicon(this); return false;'><img class='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+json.mixitem[i].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+json.mixitem[i].ITEMNAME+"</div></a></th></div>";
		else
		value4+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
		count3++;
		if(count3==3){
		value4+="</tr>";
		count3=0;	
		}
	}
	$("#mixlist").html(value4);
			
//각 배열을 직렬화
		for(var i=Array1.length; i<16; i++ ){
			Array1.push("");
		}
		for(var i=Array2.length; i<8; i++ ){
			Array2.push("");
		}
	
		var count1=0;
		var count2=0;
		
//직렬화 배열을 다시 2차원으로 나눔.
		for(var i=0; i<4; i++){
			for(var j=0; j<4; j++){
			Array3[i][j]=Array1[count1];
			count1++;
			}
		}
		for(var i=0; i<2; i++){
			for(var j=0; j<4; j++){
				Array4[i][j]=Array2[count2];
				count2++;
			}
		}//직렬화 를 2차원으로 배열 완료
		

//2차원배열을 이제 인벤토리에 넣을 value밸류에 넣어줘야한다. 
for(var i=0; i<4; i++){//소모성 아이템부터 
			value1+="<tr>";
			for(var j=0; j<4; j++){
		if(Array3[i][j].ITEMFILENAME!=null)
			value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
		else
			value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
			}
			value1+="</th>"; 
		}
		
		
		
		
	//페이징처리
		$("#havingitempaging").html("");
		if(json.havingitem[0]!= null){
 		for(var i=1; i<=json.havingitem[0].maxPage; i++){
		if(i==json.havingitem[0].currentPage)
 		$("#havingitempaging").html($("#havingitempaging").html()+"&nbsp;<font size=5>"+i+"</font>");
		else
	    $("#havingitempaging").html($("#havingitempaging").html()+"&nbsp;"+"<a onclick='paging("+i+")' href='javascript:void(0)'>"+i+"</a>");
 		}
		}else{
		$("#havingitempaging").html($("#havingitempaging").html()+"1");		
		}
// 		job.put("currentPage",gmi.getCurrentPage());
// 		job.put("maxPage", gmi.getMaxpage());
		
		
		var value2="";
		for(var i=0; i<2; i++){//이모티콘
			value2+="<tr>";
			for(var j=0; j<4; j++){
			if(Array4[i][j].selected==1){
			value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
			$("#afterauserajaximg").attr("src","/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME);
			}else if(Array4[i][j].ITEMFILENAME!=null)
			value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
			else
			value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
			}
			value2+="</th>";
		}
		
		//페이징처리
$("#havingimticonpaging").html("");
	if(json.havingimticon[0]!=null){
	 		for(var i=1; i<=json.havingimticon[0].maxPage; i++){
			if(i==json.havingimticon[0].currentPage)
	 		$("#havingimticonpaging").html($("#havingimticonpaging").html()+"&nbsp;<font size=5>"+i+"</font>");
			else
		    $("#havingimticonpaging").html($("#havingimticonpaging").html()+"&nbsp;"+"<a onclick='paging1("+i+")' href='javascript:void(0)'>"+i+"</a>");
		} 
	 }else{
	$("#havingimticonpaging").html($("#havingimticonpaging").html()+"1");
	 }	
		$("#nowhaveitem").html(value1);	
		$("#haveimticon").html(value2);
		
		
		if(json.boardcount!=null)
			{$("#boardcount").html(json.boardcount);
			}
			if(json.keywordcount!=null)
			{$("#keywordcount").html(json.keywordcount)
			
			}
		
		
		},
		error:function(a,b,c){
			alert("a : " + a + ", b : " + b + ", c : " + c);
		}
	})
	
	$("a[id="+$('.mixitem1').attr('id')+"]").show();
	$('.mixitem1').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem1').removeAttr("id");
	$("a[id="+$('.mixitem2').attr('id')+"]").show();
	$('.mixitem2').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem2').removeAttr("id");
	$("a[id="+$('.mixitem3').attr('id')+"]").show();
	$('.mixitem3').attr("src","/goodluck/resources/A5.CJS/itemmallcaros/question-mark-460864_960_720.png");
	$('.mixitem3').removeAttr("id");

}
</script>