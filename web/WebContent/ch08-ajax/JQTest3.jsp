<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery 이벤트 처리</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("p").mouseenter(function(){
			$(this).text("마우스 포인터!");
		});
		
		$("p").mouseleave(function(){
			$(this).text("마우스 리브");
		});
		
		$("button").dblclick(function(){
			$(this).css({"background-color":"#00ff00","border":"none"});
		});
	});
</script>
</head>
<body>
<p>마우스 포인터</p>
<button>더블클릭</button>
</body>
</html>

