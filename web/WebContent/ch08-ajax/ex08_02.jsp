<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<title></title>
</head>
<body>
	<button id="pro">로드</button>
	<div id="display"></div>
</body>
<script>
	$(document).ready(function(){
		$("#pro").click(function(){
			$("#display").load("ex08_01.jsp");
		});
	});
</script>
</html>

