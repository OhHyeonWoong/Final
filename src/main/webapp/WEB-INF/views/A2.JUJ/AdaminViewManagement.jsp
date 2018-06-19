<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>AdminViewManagementPage_Main</title>
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
			width: 900px;
			height: 396px;
			padding: 0;
			margin: 0;
			border : 1px dotted gray;
		}	
	</style>	
</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<div class="container" align="center" style="background: rgba(255,255,255,0.25)">
		<br>		
		<h2> Main 카로셀이미지 변경 </h2><br>
		
		<form action="ukjaemainviewcontrol.go" method="post">
		<input type="hidden" name="life1" value="${current_life_carousel.osli_data}">	 
		<input type="hidden" name="life2" value="${current_life_image.osli_data}">	
		
			
		<table id="ukjae_TableAreaFiveth">	

		</table>
		
		<script type="text/javascript">
		$(function(){
				 $.ajax({
					url : "alllist.go",
					type : "post",
					datatype : "json",
					success : function(data){
						var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
						console.log(jsonStr); 
						var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
						var tablevalue = "<tr align='center'><td style='width: 5px; border: none;'></td>";
						
						for(var i in json.kakaro){
							tablevalue += "<td><img id='low_image4' src='"+json.kakaro[i].osm_datavalue +"'><br><br>"+json.kakaro[i].osm_datatitle+"<br><input type='radio' name='radio_carousel' value='"+json.kakaro[i].osm_datatitle+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue += "</tr>";
						
						$("#ukjae_TableAreaFiveth").append(tablevalue);	
						
						var tablevalue2 = "<tr><td  colspan='9' style='border:none; height:24px !important;'></td></tr><tr align='center'><td style='width: 5px; border: none;'></td>";
						for(var i in json.kakaro2){
							tablevalue2 += "<td><img id='low_image4' src='"+json.kakaro2[i].osm_datavalue +"'><br><br>"+json.kakaro2[i].osm_datatitle+"<br><input type='radio' name='radio_carousel' value='"+json.kakaro2[i].osm_datatitle+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue2 += "</tr>";						
						$("#ukjae_TableAreaFiveth").append(tablevalue2);	
					},
					error:function(a,b,c){
						alert(a + ", " + b + ", " + c);
					}	
				});
			});
		</script>
		<Br>	

		<hr style="clear: both;"><Br>
	
		<h2> Main 독신자 유투브영상 변경 </h2><br>
	
		
		<table id="ukjae_TableAreaSixth">
		</table>
		
		<script type="text/javascript">
		$(function(){
			 $.ajax({
					url : "alllist2.go",
					type : "post",
					datatype : "json",
					success : function(data){
						var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
						console.log(jsonStr); 
						var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
						var tablevalue = "<tr>";
						
						for(var i in json.koko){
							tablevalue += "<td align='center'><iframe width=400' height='300' src='"+json.koko[i].osm_datavalue+"' frameborder='0' allow='autoplay; encrypted-media' allowfullscreen></iframe><br><br>"+json.koko[i].osm_datatitle+"&nbsp;&nbsp;<input type='radio' name='radio_youtube' value='"+json.koko[i].osm_datatitle+"'></td>";	
						}
						tablevalue += "</tr>";
						$("#ukjae_TableAreaSixth").append(tablevalue);	
						
						var tablevalue2 = "<tr>";
						for(var i in json.koko2){
							tablevalue2 += "<td align='center'><iframe width=400' height='300' src='"+json.koko2[i].osm_datavalue+"' frameborder='0' allow='autoplay; encrypted-media' allowfullscreen></iframe><br><br>"+json.koko2[i].osm_datatitle+"&nbsp;&nbsp;<input type='radio' name='radio_youtube' value='"+json.koko2[i].osm_datatitle+"'></td>";			
						}
						tablevalue2 += "</tr>";
						$("#ukjae_TableAreaSixth").append(tablevalue2);	
					
					},
					error:function(a,b,c){
						alert(a + ", " + b + ", " + c);
					}	
				});
			});
		</script>
		<br>
		<input type="submit" value="변경하기" onclick="AlterCheck();">
		<!-- <input type="submit" value="변경시도"> -->
		</form>
		<br>
		<div align="right"><a href="home.go">메인으로</a></div>		
		<script type="text/javascript">
			function AlterCheck(){
				alert("내용이 변경되었습니다.");
			}
		</script>
		<br><br>
	
	</div>
		
	<%@ include file = "/WEB-INF/views/A8.Common/Footer.jsp" %>
	</body>
</html>
