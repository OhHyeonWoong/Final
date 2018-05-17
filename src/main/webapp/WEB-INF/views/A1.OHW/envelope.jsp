<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Envelope</title>
</head>
<body>
<div class = "ohw-envelope-div" align = "center">
	<div class="modal fade" id="envelopeModal" role="dialog">
		<div class="modal-dialog">    
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					보내는 이 : <input type = "text">
				</div>
				<div class="modal-body">
					받는 이 : <input type = "text">
				</div>
				<div class="modal-footer">
					내용 : <textarea rows="5" cols="40"></textarea> <br>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>      
		</div>
	</div>	
</div>
</body>
</html>