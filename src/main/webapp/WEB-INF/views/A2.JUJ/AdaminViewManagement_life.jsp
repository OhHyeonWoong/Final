<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>AdminViewManagementPage_life</title>
	<style type="text/css">
		#ukjae_TableAreaFiveth, ##ukjae_TableAreaSixth{ 
		border: none;
		}
		
		#ukjae_TableAreaFiveth tr td,#ukjae_TableAreaSixth tr td{
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
	</style>	
</head>
	<body>
	<%@ include file = "/WEB-INF/views/A8.Common/Header.jsp" %>
	<div class="container" align="center">
		<br>		
		<h2> Life(생활) 카로셀이미지 변경 </h2><br>
		
		<form action="ukjaemainviewcontrol_life.go" method="post">
		<input type="hidden" name="main1" value="${maincarousel.osm_datatitle}">	 
		<input type="hidden" name="main2" value="${mainYoutube.osm_datatitle}">	

		<table id="ukjae_TableAreaFiveth">	

		</table>
		
		<script type="text/javascript">
		$(function(){
			 $.ajax({
					url : "alllist_life.go",
					type : "post",
					datatype : "json",
					success : function(data){
						var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
						console.log(jsonStr); 
						var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
						var tablevalue = "<tr align='center'><td style='width: 5px; border: none;'></td>";
						
						for(var i in json.ukjae_lifeimagelist1){
							tablevalue += "<td><img id='low_image4' src='"+json.ukjae_lifeimagelist1[i].osli_datavalue +"'><br><br>생활영역 카로셀이미지"+i+"<br><input type='radio' name='radio_carousel' value='"+json.ukjae_lifeimagelist1[i].osli_data+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue += "</tr>";
		
						$("#ukjae_TableAreaFiveth").append(tablevalue);	
						
						var tablevalue2 = "<tr><td  colspan='9' style='border:none; height:24px !important;'></td></tr><tr align='center'><td style='width: 5px; border: none;'></td>";
						for(var i in json.ukjae_lifeimagelist2){
							tablevalue2 += "<td><img id='low_image4' src='"+json.ukjae_lifeimagelist2[i].osli_datavalue +"'><br><br>생활영역 카로셀이미지"+i+"<br><input type='radio' name='radio_carousel' value='"+json.ukjae_lifeimagelist2[i].osli_data+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue2 += "</tr>";						
						$("#ukjae_TableAreaFiveth").append(tablevalue2);	
					},
					error:function(a,b,c){
						/* alert(a + ", " + b + ", " + c); */
					}	
				});
			});
		</script>
		<Br>	

		<hr style="clear: both;"><Br>
	
		<h2> Life(생활) 대표이미지 변경 </h2><br>
	
		
		<table id="ukjae_TableAreaSixth">
		
		</table>
		<script type="text/javascript">
		$(function(){
			 $.ajax({
					url : "alllist_life2.go",
					type : "post",
					datatype : "json",
					success : function(data){
						var jsonStr = JSON.stringify(data);  //객체를 문자열로 변환
						console.log(jsonStr); 
						var json = JSON.parse(jsonStr); //문자열을 배열 객체로 바꿈	
						var tablevalue = "<tr align='center'><td style='width: 5px; border: none;'></td>";
						
						for(var i in json.ukjae_lifeimagelist3){
							tablevalue += "<td><img id='low_image4' src='"+json.ukjae_lifeimagelist3[i].osli_datavalue +"'><br><br>생활영역 카로셀이미지"+i+"<br><input type='radio' name='radio_representimage' value='"+json.ukjae_lifeimagelist3[i].osli_data+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue += "</tr>";
		
						$("#ukjae_TableAreaSixth").append(tablevalue);	
						
						var tablevalue2 = "<tr><td  colspan='9' style='border:none; height:24px !important;'></td></tr><tr align='center'><td style='width: 5px; border: none;'></td>";
						for(var i in json.ukjae_lifeimagelist4){
							tablevalue2 += "<td><img id='low_image4' src='"+json.ukjae_lifeimagelist4[i].osli_datavalue +"'><br><br>생활영역 대표이미지"+i+"<br><input type='radio' name='radio_representimage' value='"+json.ukjae_lifeimagelist4[i].osli_data+"'></td><td style='width: 20px; border: none;'></td>";			
						}
						tablevalue2 += "</tr>";						
						$("#ukjae_TableAreaSixth").append(tablevalue2);	
					},
					error:function(a,b,c){
						/* alert(a + ", " + b + ", " + c); */
					}	
				});
			});
		</script>	
		
		<br>
		<input type="submit" value="변경하기" onclick="AlterCheck();">
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
