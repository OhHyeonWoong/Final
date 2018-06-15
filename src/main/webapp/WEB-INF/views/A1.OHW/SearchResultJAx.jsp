<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax BackUp</title>

<script type="text/javascript">
/* SearchResultAjax */
$(function(){
	var searchKeyword = $(".ohw-hidden-get").val();
	$.ajax({
	   	url:"headerSearchAjax.go",
	   	type:"POST",
	   	data:{searchKeyword : searchKeyword}, 
	   	dataType:"json",
	   	success:
	   		function(data) {
	   			var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				var searchList = "";											
				
				for(var i in json.searchList){				
					searchList += 
								'<tr>' + 
									'<td>' + json.searchList[i].agency_no + '</td>' + 
									'<td>' + '<img src = "">' + '</td>' + 
									'<td class = "">' + 
										'<a onClick = "" >' + json.searchList[i].agency_title + '</a>' + 
									'</td>' + 
									'<td>' + '<img src = "">' + json.searchList[i].agency_writer + '</td>' + 
									'<td>' + json.searchList[i].agency_enrolldate + '</td>' + 
								'</tr>'
				}
				
				$('.ohw-search-table').append(searchList);							
			}, 
		error : function(request, status, errorData) {
					console.log("Error Code : " + request.status + "\n"
					+ "Message : " + request.responseText + "\n"
					+ "Error : " + errorData);
		}
	});
});
/* SearchResultAjax End */
</script>

</head>
<body>



</body>
</html>