<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	

<script>
function paging1(page){
	if("${loginUser}" != "" && "${loginUser.member_id}" != "guest"){
		//로그인 했을경우에만 발동함.
		var id = "${loginUser.member_id}";
	
		$.ajax({
			url:"cjsgetmyitem.go",
			type:"post",
			data:{
				member_id: id,
				page1:page,
				page:$("#itempage").val()
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
//		 		 <tbody id="myusingitem">
//		          <tr style="width:100%">
//		       	<th style="width:20%">...</th>
//		          <th style="width:50%">아이템</th>
//		          <th style="width:30%">기간</th>
//		       	<tr>
//		          </tbody>
				
				if(json.havingitem[0]!=null){
				$("#itempage").val(json.havingitem[0].currentPage);
			
				}
				
				if(json.havingimticon[0]!=null){
				$("#itempage1").val(json.havingimticon[0].currentPage);
				}
				
				
				
				
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
					value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
				else
					value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
//		 		job.put("currentPage",gmi.getCurrentPage());
//		 		job.put("maxPage", gmi.getMaxpage());
				
				
				var value2="";
				for(var i=0; i<2; i++){//이모티콘
					value2+="<tr>";
					for(var j=0; j<4; j++){
					if(Array4[i][j].selected==1){
					value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
					}else if(Array4[i][j].ITEMFILENAME!=null)
					value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
					else
					value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
				},
				error:function(a,b,c){
					alert("a : " + a + ", b : " + b + ", c : " + c);
				}
	})}}
function paging(page){
	if("${loginUser}" != "" && "${loginUser.member_id}" !="guest"){
		//로그인 했을경우에만 발동함.
		var id = "${loginUser.member_id}";
	
		$.ajax({
			url:"cjsgetmyitem.go",
			type:"post",
			data:{
				member_id: id,
				page:page,
				page1:$("#itempage1").val()
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
//		 		 <tbody id="myusingitem">
//		          <tr style="width:100%">
//		       	<th style="width:20%">...</th>
//		          <th style="width:50%">아이템</th>
//		          <th style="width:30%">기간</th>
//		       	<tr>
//		          </tbody>
				
				if(json.havingitem[0]!=null){
				$("#itempage").val(json.havingitem[0].currentPage);
			
				}
				
				if(json.havingimticon[0]!=null){
				$("#itempage1").val(json.havingimticon[0].currentPage);
				}
				
				
				
				
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
					value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
				else
					value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
//		 		job.put("currentPage",gmi.getCurrentPage());
//		 		job.put("maxPage", gmi.getMaxpage());
				
				
				var value2="";
				for(var i=0; i<2; i++){//이모티콘
					value2+="<tr>";
					for(var j=0; j<4; j++){
					if(Array4[i][j].selected==1){
					value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
					}else if(Array4[i][j].ITEMFILENAME!=null)
					value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
					else
					value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
				},
				error:function(a,b,c){
					alert("a : " + a + ", b : " + b + ", c : " + c);
				}
	})}}
				

$(function(){
	
	if("${loginUser}" != "" && "${loginUser.member_id}" != "guest"){
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
		value4+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='pickicon(this); return false;'><img class='"+json.mixitem[i].MYITEM_NO+"' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+json.mixitem[i].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+json.mixitem[i].ITEMNAME+"</div></a></th></div>";
		else
		value4+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
			value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
		else
			value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
			value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
			$("#afterauserajaximg").attr("src","/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME);
			}else if(Array4[i][j].ITEMFILENAME!=null)
			value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
			else
			value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
	});
	}
})
function useitem(itempk){
// 		console.log($("#itempage").val());
// 		console.log($("#itempage1").val());
// 		console.log(itempk.id); //소모성아이템 id
// 		console.log(itempk.name);//소모성아이템 이름
		var usitempk=itempk.id;
		var id = "${loginUser.member_id}";
		var txt;
		$("#"+itempk.id+"").hide();
	 	var r = confirm(itempk.name+"을 사용하시겠습니까?");
	 	if (r == true) {
		 		$.ajax({
		 			url:"cjsgetmyitem.go",
		 			type:"post",
		 			data:{
		 				member_id: id,
		 				page:$("#itempage").val(),
		 				page1:$("#itempage1").val(),
		 				usitempk:usitempk
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
		 			if(json.cjsmessage !=null){
		 				alert(json.cjsmessage+"가 나왔습니다!");
		 			}
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
		 				console.log(json.usingitem)
		 				$("#myusingitem").html(value3);
//		 		 		 <tbody id="myusingitem">
//		 		          <tr style="width:100%">
//		 		       	<th style="width:20%">...</th>
//		 		          <th style="width:50%">아이템</th>
//		 		          <th style="width:30%">기간</th>
//		 		       	<tr>
//		 		          </tbody>
		 				
		 				if(json.havingitem[0]!=null){
		 				$("#itempage").val(json.havingitem[0].currentPage);
		 			
		 				}
		 				
		 				if(json.havingimticon[0]!=null){
		 				$("#itempage1").val(json.havingimticon[0].currentPage);
		 				}
		 				
		 				
		 				
		 				
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
		 					value1+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array3[i][j].MYITEM_NO+"'  name='"+Array3[i][j].ITEMNAME+" 'style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useitem(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array3[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center; padding-top: 30%'>"+Array3[i][j].ITEMNAME+"</div></a></th></div>";
		 				else
		 					value1+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
		 				}
//		 		 		job.put("currentPage",gmi.getCurrentPage());
//		 		 		job.put("maxPage", gmi.getMaxpage());
		 				
		 				
		 				var value2="";
		 				for(var i=0; i<2; i++){//이모티콘
		 					value2+="<tr>";
		 					for(var j=0; j<4; j++){
		 					if(Array4[i][j].selected==1){
		 					value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
		 					}else if(Array4[i][j].ITEMFILENAME!=null)
		 					value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
		 					else
		 					value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
		 				}}		
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
		
	
	 }else{
		 $("#"+itempk.id+"").show();		 
	 }
}

function useimticon(itempk){
console.log(itempk.id);//이모티콘 아이디
var id = "${loginUser.member_id}";
var usitempk = itempk.id;
$.ajax({
		url:"cjsadjectimticon.go",
		type:"post",
		data:{
			member_id: id,
			page1:$("#itempage1").val(),
			usitempk:usitempk
		},
		dataType: "json",
		success:function(data){
				var jsonStr = JSON.stringify(data);		
				var json = JSON.parse(jsonStr);
				var Array2= new Array(); 
				var Array4= new Array();
				Array4[0]=new Array();
				Array4[1]=new Array();
				Array4[2]=new Array();
				for(var i in json.havingimticon){
				Array2.push(json.havingimticon[i]);
				}
				if(json.havingimticon[0]!=null){
				$("#itempage1").val(json.havingimticon[0].currentPage);
				}

		//배열을 직렬화
				for(var i=Array2.length; i<8; i++ ){
					Array2.push("");
				}
			var count1=0;
			var count2=0;
	//직렬화 배열을 다시 2차원으로 나눔.
	for(var i=0; i<2; i++){
			for(var j=0; j<4; j++)
			{
				Array4[i][j]=Array2[count2];
				count2++;
			}
	}//직렬화 를 2차원으로 배열 완료
				

		//2차원배열을 이제 인벤토리에 넣을 value밸류에 넣어줘야한다.
		
				var value2="";
				for(var i=0; i<2; i++){//이모티콘
					value2+="<tr>";
					for(var j=0; j<4; j++){
					if(Array4[i][j].selected==1){
					value2+="<th class='itemth' style='border: 1px solid red;'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";		
					$("#afterauserajaximg").attr("src","/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME);
					}else if(Array4[i][j].ITEMFILENAME!=null)
					value2+="<th class='itemth'><div class='product-div2' style='width:100%; height:100%;'><a id='"+Array4[i][j].MYITEM_NO+"' style='width:100%; height:100%;' class='imgbox' href='javascript:void(0);' onclick='useimticon(this); return false;'><img class='img-responsive cjstransition' style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/"+Array4[i][j].ITEMFILENAME+"'><div class='text-view csjtransition' style='width:100%;height:100%;text-align:center;padding-top: 30%'>"+Array4[i][j].ITEMNAME+"</div></a></th></div>";
					else
					value2+="<th class='itemth'><div style='width:100%; height:100%;'><img style='width:100%; height:100%; background:white; border-radius: 10px 10px 10px 10px; border-color: black;' src='/goodluck/resources/A5.CJS/itemimg/itemempty.ico'</div></th>";
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
				}}		
				$("#haveimticon").html(value2);
				
				
				
				},
 				error:function(a,b,c){
 					alert("a : " + a + ", b : " + b + ", c : " + c);
 				}
})
}



</script>

<style>
#nowhaveitem > tr{
height: 78px;
}
#haveimticon > tr{
height: 78px;
}
 .itemth {
     width:50px;
      height:50px;
     background:white;
      border-radius: 10px 10px 10px 10px;
     border: 1px solid black;
       }
 .cjstransition{
    transition: all 0.5s ease;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    -ms-transition: all 0.5s ease;
}
/* --------- Text View ----------*/
.product-div2{
    position:relative;
    overflow:hidden;
}
.product-div2:hover .text-view{
     top: 50%;
     opacity:1;
}
.product-div2:hover img{
    opacity:.2;
}
.text-view{
    position:absolute;
    top: 60%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    opacity:0;
    color:black;
}




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
      <div>
       
        
 <div class="container" style="width: 100%">
 <table style="width:100%;">
 <tr>
 <th style=" width: 30%;">
	<div class="11" style="margin-left:10px;">
		<center>
		<c:if test="${loginUser ne null && loginUser.member_id ne 'guest'}">
		<img alt="회원이미지" src="/goodluck/resources/A5.CJS/usertitleimg/${loginUser.member_renamephoto}" style="width: 100px; height: 100px; border-radius: 100% 100% 100% 100% ">
		</c:if>
		</center>
		<br>
		아이디:<img id="afterauserajaximg" style="width:20px; height: 30px;">${loginUser.member_id}<br>
		회원님 이름 :${loginUser.member_name}<br>
		보유  포인트 :${loginUser.member_cash} <br>
		최대 게시글 수:<p id="keywordcount"></p>
		최대 키워드 수:<p id="boardcount"></p>
		
			
		 	
		<button onclick="location.href='<%=request.getContextPath()%>/cjsitemmellhome.go'">아이템몰 바로가기</button><br>

		<br>
		  <%@ include file = "/WEB-INF/views/A5.CJS/test.jsp" %>
	</div>
</th>
<th style="width:100%">
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
           
                   
                <div class="panel-body" style="padding:0px;  background:#e9e9e9; border-radius: 0 0 10px 10px">
                    <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1primary" >
					<table style="height:100%; width:100%; background:#e9e9e9; border-collapse: separate;  border-spacing: 10px; border-radius: 0 0 100px 100px">
					<tbody id="nowhaveitem">
					</tbody>	
						</table>
						<center>
						<p id="havingitempaging"></p>
						</center>
						</div>
                        <div class="tab-pane fade" id="tab2primary" style="overflow: scroll; border-radius: 0 0 10px 10px; height:100%; padding: 10px">
                        
	                   <div style="width: 100%; height: 400px; border-radius: 0 0 8px 8px">
	          			<table style="width: 100%;">
	                     	<tbody style="height:20px;">
	                     	<tr >
	                      	<th >....</th>
	                        <th >아이템명</th>
	                        <th >만료 기간</th>
	                        </tr>
	                        </tbody>
	                        <tbody id="myusingitem"></tbody>
	                 		</table>
	                        
	                       
	                        
                        
                        </div>
                       		
                        
                        
                        
                        
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</th>
</tr>
<tr>
<th></th>
<th style="padding:15px;">
<div class="panel panel-primary" style="height:100%; border-radius: 8px 8px 10px 10px"> 
		<div class="panel-heading" style="border-radius: 5px 5px 0 0">
		보유 아이콘
		</div>
		<div class="panel-body" style="padding: 0px; background:#e9e9e9;  border-radius: 0px 0px 10px 10px">
		<table style="height:80%; width:100%; background:#e9e9e9; border-collapse: separate; border-spacing: 10px;">
					
					<tbody id="haveimticon">
					
					</tbody>
					</table>
						<center >
						<p id="havingimticonpaging"></p>
						</center>
		</div>

</div>
</th>
</tr>	
<tr>
<th colspan="2">
 <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">아이템창 닫기</button>
     </div>
</th>
<th></th>

       

</tr>
     
     
      </table>
    
    </div>

<input type="hidden" id='itempage' value="1">

<input type="hidden" id='itempage1' value="2">

  </div>
  </div>
</div>


<script type="text/javascript">

</script>

</div>

</div>

