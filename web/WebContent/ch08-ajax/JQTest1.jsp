<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery Test Page</title>
<style type="text/css">
	div#displayArea{
		width:200px;
		height:200px;
		border : 5px double #6699FF;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("button").click(function()
			$("#displayArea").html("<img src='../images/ansi_main2s.png' border='0'/>");
		});
	});
</script>
</head>
<body>
	<div id="displayArea">이곳의 내용이 변경</div>
	<button>표시</button>
</body>
</html>

