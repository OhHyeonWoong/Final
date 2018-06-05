<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ukjaeTitle_effect {
	color: red;
	animation: texteffect 2s infinite;
}

@-webkit-keyframes texteffect {
	from {color: red; }
	to { color: blue;  }
}
@keyframes texteffect  {
	from {color: red; }
	to { color: blue;  }
}
</style>
</head>
<body>
	<div align="center" style="padding-top: 53px;"> 
		<img alt="ㅎㅎ" src="/goodluck/resources/common/img/main/이용자6.gif" style="width: 370px; height: 350px;">
		<h1 id="ukjaeTitle_effect"> 게시글 등록 성공! </h1><br><br>
		<button onclick="closewindow();">CLOSE</button>
	</div>
	<script type="text/javascript">
		function closewindow(){
			window.close();
		}
	</script>
</body>
</html>