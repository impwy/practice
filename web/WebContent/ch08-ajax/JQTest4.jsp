<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			$("#result").load("xhrTest1.jsp");
		});
	});
</script>
</head>
<body>
<button id="b1">결과</button>
<div id="result"></div>
</body>
</html>

