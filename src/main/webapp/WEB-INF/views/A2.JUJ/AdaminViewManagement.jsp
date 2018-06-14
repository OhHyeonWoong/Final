<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>AdminViewManagementPage1</title>
	<style type="text/css">
		#ukjae_TableAreaFiveth{ 
		border: none;
		}
		
		#ukjae_TableAreaFiveth tr td {
			width: 210px !important;
			height: 255px !important;
			padding: 0;
			margin: 0;
			border: 1px solid gray;
		}

		#low_image4 {
			width: 180px !important;
			height: 180px !important;
			padding: 0;
			margin: 0;
			padding: 0;
			margin: 0;
		}		
		
		#ukjae_TableAreaSixth{
		border: none;		
		}		
			
			
		#ukjae_TableAreaSixth tr td {
			width: 1000px;
			height: 396px;
			padding: 0;
			margin: 0;
			border : 1px dotted gray;
		}	
	</style>	
	<script type="text/javascript" src="/goodluck/resources/common/js/jquery-3.3.1.min.js"></script>	
	<script type="text/javascript">
		$(function(){
			/* $.ajax({
				url : "alllist.go",
				type : "post",
				datatype : "json",
				success : function(data){
					console.log(data);
					
					var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환			
					var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
					var tablevalue = "<tr align='center'><td style='width: 5px; border: none;'></td>";
					
					for(var i in json.admin_maincarousel){
						tablevalue += "<td><img id='low_image4' src='"+json.admin_maincarousel[i].osm_datavalue +"'><br><br>"+json.admin_maincarousel[i].osm_datatitle+"<br><input type='radio'></td><td style='width: 5px; border: none;'></td>";			
					}
					tablevalue += "</tr>";
					
					$("#ukjae_TableAreaFiveth").append(tablevalue);	
				},
				error:function(a,b,c){
					alert(a + ", " + b + ", " + c);
				}	
			});
			
			$.ajax({
				url : "alllist2.go",
				type : "post",
				datatype : "json",
				success : function(data){
					//console.log(data);
					var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환			
					var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	

				},
				error:function(a,b,c){
					alert(a + ", " + b + ", " + c);
				}	
			});	 */		
			
			
		});	
	
	
	</script>
</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
			
	<div class="container" align="center">
		
		<h2> Main 카로셀이미지 변경 </h2>
		
		<table id="ukjae_TableAreaFiveth">	

		</table>
		<Br>	
		<hr style="clear: both;">
	
		<h2> Main 독신자 유투브영상 변경 </h2>
	
		<table id="ukjae_TableAreaSixth">
			<tr>
				<td align="center"><iframe width="800" height="400" src="https://www.youtube.com/embed/QI7cYnBlkFQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></td>
				<td style="width: 200px;" align="center"> <font size="5">독신들을 위한 레시피</font><br><br><input type="radio"></td>
			</tr>
		</table>
		<br>
		<button onclick="AlterCheck();">변경완료</button>
		<script type="text/javascript">
			function AlterCheck(){
				alter("게시글 변경을 시도하셨습니다.");
				
			}
		</script>
		<br><br>
	
	</div>
		
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
