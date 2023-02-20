<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQuery & Ajax 메서드 $.POST()</title>
<style>
	#result{
		width : 200px;
		height : 200px;
		border : 5px double #668339;
	}
</style>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){ //버튼 클릭시 실행
			//process.jsp파일을 post방식으로 요청
			//$.post(path,data,function())
			$.post("process.jsp",{
				name : "kingdora",
				stus : "homebody"
				},
				function(data,status){
					if(status = "success")
						$("#result").html(data);
				});
		});
	});
</script>
</head>
<body>
<button id="b1">결과</button>
<div id="result"></div>
</body>
</html>

